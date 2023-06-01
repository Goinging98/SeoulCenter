package com.multi.mvc.tour.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.tour.model.mapper.FoodMapper;
import com.multi.mvc.tour.model.vo.Food;

@Service
public class FoodService {
	@Autowired
	private FoodMapper mapper;

	public List<Food> selectFoodList(PageInfo pageInfo, Map<String, Object> param) {
		param.put("limit", pageInfo.getListLimit());
		param.put("offset", (pageInfo.getStartList() - 1));
		return mapper.selectFoodList(param);
	}
	
	public int selectFoodCount(Map<String, Object> map) {
		return mapper.selectFoodCount(map);
	}
	
	public Food selectByContentId(int id) {
		return mapper.selectByContentId(id);
	}
}
