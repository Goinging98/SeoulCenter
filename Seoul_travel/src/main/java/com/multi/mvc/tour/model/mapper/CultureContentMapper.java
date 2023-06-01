package com.multi.mvc.tour.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.tour.model.vo.CultureContent;

@Mapper
public interface CultureContentMapper {
	List<CultureContent> selectCultureContentList(Map<String, Object> map);
	List<CultureContent> selectCultureContentRandomList(Map<String, Object> map);
}
