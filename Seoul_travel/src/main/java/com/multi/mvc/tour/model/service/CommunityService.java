package com.multi.mvc.tour.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.tour.model.mapper.AccomoMapper;
import com.multi.mvc.tour.model.vo.Accommodation;

@Service
public class CommunityService {
	
	@Autowired
	private AccomoMapper mapper;
	
	
	public List<Accommodation> selectAccomoList(PageInfo pageInfo, Map<String, Object> param){
		param.put("limit", pageInfo.getListLimit());
		param.put("offset", (pageInfo.getStartList() - 1));
		return mapper.selectAccomoList(param);
	}
	
	public int selectAccomoCount(Map<String, Object> map) {
		return mapper.selectAccomoCount(map);
	}
	
	public Accommodation selectByContentId(int id) {
		return mapper.selectByContentId(id);
	}
}









