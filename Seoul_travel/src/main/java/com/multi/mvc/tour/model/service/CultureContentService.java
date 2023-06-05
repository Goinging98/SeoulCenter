package com.multi.mvc.tour.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.tour.model.mapper.CultureContentMapper;
import com.multi.mvc.tour.model.vo.CultureContent;
import com.multi.mvc.tour.model.vo.Festival;

@Service
public class CultureContentService {
	
	@Autowired
	private CultureContentMapper mapper;
	
	
	public List<CultureContent> selectCultureContentRandomList(Map<String, Object> map){
		return mapper.selectCultureContentRandomList(null);
	}

	public List<CultureContent> selectCultureContentList(PageInfo pageInfo, Map<String, Object> param) {
	    param.put("limit", pageInfo.getListLimit());
	    param.put("offset", (pageInfo.getStartList() - 1));
		return mapper.selectCultureContentList(param);
	}
	
	public CultureContent selectByContentId(int id) {
		return mapper.selectByContentId(id);
	}
	
	public int selectCultureContentCount(Map<String, Object> map) {
		return mapper.selectCultureContentCount(map);
	}
}








