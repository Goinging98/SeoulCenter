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
import com.multi.mvc.tour.model.vo.TourImageVO;
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
				f.firstimage = "resources/img/hotplace/festivalsample.jpeg";
			}
			System.out.println(f);
		}
		
		for(CultureContent c : cList) {
			if(c.firstimage == null) {
				c.firstimage = "resources/images/seoulculture.png";
			}
			System.out.println(c);
		}
		
		for(TourList t : tList) {
			if(t.firstimage == null) {
				t.firstimage = "resources/images/seoultour.png";
			}
			System.out.println(t);
		}
		
		model.addAttribute("fList",fList);
		model.addAttribute("cList",cList);
		model.addAttribute("tList",tList);
		System.out.println(fList);
		
		return "2_hotplace";
	}
	
	// 문화시설 상세 페이지
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
		PageInfo pageInfo = new PageInfo(page, 5, cCount, 10);
		List<CultureContent> cList2 = cultureContentService.selectCultureContentList(pageInfo, param);
		for(CultureContent c : cList2) {
			if(c.firstimage == null) {
				c.firstimage = "resources/images/seoulculture.png";
			}
		}
		int maxPage = cCount/5;
		
		model.addAttribute("cCount",cCount);
		model.addAttribute("fCount",fCount);
		model.addAttribute("tCount",tCount);
		model.addAttribute("cList2",cList2);
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("page",page);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("cultureContentList", cList2);
		model.addAttribute("searchValue", param.get("searchValue"));
		
		return "2.1_hotplaceCultureContent";
	}
	
	// 행사 상세 페이지
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
		PageInfo pageInfo = new PageInfo(page, 5, fCount, 10);
		List<Festival> fList2 = festivalService.selectFestivalList(pageInfo, param);
		for(Festival f : fList2) {
			if(f.firstimage == null) {
				f.firstimage = "resources/img/hotplace/festivalsample.jpeg";
			}
		}
		int maxPage = fCount/5;
		
		model.addAttribute("cCount",cCount);
		model.addAttribute("fCount",fCount);
		model.addAttribute("tCount",tCount);
		model.addAttribute("fList2",fList2);
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("page",page);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("festivalList", fList2);
		model.addAttribute("searchValue", param.get("searchValue"));
		
		return "2.1_hotplaceFestival";
	}
	
	// 관광지 상세 페이지
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
		PageInfo pageInfo = new PageInfo(page, 5, tCount, 10);
		List<TourList> tList2 = tourListService.selectTourListList(pageInfo, param);
		for(TourList t : tList2) {
			if(t.firstimage == null) {
				t.firstimage = "resources/images/seoultour.png";
			}
		}
		int maxPage = tCount/5;
		
		model.addAttribute("cCount",cCount);
		model.addAttribute("fCount",fCount);
		model.addAttribute("tCount",tCount);
		model.addAttribute("tList2",tList2);
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("page",page);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("tourList", tList2);
		model.addAttribute("searchValue", param.get("searchValue"));
		
		return "2.1_hotplaceTourList";
	}
	
	
// 행사/축제 상세상세 페이지
	@RequestMapping(value ="/hotFestivalDetail", method = RequestMethod.GET)
	public String hotFestivalDetail(Model model, int id) {
		Festival festival = festivalService.selectByContentId(id);	
		List<TourImageVO> imgFestival = festivalService.selectFestivalImgList(id);
		if(festival == null) {
			// 에러처리
		}
		
		model.addAttribute("imgfItem",imgFestival);
		model.addAttribute("fItem", festival);
		return "2.2_hotplaceFestivalDetailed";
	}

// 문화시설 상세상세 페이지
	@RequestMapping(value ="/hotCultureDetail", method = RequestMethod.GET)
	public String hotCultureDetail(Model model, int id) {
		CultureContent cultureContent = cultureContentService.selectByContentId(id);
		List<TourImageVO> imgCulture = cultureContentService.selectCultureImgList(id);
		if(cultureContent == null) {
			// 에러처리
		}
		
		model.addAttribute("imgcItem",imgCulture);
		model.addAttribute("cItem", cultureContent);
		return "2.2_hotplaceCultureContentDetailed";
	}

// 관광지 상세상세 페이지
	@RequestMapping(value ="/hotTourListDetail", method = RequestMethod.GET)
	public String hotTourListDetail(Model model, int id) {
		TourList tourList = tourListService.selectByContentId(id);
		List<TourImageVO> imgTour = tourListService.selectTourImgList(id);
		if(tourList == null) {
			// 에러처리
		}
		
		model.addAttribute("imgtItem",imgTour);
		model.addAttribute("tItem", tourList);
		return "2.2_hotplaceTourListDetailed";
	}
}





