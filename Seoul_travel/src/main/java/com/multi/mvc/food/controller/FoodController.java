package com.multi.mvc.food.controller;

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
import com.multi.mvc.tour.model.service.FoodService;
import com.multi.mvc.tour.model.vo.Food;
import com.multi.mvc.tour.model.vo.Replies;

import lombok.extern.slf4j.Slf4j;

@Slf4j
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
		PageInfo pageInfo = new PageInfo(page, 5, count, 10);
		System.out.println(pageInfo);
		List<Food> list = foodService.selectFoodList(pageInfo, param);
		
//		//이미지 없는 것 후처리
//		for (Food a : list) {
//			if (a.firstimage == null) {
//				a.firstimage = "${path}/resources/images/restaurant.jpg";
//			}
//		}
		int maxPage =count/5;
		model.addAttribute("list",list);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("page",page);
		
		return "3_food";
	}
	
	@RequestMapping("/foodDetail")
	public String foodMain(Model model
			, int id
			, @SessionAttribute(name = "loginMember", required = false) Member loginMember) {
		Food food = foodService.selectByContentId(id);
		if(food == null) {
			// 에러처리
		}
		model.addAttribute("item", food);
		return "3.2_foodDetailed";	
	}
	

	@RequestMapping("/foodReplyWrite")
	public String writeFoodReply(Model model,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute Replies reply
			) {
		log.info("리플 작성, reply : "+ reply);
		reply.setMno(loginMember.getMno());
		int result = foodService.insertFoodReply(reply);
		
		if(result > 0) {
			model.addAttribute("msg","리플이 등록되었습니다.");
		} else {
			model.addAttribute("msg","리플 등록에 실패하였습니다.");
		}
		model.addAttribute("location", "/board/view?no="+reply.getContentid());
		return "/common/msg";
	}
	
	@RequestMapping("/foodReplyDel")
	public String deleteFoodReply(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			int rno, int bno
			){
		log.info("리플 삭제 요청");
		int result = foodService.deleteFoodReply(rno);
		
		if(result > 0) {
			model.addAttribute("msg", "리플 삭제가 정상적으로 완료되었습니다.");
		}else {
			model.addAttribute("msg", "리플 삭제에 실패하였습니다.");
		}
		model.addAttribute("location", "/board/view?no=" + bno);
		return "/common/msg";
	}
}
