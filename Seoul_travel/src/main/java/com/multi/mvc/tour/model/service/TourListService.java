package com.multi.mvc.tour.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.tour.model.mapper.TourListMapper;
import com.multi.mvc.tour.model.vo.TourList;

@Service
public class TourListService {
	
	@Autowired
	private TourListMapper mapper;
	
	
	public List<TourList> selectTourListRandomList(Map<String, Object> map){
		return mapper.selectTourListRandomList(null);
	}
}








