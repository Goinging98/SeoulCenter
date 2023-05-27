package com.multi.mvc.board.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.board.model.vo.Reply;


@Mapper
public interface BoardMapper {
	
	/**
	 * @param map (key=id, title, content, limit(필수), offset(필수))
	 * @return
	 */
	List<Board> selectBoardList(Map<String, Object> map);

	/**
	 * @param map (key=id, title, content)
	 * @return
	 */
	int selectBoardCount(Map<String, Object> map);

	Board selectBoardByNo(int bno);

	int insertBoard(Board board);

	int insertReply(Reply reply);

	int updateBoard(Board board);

	/**
	 * @param map (key=readCount, bno)
	 * @return
	 */
//	int updateReadCount(Map<String, Object> map); 수정
	int updateReadCount(Board board);

	int deleteBoard(int bno);

	int deleteReply(int rno);
}
