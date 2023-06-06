package com.multi.mvc.tour.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.tour.model.vo.Accommodation;

@Mapper
public interface AccomoMapper {
	List<Accommodation> selectAccomoList(Map<String, Object> map);
	int selectAccomoCount(Map<String, Object> map);
	Accommodation selectByContentId(int id);
	List<Accommodation> selectRandomAccom(Map<String, Object> map);

	
}
