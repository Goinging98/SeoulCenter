package com.multi.mvc.tour.model.service;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.tour.model.mapper.CommunityMapper;
import com.multi.mvc.tour.model.vo.Community;
import com.multi.mvc.tour.model.vo.Replies;

@Service
public class CommunityService {
		
	@Autowired
	private CommunityMapper mapper;

	// basic
	public int getBoardCount(Map<String, Object> param) {
		return mapper.selectBoardCount(param);
	}


	public List<Community> getBoardList(PageInfo pageInfo, Map<String, Object> param) {
		param.put("limit", pageInfo.getListLimit());
		param.put("offset", (pageInfo.getStartList() - 1));
		return mapper.selectBoardList(param);
	}
	
	///////////////////////////////////////////////////////////////
	// 5.1 communityAccomodation Mapper
	public int getAccomodationCount(Map<String, Object> param) {
		return mapper.selectAccomodationCount(param);
	}

	public List<Community> getAccomodationList(PageInfo pageInfo, Map<String, Object> param) {
		param.put("limit", pageInfo.getListLimit());
		param.put("offset", (pageInfo.getStartList() - 1));
		return mapper.selectAccomodationList(param);
	}

	// 5.1 communityFood Mapper
	public int getFoodCount(Map<String, Object> param) {
		return mapper.selectFoodCount(param);
	}

	public List<Community> getFoodList(PageInfo pageInfo, Map<String, Object> param) {
		param.put("limit", pageInfo.getListLimit());
		param.put("offset", (pageInfo.getStartList() - 1));
		return mapper.selectFoodList(param);
	}

	// 5.1 communityHotplace Mapper
	public int getHotplaceCount(Map<String, Object> param) {
		return mapper.selectHotplaceCount(param);
	}

	public List<Community> getHotplaceList(PageInfo pageInfo, Map<String, Object> param) {
		param.put("limit", pageInfo.getListLimit());
		param.put("offset", (pageInfo.getStartList() - 1));
		return mapper.selectHotplaceList(param);
	}
	///////////////////////////////////////////////////////////////

	
	
	///////////////////////////////////////////////////////////////
	public Community findByNo(int no) {
		Community board = mapper.selectBoardByNo(no);
		board.setReadCount(board.getReadCount() + 1);
		mapper.updateReadCount(board);
		return board;
	}

	private static int count = 0;
	public String saveFile(MultipartFile upfile, String savePath) {
		File folder = new File(savePath);
		
		// 폴더가 없으면 경로채 폴더 만들어주는 코드
		if(folder.exists() == false) {
			folder.mkdirs();
		}
		System.out.println(savePath);
		
		// 파일 이름을 날짜시간 + 랜덤하게 바꾸는 코드, text.txt -> 20230522_14230230202.txt
		String originalFileName = upfile.getOriginalFilename();
		String renamedFileName = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd_HHmmssSSS"));
		renamedFileName += (count++);									
		renamedFileName += originalFileName.substring(originalFileName.lastIndexOf("."));
		String renamedPath = savePath + "/" + renamedFileName;
		
		try {
			// 실제 파일이름을 변경하여 저장하는 코드
			upfile.transferTo(new File(renamedPath));
		} catch (Exception e) {
			return null;
		}
		
		return renamedFileName;
	}

	@Transactional(rollbackFor = Exception.class)
	public int saveBoard(Community board) {
		int result = 0;
		if(board.getBno() == 0) {
			result = mapper.insertBoard(board);
		} else {
			result = mapper.updateBoard(board);
		}
		return result;
	}

	public void deleteFile(String path) {
		File file = new File(path);
		if(file.exists()) {
			file.delete();
		}
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int deleteBoard(int no, String savePath) {
		Community board = mapper.selectBoardByNo(no);
		deleteFile(savePath + "\\" + board.getRenamedFileName());
		return mapper.deleteBoard(no);
	}

	@Transactional(rollbackFor = Exception.class)
	public int saveReply(Replies reply) {
		return mapper.insertReply(reply);
	}


	@Transactional(rollbackFor = Exception.class)
	public int deleteReply(int rno) {
		return mapper.deleteReply(rno);
	}

	
}









