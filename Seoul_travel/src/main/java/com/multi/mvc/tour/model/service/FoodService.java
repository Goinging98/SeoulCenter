package com.multi.mvc.tour.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.tour.model.mapper.FoodMapper;
import com.multi.mvc.tour.model.vo.Food;

@Service
public class FoodService {
	@Autowired
	private FoodMapper mapper;
	
	public List<Food> selectFoodList(Map<String, Object> map){
		return mapper.selectFoodList(null);
	}
}
