package com.multi.mvc.community.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.tour.model.service.CommunityService;
import com.multi.mvc.tour.model.vo.Community;



@Controller
public class CommunityController {
	
	@Autowired
	private CommunityService communityservice;
	
	
	@RequestMapping(value = "/community/qna", method = RequestMethod.GET)
	public String qna(Locale locale, Model model) {
		return "5.1_QA";
	}

	@RequestMapping(value = "/community/notice", method = RequestMethod.GET)
	public String notice(Locale locale, Model model) {
		return "5.1_notice";
	}
	
	@RequestMapping(value = "/community/accomodation", method = RequestMethod.GET)
	public String com_accomo(Locale locale, Model model) {
		return "5.1_communityAccomodation";
	}
	
	@RequestMapping(value = "/community/food", method = RequestMethod.GET)
	public String com_food(Locale locale, Model model) {
		return "5.1_communityFood";
	}
	
	@RequestMapping(value = "/community/hotplace", method = RequestMethod.GET)
	public String com_hotplace(Locale locale, Model model) {
		return "5.1_communityHotplace";
	}
}
