package com.multi.mvc.tour.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.tour.model.vo.Festival;

@Mapper
public interface FestivalMapper {
	List<Festival> selectFestivalList(Map<String, Object> map);
	List<Festival> selectFestivalRandomList(Map<String, Object> map);
	Festival selectByContentId(int id);
	int selectFestivalCount(Map<String, Object> map);
}
