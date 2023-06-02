package com.multi.mvc.accom.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.tour.model.service.AccomoService;
import com.multi.mvc.tour.model.vo.Accommodation;

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
		PageInfo pageInfo = new PageInfo(page, 5, count, 12); // 게시글이 보여지는 갯수 = 10
		List<Accommodation> list = accomoService.selectAccomoList(pageInfo, param);

		// 이미지 없는 것 후처리 
		for(Accommodation a : list) {
			if(a.firstimage == null) {
				a.firstimage = "http://tong.visitkorea.or.kr/cms/resource/35/1359335_image2_1.jpg";
			}
		}
		model.addAttribute("list", list);
		model.addAttribute("pageInfo", pageInfo);
		
		return "4_accommodation";
	}
	
	
	@RequestMapping("/accomDetail")
	public String accomMain(Model model, int id) {
		Accommodation accom = accomoService.selectByContentId(id);
		if(accom == null) {
			// 에러처리
		}
		model.addAttribute("item", accom);
		return "4.2_accommoInfo";	
	}
	
	
	@RequestMapping("/accomGall")
	public String accomGallery() {
//		Accommodation accomGall = accomoService.selectByContentId(id);
//		if(accomGall == null) {
//			 에러처리
//		}
//		model.addAttribute("item2", accomGall);
		
		return "4.2_accommoGallery";	
	}
	
	
	@RequestMapping("/accomRev")
	public String accomReiview() {
//		Accommodation accomReiview = accomoService.selectByContentId(id);
//		if(accomReiview == null) {
//			 에러처리
//		}
//		model.addAttribute("item2", accomReiview);
		
		return "4.2_accommoReview";	
	}
	
	@RequestMapping("/accomCate")
	public String accomCate() {
//		Accommodation accomCate = accomoService.selectByContentId(id);
//		if(accomReiview == null) {
//			 에러처리
//		}
//		model.addAttribute("item2", accomCate);
		
		return "4.1_accommodationCategory";	
	}
	

}
