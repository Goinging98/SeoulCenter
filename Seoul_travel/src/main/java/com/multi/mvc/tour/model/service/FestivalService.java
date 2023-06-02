package com.multi.mvc.tour.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.tour.model.mapper.FestivalMapper;
import com.multi.mvc.tour.model.vo.Festival;

@Service
public class FestivalService {
	
	@Autowired
	private FestivalMapper mapper;
	
	public List<Festival> selectFestivalList(Map<String, Object> map){
		return mapper.selectFestivalList(null);
	}
	
	public List<Festival> selectFestivalRandomList(Map<String, Object> map){
		return mapper.selectFestivalRandomList(null);
	}

	public Festival selectByContentId(int id) {
		return mapper.selectByContentId(id);
		 
	}
}
