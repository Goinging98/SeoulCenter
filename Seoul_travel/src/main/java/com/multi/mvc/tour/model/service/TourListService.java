package com.multi.mvc.tour.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.tour.model.mapper.TourListMapper;
import com.multi.mvc.tour.model.vo.Festival;
import com.multi.mvc.tour.model.vo.TourList;

@Service
public class TourListService {
	
	@Autowired
	private TourListMapper mapper;
	
	
	public List<TourList> selectTourListRandomList(Map<String, Object> map){
		return mapper.selectTourListRandomList(null);
	}


	public List<TourList> selectTourListList(PageInfo pageInfo, Map<String, Object> param) {
	    param.put("limit", pageInfo.getListLimit());
	    param.put("offset", (pageInfo.getStartList() - 1));
		return mapper.selectTourListList(param);
	}
	
	public TourList selectByContentId(int id) {
		return mapper.selectByContentId(id);
	}
	
	public int selectTourListCount(Map<String, Object> map) {
		return mapper.selectTourListCount(map);
	}
}








