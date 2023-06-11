package com.multi.mvc.tour.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.tour.model.mapper.AccomoMapper;
import com.multi.mvc.tour.model.vo.Accommodation;
import com.multi.mvc.tour.model.vo.Replies;
import com.multi.mvc.tour.model.vo.TourImageVO;

@Service
public class AccomoService {
	
	@Autowired
	private AccomoMapper mapper;
	
	
	public List<Accommodation> selectAccomoList(PageInfo pageInfo, Map<String, Object> param) {
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
	public List<Accommodation> selectRandomAccom(int count) {
	    Map<String, Object> map = new HashMap<>();
	    map.put("count", count);
	    return mapper.selectRandomAccom(map);
	}
	
	
	public int selecthotelCount(Map<String, Object> map) {
		return mapper.selecthotelCount(map);
	}
	public int selectyouthCount(Map<String, Object> map) {
		return mapper.selectyouthCount(map);
	}
	public int selecthanokCount(Map<String, Object> map) {
		return mapper.selecthanokCount(map);
	}
	public int selectbuisnessCount(Map<String, Object> map) {
		return mapper.selectbuisnessCount(map);
	}
	public int selectforeignCount(Map<String, Object> map) {
		return mapper.selectforeignCount(map);
	}
	public int selectelseCount(Map<String, Object> map) {
		return mapper.selectelseCount(map);
	}
	

	@Transactional(rollbackFor = Exception.class)
	public int insertAccomoReply(Replies reply) {
		return mapper.insertAccomoReply(reply);
	}

	@Transactional(rollbackFor = Exception.class)
	public int deleteAccomoReply(int rno) {
		return mapper.deleteAccomoReply(rno);
	}

	public List<TourImageVO> selectAccomoImgList(int id){
		return mapper.selectAccomoImgList(id);
	}

}









