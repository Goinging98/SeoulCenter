package com.multi.mvc.tour.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.tour.model.vo.Community;
import com.multi.mvc.tour.model.vo.Replies;


@Mapper
public interface CommunityMapper {
	
	
	//Basic 
	/**
	 * @param map (key=id, title, content, limit(필수), offset(필수))
	 * @return
	 */
	List<Community> selectCommunityList(Map<String, Object> map);

	/**
	 * @param map (key=id, title, content)
	 * @return
	 */
	int selectCommunityCount(Map<String, Object> map);
	
	///////////////////////////////////////////////////////////////	
	// 숙박 
	List<Community> selectAccomodationList(Map<String, Object> map);
	int selectAccomodationCount(Map<String, Object> map);

	// 식당  
	List<Community> selectFoodList(Map<String, Object> map);
	int selectFoodCount(Map<String, Object> map);

	// 식당  
	List<Community> selectHotplaceList(Map<String, Object> map);
	int selectHotplaceCount(Map<String, Object> map);
	///////////////////////////////////////////////////////////////
	

	Community selectCommunityByNo(int bno);

	int insertCommunity(Community board);

	int insertReplies(Replies reply);

	int updateCommunity(Community board);

	/**
	 * @param map (key=readCount, bno)
	 * @return
	 */

	int updateReadCount(Community board);

	int deleteCommunity(int bno);

	int deleteReplies(int rno);
}
