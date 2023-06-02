package com.multi.mvc.tour.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.tour.model.vo.CultureContent;
import com.multi.mvc.tour.model.vo.TourList;

@Mapper
public interface TourListMapper {
	List<TourList> selectTourListList(Map<String, Object> map);
	List<TourList> selectTourListRandomList(Map<String, Object> map);
	TourList selectByContentId(int id);
	int selectTourListCount(Map<String, Object> map);
}
