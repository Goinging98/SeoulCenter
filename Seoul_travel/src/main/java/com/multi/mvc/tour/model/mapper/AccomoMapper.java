package com.multi.mvc.tour.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.tour.model.vo.Accommodation;
import com.multi.mvc.tour.model.vo.Replies;
import com.multi.mvc.tour.model.vo.TourImageVO;

@Mapper
public interface AccomoMapper {
	List<Accommodation> selectAccomoList(Map<String, Object> map);

	List<Accommodation> selectRandomAccom(Map<String, Object> map);
	
	int selectAccomoCount(Map<String, Object> map);

	int selecthotelCount(Map<String, Object> map);
	int selectyouthCount(Map<String, Object> map);
	int selecthanokCount(Map<String, Object> map);
	int selectbuisnessCount(Map<String, Object> map);
	int selectforeignCount(Map<String, Object> map);
	int selectelseCount(Map<String, Object> map);

	Accommodation selectByContentId(int id);

	int insertAccomoReply(Replies reply);
	
	int deleteAccomoReply(int rno);
	
	List<TourImageVO> selectAccomoImgList(int id);

	List<Replies> selectAccomoReply(int id);
}
