package com.iu.e1.member;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberRepository {
	// 회원가입
	public int setInsert(MemberVO memberVO) throws Exception;
	
	// 회원탈퇴
	public int setDelete(MemberVO memberVO) throws Exception;
	
	// 회원정보업데이트
	public int setUpdate(MemberVO memberVO) throws Exception;
		
	// 로그인
	public MemberVO getLogin(MemberVO memberVO) throws Exception;
	
	// 회원정보 가져오기
	public MemberVO getSelectOne(MemberVO memberVO) throws Exception;
		
	
}
