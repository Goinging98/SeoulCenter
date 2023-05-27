package com.multi.mvc.board.controller;

import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.multi.mvc.board.model.service.BoardService;
import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.board.model.vo.Reply;
import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
// @RequestMapping("/board") // 상위 borad로 시작하는 url을 생략해서 사용할 수 있음.
public class BoardController {

	@Autowired
	private BoardService service;

	@Autowired
	private ResourceLoader resourceLoader; // 파일 다운로드 기능시 활용하는 loader
	
	
//	http://localhost/mvc/board/list?page=1&searchType=title&searchValue=%EC%95%84%EC%9D%B4%ED%8F%B0
//	 param : {page=1, searchType=title, searchValue=아이폰}
	// /board/list
//	@GetMapping("list") // /board/list
	@GetMapping("/board/list")
	public String list(Model model, @RequestParam Map<String, Object> param) {
		log.info("board list 요청, param : " + param);
		
		int page = 1;
		try {
			if(param.get("searchType") != null) {
				param.put((String) param.get("searchType"), param.get("searchValue"));
				// title - 아이폰
				// content - 삽니다
			}
			
			// page 파라메터를 숫자로 바꿔주는 코드, 항상 try 끝에 존재해야한다.
			page = Integer.parseInt((String) param.get("page"));
		} catch (Exception e) {}
		
		int boardCount = service.getBoardCount(param);
//		PageInfo pageInfo = new PageInfo(page, 10, boardCount, 15); // 게시글이 보여지는 갯수 = 15
		PageInfo pageInfo = new PageInfo(page, 10, boardCount, 10); // 게시글이 보여지는 갯수 = 10
		List<Board> list = service.getBoardList(pageInfo, param);
//		System.out.println("list : " + list);
		
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		
		return "/board/list";
	}
	
	@RequestMapping("/board/view")
	public String view(Model model, @RequestParam("no") int no) {
		Board board = service.findByNo(no);
		if(board == null) {
			return "redirect:error";
		}
		model.addAttribute("board", board);
		model.addAttribute("replyList", board.getReplies());
		return "board/view";
	}
	
	
	@GetMapping("/error")
	public String error() {
		return "/common/error";
	}
	
	@GetMapping("/board/write")
	public String writeView() {
		return "/board/write";
	}
	
	// 게시글 처리 + 파일 업로드
	@PostMapping("/board/write")
	public String write(Model model, HttpSession session,
			@SessionAttribute(name="loginMember", required = false) Member loginMember,
			@ModelAttribute Board board,
			@RequestParam("upfile") MultipartFile upfile
			) {
		log.info("board write 요청, board : " + board);
		
		// 보안코드 예시
		if(loginMember.getId().equals(board.getWriterId()) == false) {
			model.addAttribute("msg","잘못된 접근입니다.");
			model.addAttribute("location","/");
			return "common/msg";
		}
		
		board.setMno(loginMember.getMno());
		
		// 파일 저장 로직
		if(upfile != null && upfile.isEmpty() == false) {
			String rootPath = session.getServletContext().getRealPath("resources");
			String savePath = rootPath + "/upload/board";
			String renamedFileName = service.saveFile(upfile, savePath); // 실제 파일 저장로직
			
			if(renamedFileName != null) {
				board.setRenamedFileName(renamedFileName);
				board.setOriginalFileName(upfile.getOriginalFilename());
			}
		}
		log.debug(" board : " + board);
		int result = service.saveBoard(board);
		
		if(result > 0) {
			model.addAttribute("msg", "게시글이 등록 되었습니다.");
			model.addAttribute("location", "/board/list");
		}else {
			model.addAttribute("msg", "게시글 작성에 실패하였습니다.");
			model.addAttribute("location", "/board/list");
		}
		return "common/msg";
	}
	
	
	@GetMapping("/board/update")
	public String updateView(Model model,
			@SessionAttribute(name="loginMember", required = false) Member loginMember,
			@RequestParam("no") int no
			) {
		Board board = service.findByNo(no);
		model.addAttribute("board",board);
		return "/board/update";
	}
	
	@PostMapping("/board/update")
	public String update(Model model, HttpSession session,
			@SessionAttribute(name="loginMember", required = false) Member loginMember,
			@ModelAttribute Board board,
			@RequestParam("upfile") MultipartFile upfile
			) {
		log.info("게시글 수정 요청");
		
		// 보안상의 코드라 프로젝트때는 없어도 된다. 잘못된 접근 체킹하는 예시
		if(loginMember.getId().equals(board.getWriterId()) == false) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "common/msg";
		}
		
		board.setMno(loginMember.getMno());
		
		// 파일 저장 로직
		if(upfile != null && upfile.isEmpty() == false) {
			String rootPath = session.getServletContext().getRealPath("resources");
			String savePath = rootPath + "/upload/board";
			String renamedFileName = service.saveFile(upfile, savePath); // 실제 파일 저장로직
			
			// 기존파일이 있었다면 삭제
			if(board.getRenamedFileName() != null) {
				service.deleteFile(savePath + "/" + board.getRenamedFileName());
			}
			
			if(renamedFileName != null) {
				board.setRenamedFileName(renamedFileName);
				board.setOriginalFileName(upfile.getOriginalFilename());
			}
		}
		log.debug(" board : " + board);
		int result = service.saveBoard(board);
		
		if(result > 0) {
			model.addAttribute("msg", "게시글이 수정이 완료 되었습니다.");
			model.addAttribute("location", "/board/list");
		}else {
			model.addAttribute("msg", "게시글 수정에 실패하였습니다.");
			model.addAttribute("location", "/board/list");
		}
		return "common/msg";
	}
	
	// http://localhost/mvc/board/delete?no=51
	@RequestMapping("/board/delete")
	public String deleteBoard(Model model,  HttpSession session,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			int no
			) {
		log.info("게시글 삭제 요청 no : " + no);
		
		String rootPath = session.getServletContext().getRealPath("resources");
		String savePath = rootPath +"/upload/board";
		int result = service.deleteBoard(no, savePath);
		
		if(result > 0) {
			model.addAttribute("msg", "게시글 삭제가 정상적으로 완료되었습니다.");
		}else {
			model.addAttribute("msg", "게시글 삭제에 실패하였습니다.");
		}
		model.addAttribute("location", "/board/list");
		return "/common/msg";
	}
	
	
	@RequestMapping("/board/reply")
	public String writeReply(Model model,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute Reply reply
			) {
		log.info("리플 작성, reply : "+ reply);
		reply.setMno(loginMember.getMno());
		int result = service.saveReply(reply);
		
		if(result > 0) {
			model.addAttribute("msg","리플이 등록되었습니다.");
		} else {
			model.addAttribute("msg","리플 등록에 실패하였습니다.");
		}
		model.addAttribute("location", "/board/view?no="+reply.getBno());
		return "/common/msg";
	}
	
	@RequestMapping("board/replyDel")
	public String deleteReply(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			int rno, int bno
			){
		log.info("리플 삭제 요청");
		int result = service.deleteReply(rno);
		
		if(result > 0) {
			model.addAttribute("msg", "리플 삭제가 정상적으로 완료되었습니다.");
		}else {
			model.addAttribute("msg", "리플 삭제에 실패하였습니다.");
		}
		model.addAttribute("location", "/board/view?no=" + bno);
		return "/common/msg";
	}
	
	
	// 파일 저장코드
	@RequestMapping("/board/fileDown")
	public ResponseEntity<Resource> fileDown(
			@RequestParam("originName") String originName,
			@RequestParam("reName") String reName,
			@RequestHeader(name= "user-agent") String userAgent){
		try {
			Resource resource = resourceLoader.getResource("resources/upload/board/" + reName);
			String downName = null;
			
			// 인터넷 익스플로러 인 경우
			boolean isMSIE = userAgent.indexOf("MSIE") != -1 || userAgent.indexOf("Trident") != -1;

			if (isMSIE) { // 익스플로러 처리하는 방법
				downName = URLEncoder.encode(originName, "UTF-8").replaceAll("\\+", "%20");
			} else {    		
				downName = new String(originName.getBytes("UTF-8"), "ISO-8859-1"); // 크롬
			}
			
			return ResponseEntity.ok()
					.header(HttpHeaders.CONTENT_DISPOSITION, "attachment;filename=\"" + downName + "\"")
					.header(HttpHeaders.CONTENT_LENGTH, String.valueOf(resource.contentLength()))
					.header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_OCTET_STREAM.toString())
					.body(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build(); // 실패했을 경우
	}
	
}








