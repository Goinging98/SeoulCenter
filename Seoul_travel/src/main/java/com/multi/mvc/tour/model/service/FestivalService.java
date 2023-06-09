package com.multi.mvc.tour.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.tour.model.mapper.FestivalMapper;
import com.multi.mvc.tour.model.vo.Festival;
import com.multi.mvc.tour.model.vo.TourImageVO;

@Service
public class FestivalService {
	
	@Autowired
	private FestivalMapper mapper;
	
	public List<Festival> selectFestivalList(PageInfo pageInfo, Map<String, Object> param){
	    param.put("limit", pageInfo.getListLimit());
	    param.put("offset", (pageInfo.getStartList() - 1));
		return mapper.selectFestivalList(param);
	}
	
	public List<Festival> selectFestivalRandomList(Map<String, Object> map){
		return mapper.selectFestivalRandomList(null);
	}

	public Festival selectByContentId(int id) {
		return mapper.selectByContentId(id);
	}
	
	public int selectFestivalCount(Map<String, Object> map) {
		return mapper.selectFestivalCount(map);
	}
	
	public List<TourImageVO> selectFestivalImgList(Map<String, Object> param){
		return mapper.selectFestivalImgList(param);
	}
}
