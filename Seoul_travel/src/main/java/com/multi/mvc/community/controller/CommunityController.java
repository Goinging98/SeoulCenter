package com.multi.mvc.community.controller;

import java.net.URLEncoder;
import java.util.List;
import java.util.Locale;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.tour.model.service.CommunityService;
import com.multi.mvc.tour.model.vo.Community;
import com.multi.mvc.tour.model.mapper.CommunityMapper;
import com.multi.mvc.tour.model.vo.Replies;
import com.multi.mvc.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CommunityController {
	
	@Autowired
	private CommunityService service;

	@Autowired
	private ResourceLoader resourceLoader; // 파일 다운로드 기능시 활용하는 loader
	
	
	@RequestMapping(value = "/community/qna", method = RequestMethod.GET)
	public String qna(Locale locale, Model model) {
		return "5.1_QA";
	}

	@GetMapping(value = "/community/notice")
	public String communityList(Model model, @RequestParam Map<String, Object> param) {
		log.info("notice list 요청, param: "+param);
		int page = 1;

		try {
			page = Integer.parseInt((String) param.get("page"));
		} catch (Exception e) {}
		
		int boardcount = service.getBoardCount(param);
		PageInfo pageInfo = new PageInfo(page, 10, boardcount, 10);
		List<Community> list = service.getBoardList(pageInfo, param);
		
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		
		return "5.1_notice";
	}
	
	// 숙박 
	@GetMapping(value = "/community/accomodation")
	public String comu_accomo(Model model, @RequestParam Map<String, Object> param) {
		log.info("accomodation list 요청, param: " + param);
		int page = 1;

		try {
			page = Integer.parseInt((String) param.get("page"));
		} catch (Exception e) {}
		
		int accomocount = service.getAccomodationCount(param);
		PageInfo pageInfo = new PageInfo(page, 10, accomocount, 10);
		List<Community> list = service.getAccomodationList(pageInfo, param);
		
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		
		return "5.1_communityAccomodation";
	}
	
	// 맛집 
	@GetMapping(value = "/community/food")
	public String comu_food(Model model, @RequestParam Map<String, Object> param) {
		log.info("Food list 요청, param: " + param);
		int page = 1;

		try {
			page = Integer.parseInt((String) param.get("page"));
		} catch (Exception e) {}
		
		int foodcount = service.getFoodCount(param);
		PageInfo pageInfo = new PageInfo(page, 10, foodcount, 10);
		List<Community> list = service.getFoodList(pageInfo, param);
		
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		
		return "5.1_communityFood";
	}
	
	// 핫플레이스 
	@GetMapping(value = "/community/hotplace")
	public String comu_hotplace(Model model, @RequestParam Map<String, Object> param) {
		log.info("Hotplace list 요청, param: " + param);
		int page = 1;

		try {
			page = Integer.parseInt((String) param.get("page"));
		} catch (Exception e) {}
		
		int Hotplacecount = service.getHotplaceCount(param);
		PageInfo pageInfo = new PageInfo(page, 10, Hotplacecount, 10);
		List<Community> list = service.getHotplaceList(pageInfo, param);
		
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		
		return "5.1_communityHotplace";
	}
	
	
	// 상세 글 확인
	@RequestMapping("/community/view")
	public String view(Model model, @RequestParam("no") int no) {
		Community board = service.findByNo(no);
		if(board == null) {
			return "redirect:error";
		}
		model.addAttribute("board", board);
		//model.addAttribute("replyList", board.getReplies());
		return "5.2_communityBlog";
	}
	
	
	// 글쓰기
	@GetMapping("/community/write")
	public String writeView() {
		return "5.3_communityWrite";
	}
	
	// 게시글 처리 + 파일 업로드
		@PostMapping("/community/write")
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
		
	
	
	
	
	
	
	
	
	
	
	
	
}
