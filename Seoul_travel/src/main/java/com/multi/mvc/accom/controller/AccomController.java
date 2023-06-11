package com.multi.mvc.accom.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.member.model.vo.Member;
import com.multi.mvc.tour.model.service.AccomoService;
import com.multi.mvc.tour.model.vo.Accommodation;
import com.multi.mvc.tour.model.vo.Replies;
import com.multi.mvc.tour.model.vo.TourImageVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class AccomController {
	@Autowired
	private AccomoService accomoService;
	
	@RequestMapping("/accomMain")
	public String accomMain(Model model, @RequestParam Map<String,Object> param) {
		int page = 1;
		try {
			// page 파라메터를 숫자로 바꿔주는 코드, 항상 try 끝에 존재해야한다.
			page = Integer.parseInt((String) param.get("page"));
		} catch (Exception e) {}
		
		int count = accomoService.selectAccomoCount(param);
		int hotelcount = accomoService.selecthotelCount(param);
		int youthcount = accomoService.selectyouthCount(param);
		int hanokcount = accomoService.selecthanokCount(param);
		int businesscount = accomoService.selectbuisnessCount(param);
		int foreigncount = accomoService.selectforeignCount(param);
		int elsecount = accomoService.selectelseCount(param);
		PageInfo pageInfo = new PageInfo(page, 5, count, 12); // 게시글이 보여지는 갯수 = 10
		List<Accommodation> list = accomoService.selectAccomoList(pageInfo, param);

		int maxPage = count/12;
		
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		model.addAttribute("maxPage", maxPage);
		
		model.addAttribute("page",page);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("hotelcount", hotelcount);
		model.addAttribute("youthcount", youthcount);
		model.addAttribute("hanokcount", hanokcount);
		model.addAttribute("businesscount", businesscount);
		model.addAttribute("foreigncount", foreigncount);
		model.addAttribute("elsecount", elsecount);
		model.addAttribute("accommodationList", list);
		model.addAttribute("searchValue", param.get("searchValue"));
		
		
		return "4_accommodation";
	}
	
	
	@RequestMapping("/accomDetail")
	public String accomMain(Model model,int id) {
		Accommodation accom = accomoService.selectByContentId(id);
		if (accom == null) {
			// 에러처리
		}
		model.addAttribute("item", accom);

		// selectRandomAccom을 호출하여 무작위 숙박 시설 목록을 가져옴
		List<Accommodation> randomAccommodations = accomoService.selectRandomAccom(6);

		for (Accommodation a : randomAccommodations) {
			if (a.firstimage == null) {
				a.firstimage = "http://tong.visitkorea.or.kr/cms/resource/35/1359335_image2_1.jpg";
			}
		}
		model.addAttribute("randomAccommodations", randomAccommodations);
		
		// 구 주소 추출
		String fullAddress = accom.getAddr1(); // 주소 전체를 가져옴
		String[] addressParts = fullAddress.split(" "); // 주소를 공백을 기준으로 분할
		String guAddress = ""; // 구 주소를 저장할 변수

		// 주소 부분 중에서 구 주소를 찾음
		for (String part : addressParts) {
			if (part.contains("구")) {
				guAddress = part;
				break;
			}
		}
		model.addAttribute("guAddress", guAddress); // 구 주소를 모델에 추가

		return "4.2_accommoInfo";
		
	}
	
	
	@RequestMapping("/accomGall")
	public String accomGallery(Model model, int id) {
		Accommodation accom = accomoService.selectByContentId(id);
		List<TourImageVO> imgAccomo = accomoService.selectAccomoImgList(id);
		if (accom == null) {
			// 에러처리
		}
		model.addAttribute("item", accom);
		model.addAttribute("imgAccomo", imgAccomo);

		// selectRandomAccom을 호출하여 무작위 숙박 시설 목록을 가져옴
		List<Accommodation> randomAccommodations = accomoService.selectRandomAccom(6);

		for (Accommodation a : randomAccommodations) {
			if (a.firstimage == null) {
				a.firstimage = "http://tong.visitkorea.or.kr/cms/resource/35/1359335_image2_1.jpg";
			}
		}
		model.addAttribute("randomAccommodations", randomAccommodations);
		
		// 구 주소 추출
		String fullAddress = accom.getAddr1(); // 주소 전체를 가져옴
		String[] addressParts = fullAddress.split(" "); // 주소를 공백을 기준으로 분할
		String guAddress = ""; // 구 주소를 저장할 변수

		// 주소 부분 중에서 구 주소를 찾음
		for (String part : addressParts) {
			if (part.contains("구")) {
				guAddress = part;
				break;
			}
		}
		model.addAttribute("guAddress", guAddress); // 구 주소를 모델에 추가

		return "4.2_accommoGallery";
	}


	
	@RequestMapping("/accomRev")
	public String accomReiview(Model model, int id) {
		Accommodation accom = accomoService.selectByContentId(id);
		if (accom == null) {
			// 에러처리
		}
		model.addAttribute("item", accom);

		// selectRandomAccom을 호출하여 무작위 숙박 시설 목록을 가져옴
		List<Accommodation> randomAccommodations = accomoService.selectRandomAccom(6);
		for (Accommodation a : randomAccommodations) {
			if (a.firstimage == null) {
				a.firstimage = "http://tong.visitkorea.or.kr/cms/resource/35/1359335_image2_1.jpg";
			}
		}
		model.addAttribute("randomAccommodations", randomAccommodations);
		
		// 구 주소 추출
		String fullAddress = accom.getAddr1(); // 주소 전체를 가져옴
		String[] addressParts = fullAddress.split(" "); // 주소를 공백을 기준으로 분할
		String guAddress = ""; // 구 주소를 저장할 변수
		// 주소 부분 중에서 구 주소를 찾음
		for (String part : addressParts) {
			if (part.contains("구")) {
				guAddress = part;
				break;
			}
		}
		model.addAttribute("guAddress", guAddress); // 구 주소를 모델에 추가
		
		// 숙소 리뷰 출력 
		List<Replies> replyList = accomoService.selectAccomoReply(id);
		model.addAttribute("replyList", replyList);
		
		return "4.2_accommoReview";	
	}


	@RequestMapping("/AccomoReplyWrite")
	public String writeAccomoReply(Model model,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute Replies reply
			) {
		log.info("리플 작성, reply : "+ reply);
		reply.setMno(loginMember.getMno());
		int result = accomoService.insertAccomoReply(reply);
		
		if(result > 0) {
			model.addAttribute("msg","리플이 등록되었습니다.");
		} else {
			model.addAttribute("msg","리플 등록에 실패하였습니다.");
		}
		model.addAttribute("location", "/accomRev?id="+reply.getContentid());
		return "/common/msg";
	}
	
	@RequestMapping("/AccomoReplyDel")
	public String deleteAccomoReply(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			int rno, int contentid
			){
		log.info("리플 삭제 요청");
		int result = accomoService.deleteAccomoReply(rno);
		
		if(result > 0) {
			model.addAttribute("msg", "리플 삭제가 정상적으로 완료되었습니다.");
		}else {
			model.addAttribute("msg", "리플 삭제에 실패하였습니다.");
		}
		model.addAttribute("location", "/accomRev?id=" + contentid);
		return "/common/msg";
	}
	
	
	
	

}