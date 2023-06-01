package com.multi.mvc.food.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.tour.model.service.FoodService;
import com.multi.mvc.tour.model.vo.Food;

@Controller
public class FoodController {
	@Autowired
	private FoodService foodService;
	
	@RequestMapping("/foodMain")
	public String foodMain(Model model, @RequestParam Map<String, Object> param) {
	
		int page = 1;
		try {
			// page 파라메터를 숫자로 바꿔주는 코드, 항상 try 끝에 존재해야한다.
			page = Integer.parseInt((String) param.get("page"));
		} catch (Exception e) {}
		
		int count = foodService.selectFoodCount(param);
		PageInfo pageInfo = new PageInfo(page, 5, count, 12);
		System.out.println(pageInfo);
		List<Food> list = foodService.selectFoodList(pageInfo, param);
		
		//이미지 없는 것 후처리
		for (Food a : list) {
			if (a.firstimage == null) {
				a.firstimage = "http://tong.visitkorea.or.kr/cms/resource/35/1359335_image2_1.jpg";
			}
		}
		model.addAttribute("list",list);
		model.addAttribute("pageInfo", pageInfo);
		
		return "3_food";
	}
	
	@RequestMapping("/foodDetail")
	public String foodMain(Model model, int id) {
		Food food = foodService.selectByContentId(id);
		if(food == null) {
			// 에러처리
		}
		model.addAttribute("item", food);
		return "3.2_foodDetailed";	
	}
}
