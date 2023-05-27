package com.multi.mvc.member.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.multi.mvc.member.model.mapper.MemberMapper;
import com.multi.mvc.member.model.vo.Member;

@Service
public class MemberService {
	
	@Autowired
	private MemberMapper mapper;
	
	@Autowired
	private BCryptPasswordEncoder pwEncoder; //  SHA-256 hash code로 패스워드 일방향 암호 지원 모듈
	// 1234 -> nsikldvnisoldjhv2423jo23 (평문 -> hashCode)
	
	public List<Member> findAll(){
		return mapper.selectAll();
	}

	public Member login(String memberId, String memberPwd) {
		Member member = mapper.selectMemberById(memberId);
		if(member == null) {
			return null;
		}
		
		// BCryptPasswordEncoder 사용법
		System.out.println(member.getPassword()); // 회원가입을 정상적으로 진행하면 암호화된 hash 
		System.out.println(pwEncoder.encode(memberPwd)); // encode를 통해 평문을 hash로 변환
		System.out.println(pwEncoder.matches(memberPwd, member.getPassword())); // 변환하고 검사하는 메소드
		
		// admin 테스트를 위한 임시코드, admin의 경우 패스워드 상관없이 로그인
		if(memberId.equals("admin")) {
			return member;
		}
		
		// 패스워드 확인 로직
		if(member != null && pwEncoder.matches(memberPwd, member.getPassword())) {
			// 로그인 성공인 경우
			return member;
		}else {
			// 로그인 실패 경우
			return null;
		}
	}

	// 서비스의 save : mno(key)가 없으면 insert, key가 있으면 update가 되는 로직
	// @Transactional : 트랜잭션을 관리하는 어노테이션, commit, rollback을 자동으로 지원
	// rollbackFor : 어떤상황에서 rollback을 해야하는지 확인하는 옵션, 없으면 rollback이 없다.
	// https://data-make.tistory.com/738
	@Transactional(rollbackFor = Exception.class)
	public int save(Member member) {
		int result = 0;
		if(member.getMno() == 0) { // 회원가입
			String encodePw = pwEncoder.encode(member.getPassword()); // 암호화 로직
			member.setPassword(encodePw);
			result = mapper.insertMember(member);
		} else { // 회원정보 수정
			result = mapper.updateMember(member);
		}
		return result;
	}

	public boolean validate(String id) {
		return mapper.selectMemberById(id) != null;
	}

	public Member findById(String id) {
		return mapper.selectMemberById(id);
	}

	@Transactional(rollbackFor = Exception.class)
	public int updatePwd(Member loginMember, String password) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mno", loginMember.getMno());
		password = pwEncoder.encode(password); // 패스워드 encode 하는 문장!
		map.put("password", password);
		return mapper.updatePwd(map);
	}
	
	
	@Transactional(rollbackFor = Exception.class)
	public int delete(int mno) {
		return mapper.deleteMember(mno);
	}

	public Member loginKaKao(String kakaoToken) {
		Member member = mapper.selectMemberByKakaoToken(kakaoToken);
		if(member != null ) {
			// 성공일때!
			return member;
		}else {
			// 인증 실패했을때
			return null;
		}
	}
}








