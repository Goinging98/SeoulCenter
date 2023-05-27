package com.multi.mvc.member.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.member.model.vo.Member;

//@Mapper : DAO 없이 자동으로 Mapper 객체를 생성해주는 어노테이션. 별도의 DAO 작성이 필요 없어진다.
//※ 주의 : mapper의 id와 동일한 메소드 네이밍을 맞춰야한다. 

@Mapper
public interface MemberMapper {
	int selectCount();
	List<Member> selectAll();
	Member selectMemberById(String id);
	int insertMember(Member member);
	int updateMember(Member member);
	
	/**
	 * @param map = password, mno 필수!
	 * @return 결과값
	 */
	int updatePwd(Map<String, Object> map);
	int deleteMember(int mno);
	Member selectMemberByKakaoToken(String kakaoToken);
	
}
