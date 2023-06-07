package com.multi.mvc;

import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.mvc.accom.controller.AccomController;
import com.multi.mvc.tour.model.service.AccomoService;
import com.multi.mvc.tour.model.service.CultureContentService;
import com.multi.mvc.tour.model.service.FestivalService;
import com.multi.mvc.tour.model.service.FoodService;
import com.multi.mvc.tour.model.service.TourListService;
import com.multi.mvc.tour.model.vo.Accommodation;
import com.multi.mvc.tour.model.vo.CultureContent;
import com.multi.mvc.tour.model.vo.TourList;

import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Controller
@Slf4j // log를 자동으로 생성시켜주는 어노테인션 = static 문장 생략 가능
public class HomeController {
	
	@Autowired
	private AccomoService accomoService;
	@Autowired
	private CultureContentService cultureContentService;
	@Autowired
	private TourListService tourListService;
	@Autowired
	private FestivalService festivalService;
	@Autowired
	private FoodService foodService;
	
	
	@RequestMapping(value = {"/main", "/"}, method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
//		log.info("@@@@@@@@@@@ selectAll : " + memberService.findAll());
		
		// selectRandomAccom을 호출하여 무작위 숙박 시설 목록을 가져옴
			List<Accommodation> randomAccommodations = accomoService.selectRandomAccom(12);
			List<TourList> tList = tourListService.selectTourListRandomList(null);
			for (Accommodation a : randomAccommodations) {
				if (a.firstimage == null) {
					a.firstimage = "http://tong.visitkorea.or.kr/cms/resource/35/1359335_image2_1.jpg";
				}	
			}
			for(TourList t : tList) {
				if(t.firstimage == null) {
					t.firstimage = "http://tong.visitkorea.or.kr/cms/resource/83/2402783_image2_1.jpg";
				}
			}
			model.addAttribute("randomAccommodations", randomAccommodations);
			model.addAttribute("tList",tList);
		
		return "1_main_page";
	}


	@RequestMapping(value = "/mypageinfo", method = RequestMethod.GET)
	public String mypage(Locale locale, Model model) {
		return "0_myPage-info";
	}



	@RequestMapping(value = "/qna", method = RequestMethod.GET)
	public String qna(Locale locale, Model model) {
		return "5.1_QA";
	}
}
