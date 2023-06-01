package com.multi.mvc;

import java.util.HashMap;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.multi.mvc.tour.model.service.AccomoService;
import com.multi.mvc.tour.model.service.CultureContentService;
import com.multi.mvc.tour.model.service.FestivalService;
import com.multi.mvc.tour.model.service.FoodService;
import com.multi.mvc.tour.model.service.TourListService;

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
	
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
//		log.info("@@@@@@@@@@@ selectAll : " + memberService.findAll());
		/*
		model.addAttribute("aList", accomoService.selectAccomoList(new HashMap<String,Object>()));
		model.addAttribute("tList", tourListService.selectTourListList(new HashMap<String,Object>()));
		model.addAttribute("cList", cultureContentService.selectCultureContentList(new HashMap<String,Object>()));
		model.addAttribute("fList", festivalService.selectFestivalList(new HashMap<String,Object>()));
		model.addAttribute("foList", foodService.selectFoodList(new HashMap<String,Object>()));
		*/
		return "1_main_page";
	}


	@RequestMapping(value = "/mypageinfo", method = RequestMethod.GET)
	public String mypage(Locale locale, Model model) {
		return "0_myPage-info";
	}
	

	@RequestMapping(value = "/community", method = RequestMethod.GET)
	public String community(Locale locale, Model model) {
		return "5.3_QA";
	}
}
