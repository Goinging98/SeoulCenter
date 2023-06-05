package com.multi.mvc.hotplace.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.mvc.common.util.PageInfo;
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
		
		List<Festival> fList = festivalService.selectFestivalRandomList(param);
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
	
	//핫플레이스 상세 페이지
	@RequestMapping("/hotCultureContent")
	public String hotCultureContent(Model model, @RequestParam Map<String,Object> param) {
		int page = 1;
		try {
			// page 파라메터를 숫자로 바꿔주는 코드, 항상 try 끝에 존재해야한다.
			page = Integer.parseInt((String) param.get("page"));
		} catch (Exception e) {}
		
		int cCount = cultureContentService.selectCultureContentCount(param);
		int fCount = festivalService.selectFestivalCount(param);
		int tCount = tourListService.selectTourListCount(param);
		PageInfo pageInfo = new PageInfo(page, 5, cCount, 12);
		List<CultureContent> cList2 = cultureContentService.selectCultureContentList(pageInfo, param);
		for(CultureContent c : cList2) {
			if(c.firstimage == null) {
				c.firstimage = "http://tong.visitkorea.or.kr/cms/resource/83/2402783_image2_1.jpg";
			}
		}
		int maxPage = cCount/5;
		
		model.addAttribute("cCount",cCount);
		model.addAttribute("fCount",fCount);
		model.addAttribute("tCount",tCount);
		model.addAttribute("cList",cList2);
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("page",page);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("cultureContentList", cList2);
		
		return "2.1_hotplaceCultureContent";
	}
	
	//핫플레이스 상세 페이지
	@RequestMapping("/hotFestival")
	public String hotFestival(Model model, @RequestParam Map<String,Object> param) {
		int page = 1;
		try {
			// page 파라메터를 숫자로 바꿔주는 코드, 항상 try 끝에 존재해야한다.
			page = Integer.parseInt((String) param.get("page"));
		} catch (Exception e) {}
		
		int cCount = cultureContentService.selectCultureContentCount(param);
		int fCount = festivalService.selectFestivalCount(param);
		int tCount = tourListService.selectTourListCount(param);
		PageInfo pageInfo = new PageInfo(page, 5, cCount, 12);
		List<Festival> fList2 = festivalService.selectFestivalList(pageInfo, param);
		for(Festival f : fList2) {
			if(f.firstimage == null) {
				f.firstimage = "http://tong.visitkorea.or.kr/cms/resource/83/2402783_image2_1.jpg";
			}
		}
		int maxPage = cCount/5;
		
		model.addAttribute("cCount",cCount);
		model.addAttribute("fCount",fCount);
		model.addAttribute("tCount",tCount);
		model.addAttribute("fList",fList2);
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("page",page);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("festivalList", fList2);
		
		return "2.1_hotplaceFestival";
	}
	
	//핫플레이스 상세 페이지
	@RequestMapping("/hotTourList")
	public String hotTourList(Model model, @RequestParam Map<String,Object> param) {
		int page = 1;
		try {
			// page 파라메터를 숫자로 바꿔주는 코드, 항상 try 끝에 존재해야한다.
			page = Integer.parseInt((String) param.get("page"));
		} catch (Exception e) {}
		
		int cCount = cultureContentService.selectCultureContentCount(param);
		int fCount = festivalService.selectFestivalCount(param);
		int tCount = tourListService.selectTourListCount(param);
		PageInfo pageInfo = new PageInfo(page, 5, cCount, 12);
		List<TourList> tList2 = tourListService.selectTourListList(pageInfo, param);
		for(TourList t : tList2) {
			if(t.firstimage == null) {
				t.firstimage = "http://tong.visitkorea.or.kr/cms/resource/83/2402783_image2_1.jpg";
			}
		}
		int maxPage = cCount/5;
		
		model.addAttribute("cCount",cCount);
		model.addAttribute("fCount",fCount);
		model.addAttribute("tCount",tCount);
		model.addAttribute("tList",tList2);
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("page",page);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("tourList", tList2);
		
		return "2.1_hotplaceTourList";
	}
	
	
	
//	핫플레이스 상세 페이지 구현 예시
//	@RequestMapping("/hotMainDetail")
//	public String hotMainDetail(Model model, @RequestParam Map<String,Object> param) {
//		int page = 1;
//		try {
//			// page 파라메터를 숫자로 바꿔주는 코드, 항상 try 끝에 존재해야한다.
//			page = Integer.parseInt((String) param.get("page"));
//		} catch (Exception e) {}
//		
//		int count = accomoService.selectAccomoCount(param);
//		PageInfo pageInfo = new PageInfo(page, 5, count, 12); // 게시글이 보여지는 갯수 = 10
//		List<Accommodation> list = accomoService.selectAccomoList(pageInfo, param);
//
//		// 이미지 없는 것 후처리 
//		for(Accommodation a : list) {
//			if(a.firstimage == null) {
//				a.firstimage = "http://tong.visitkorea.or.kr/cms/resource/35/1359335_image2_1.jpg";
//			}
//		}
//		model.addAttribute("list", list);
//		model.addAttribute("pageInfo", pageInfo);
//		
//		return "4_accommodation";
//	}

// 핫플레이스 상세상세 페이지
	@RequestMapping(value ="/hotFestivalDetail", method = RequestMethod.GET)
	public String hotFestivalDetail(Model model, int id) {
		Festival festival = festivalService.selectByContentId(id);	
		if(festival == null) {
			// 에러처리
		}
		
		model.addAttribute("fItem", festival);
		return "2.2_hotplaceFestivalDetailed";
	}
	
	@RequestMapping(value ="/hotCultureDetail", method = RequestMethod.GET)
	public String hotCultureDetail(Model model, int id) {
		CultureContent cultureContent = cultureContentService.selectByContentId(id);
		if(cultureContent == null) {
			// 에러처리
		}
		
		model.addAttribute("cItem", cultureContent);
		return "2.2_hotplaceCultureContentDetailed";
	}
	
	@RequestMapping(value ="/hotTourListDetail", method = RequestMethod.GET)
	public String hotTourListDetail(Model model, int id) {
		TourList tourList = tourListService.selectByContentId(id);
		if(tourList == null) {
			// 에러처리
		}
		
		model.addAttribute("tItem", tourList);
		return "2.2_hotplaceTourListDetailed";
	}
}





