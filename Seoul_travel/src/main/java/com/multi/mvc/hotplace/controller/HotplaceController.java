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
import com.multi.mvc.tour.model.vo.CultureContent;
import com.multi.mvc.tour.model.vo.Festival;
import com.multi.mvc.tour.model.vo.TourList;

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
		
		List<Festival> fList = festivalService.selectFestivalList(param);
		List<CultureContent> cList = cultureContentService.selectCultureContentRandomList(param);
		List<TourList> tList = tourListService.selectTourListRandomList(param);
		
		// 이미지 없는 것 후처리 
		for(Festival f : fList) {
			if(f.firstimage == null) {
				f.firstimage = "http://tong.visitkorea.or.kr/cms/resource/67/2821767_image2_1.jpg";
			}
			System.out.println(f);
		}
		
		for(CultureContent c : cList) {
			if(c.firstimage == null) {
				c.firstimage = "http://tong.visitkorea.or.kr/cms/resource/83/2402783_image2_1.jpg";
			}
			System.out.println(c);
		}
		
		for(TourList t : tList) {
			if(t.firstimage == null) {
				t.firstimage = "http://tong.visitkorea.or.kr/cms/resource/83/2402783_image2_1.jpg";
			}
			System.out.println(t);
		}
		
		model.addAttribute("fList",fList);
		model.addAttribute("cList",cList);
		model.addAttribute("tList",tList);
		System.out.println(fList);
		
		return "2_hotplace";
	}
	

}
