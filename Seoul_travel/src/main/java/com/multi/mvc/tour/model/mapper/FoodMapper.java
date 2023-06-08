package com.multi.mvc.tour.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.tour.model.vo.Food;

@Mapper
public interface FoodMapper {
	List<Food> selectFoodList(Map<String, Object> map);
	List<Food> selectFoodRandomList(Map<String, Object> map);
	int selectFoodCount(Map<String, Object> map);
	Food selectByContentId(int id);
}
