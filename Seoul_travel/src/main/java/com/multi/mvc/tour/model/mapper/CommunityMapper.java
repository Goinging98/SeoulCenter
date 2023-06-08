package com.multi.mvc.tour.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.tour.model.vo.Community;
import com.multi.mvc.tour.model.vo.Replies;


@Mapper
public interface CommunityMapper {

	///////////////////////////////////////////////////////////////	
	// 공지사항  
	List<Community> selectBoardList(Map<String, Object> map);
	int selectBoardCount(Map<String, Object> map);
	
	// 숙박 
	List<Community> selectAccomodationList(Map<String, Object> map);
	int selectAccomodationCount(Map<String, Object> map);

	// 식당  
	List<Community> selectFoodList(Map<String, Object> map);
	int selectFoodCount(Map<String, Object> map);

	// 핫플  
	List<Community> selectHotplaceList(Map<String, Object> map);
	int selectHotplaceCount(Map<String, Object> map);

	// 공지  
	List<Community> selectNoticeList(Map<String, Object> map);
	int selectNoticeCount(Map<String, Object> map);
	///////////////////////////////////////////////////////////////
	

	Community selectBoardByNo(int bno);

	int insertCommunity(Community board);

	int insertReplies(Replies reply);

	int updateCommunity(Community board);

	/**
	 * @param map (key=readCount, bno)
	 * @return
	 */

	int updateReadCount(Community board);

	int deleteBoard(int bno);

	int deleteReplies(int rno);

	int insertBoard(Community board);

	int updateBoard(Community board);
}
