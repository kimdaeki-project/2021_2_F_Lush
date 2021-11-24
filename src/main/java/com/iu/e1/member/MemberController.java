package com.iu.e1.member;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/member/**")
public class MemberController {
   @Autowired
   private MemberService memberService;
   
   @GetMapping("joinFinish")
	public String joinFinish() throws Exception{
		return "member/joinFinish";
	}
   
   // 회원가입
   @GetMapping("memberJoin2")
   public String setInsert() throws Exception{
      return "member/memberJoin2";
   }
   
   // 회원가입
   @PostMapping("memberJoin2")
   public String setInsert(MemberVO memberVO) throws Exception{
      int result = memberService.setInsert(memberVO);
      return "redirect:../";      
   }
   
   // check page
   @GetMapping("joinCheck")
   public String setCheck() throws Exception{
      return "member/joinCheck";
   }
   
   @GetMapping("memberJoin")
   public String setmemberJoin() throws Exception{
      return "member/memberJoin";
   }
   
   // 로그인
   @GetMapping("memberLogin")
   public String getLogin() throws Exception{
      return "member/memberLogin";
   }
   
   // 로그인
   @PostMapping("memberLogin")
   public String getLogin(MemberVO memberVO, HttpSession httpSession) throws Exception{
      memberVO = memberService.getLoign(memberVO);
      
      if(memberVO != null) {
         httpSession.setAttribute("member", memberVO);
      }
      
      return "redirect:../";
   }
   
   // 로그아웃
   @GetMapping("memberLogout")
   public String getLogout(HttpSession httpSession)throws Exception{
      httpSession.invalidate();
      return "redirect:../";
   }
   
   // 회원탈퇴
   @GetMapping("memberDelete")
   public String setDelete(MemberVO memberVO) throws Exception{
      int result = memberService.setDelete(memberVO);
      return "redirect:../";
   }
   
   // MyPage
   @GetMapping("myPage")
   public String getMyPage(MemberVO memberVO, HttpSession session) throws Exception{
	   if(memberVO != null) {
	         session.setAttribute("member", memberVO);
	      }
	   
      return "member/myPage";
   }
   
   // 회원정보업데이트
   @GetMapping("memberUpdate")
   public String setUpdate(MemberVO memberVO, Model model) throws Exception{
      memberVO = memberService.getSelectOne(memberVO);      
      model.addAttribute("memberVO", memberVO);      
      return "member/memberUpdate";
   }
   
   // 회원정보업데이트
   @PostMapping("memberUpdate")
   public String setUpdate(MemberVO memberVO, HttpSession session) throws Exception{
      int result = memberService.setUpdate(memberVO);
      session.invalidate();
      return "redirect: ../../../";
   }
   
}