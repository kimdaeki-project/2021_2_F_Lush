package com.iu.e1.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
   @Autowired
   private MemberRepository memberRepository;
   
   // 회원가입
   public int setInsert(MemberVO memberVO) throws Exception{
      return memberRepository.setInsert(memberVO);
   }
   
   // 회원탈퇴
   public int setDelete(MemberVO memberVO) throws Exception{
      return memberRepository.setDelete(memberVO);
   }
   
   // 회원정보 업데이트
   public int setUpdate(MemberVO memberVO) throws Exception{
      return memberRepository.setUpdate(memberVO);
   }
   
   // 업데이트를 위해 회원 정보 가져오기
   public MemberVO getSelectOne(MemberVO memberVO) throws Exception{
      return memberRepository.getSelectOne(memberVO);
   }
   
   // 로그인
   public MemberVO getLoign(MemberVO memberVO) throws Exception{
      return memberRepository.getLogin(memberVO);
   }
}