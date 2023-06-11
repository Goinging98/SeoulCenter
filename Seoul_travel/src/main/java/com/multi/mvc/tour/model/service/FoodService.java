package com.multi.mvc.tour.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.tour.model.mapper.FoodMapper;
import com.multi.mvc.tour.model.vo.Food;
import com.multi.mvc.tour.model.vo.Replies;

@Service
public class FoodService {
	@Autowired
	private FoodMapper mapper;

	public List<Food> selectFoodList(PageInfo pageInfo, Map<String, Object> param) {
		param.put("limit", pageInfo.getListLimit());
		param.put("offset", (pageInfo.getStartList() - 1));
		return mapper.selectFoodList(param);
	}
	
	public List<Food> selectFoodRandomList(Map<String, Object> map){
		return mapper.selectFoodRandomList(null);
	}
	
	public List<Replies> selectReplyList(int id){
		return mapper.selectReplyList(id);
	}
	
	public int selectFoodCount(Map<String, Object> map) {
		return mapper.selectFoodCount(map);
	}
	
	public int selectkoreaCount(Map<String, Object> map) {
		return mapper.selectkoreaCount(map);
	}
	public int selectwesternCount(Map<String, Object> map) {
		return mapper.selectwesternCount(map);
	}
	public int selectjapanCount(Map<String, Object> map) {
		return mapper.selectjapanCount(map);
	}
	public int selectchinaCount(Map<String, Object> map) {
		return mapper.selectchinaCount(map);
	}
	public int selectelseCount(Map<String, Object> map) {
		return mapper.selectelseCount(map);
	}
	
	public Food selectByContentId(int id) {
		return mapper.selectByContentId(id);
	}

	@Transactional(rollbackFor = Exception.class)
	public int insertFoodReply(Replies reply) {
		return mapper.insertFoodReply(reply);
	}

	@Transactional(rollbackFor = Exception.class)
	public int deleteFoodReply(int rno) {
		return mapper.deleteFoodReply(rno);
	}
	


}
