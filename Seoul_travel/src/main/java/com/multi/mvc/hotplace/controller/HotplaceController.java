package com.multi.mvc.hotplace.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.mvc.tour.model.service.CultureContentService;
import com.multi.mvc.tour.model.service.FestivalService;
import com.multi.mvc.tour.model.service.TourListService;
import com.multi.mvc.tour.model.vo.Accommodation;
import com.multi.mvc.tour.model.vo.Festival;

@Controller
public class HotplaceController {
	
	
	@Autowired
	private CultureContentService cultureContentService;
	@Autowired
	private TourListService tourListService;
	@Autowired
	private FestivalService festivalService;
	
	@RequestMapping("/hotMain")
	public String hotMain(Model model, @RequestParam Map<String,Object> param) {
		System.out.println(param);
		
		List<Festival> list = festivalService.selectFestivalList(param);
		
		// 이미지 없는 것 후처리 
		for(Festival f : list) {
			if(f.firstimage == null) {
				f.firstimage = "http://tong.visitkorea.or.kr/cms/resource/67/2821767_image2_1.jpg";
			}
			System.out.println(f);
		}
		
		model.addAttribute("fList",list);
		System.out.println(list);
		
		return "2_hotplace";
	}
	

}
