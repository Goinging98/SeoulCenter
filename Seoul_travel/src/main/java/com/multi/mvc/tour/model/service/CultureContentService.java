package com.multi.mvc.tour.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.tour.model.mapper.CultureContentMapper;
import com.multi.mvc.tour.model.vo.CultureContent;

@Service
public class CultureContentService {
	
	@Autowired
	private CultureContentMapper mapper;
	
	
	public List<CultureContent> selectCultureContentRandomList(Map<String, Object> map){
		return mapper.selectCultureContentRandomList(null);
	}
}








