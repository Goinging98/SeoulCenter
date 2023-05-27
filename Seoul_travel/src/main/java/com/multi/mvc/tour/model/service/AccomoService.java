package com.multi.mvc.tour.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.tour.model.mapper.AccomoMapper;
import com.multi.mvc.tour.model.vo.Accommodation;

@Service
public class AccomoService {
	
	@Autowired
	private AccomoMapper mapper;
	
	
	public List<Accommodation> selectAccomoList(Map<String, Object> map){
		return mapper.selectAccomoList(null);
	}
}








