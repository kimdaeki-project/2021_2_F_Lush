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
   
   @GetMapping("find_id")
   public String find_id() throws Exception{
	   return "member/find_id";
   }
   
   @PostMapping("find_id2")
   public ModelAndView find_id(MemberVO  memberVO, ModelAndView mv) throws Exception{
	   MemberVO vo = memberService.find_id(memberVO);
	   mv.addObject("memberVO", vo);
	   System.out.println(vo.getName());
	   mv.setViewName("member/find_id2");
	   return mv;
   }
   
   @PostMapping("find_pw2")
   public ModelAndView find_pw(MemberVO  memberVO, ModelAndView mv) throws Exception{
	   MemberVO vo = memberService.find_pw(memberVO);
	   mv.addObject("memberVO", vo);	   
	   mv.setViewName("member/find_pw2");
	   return mv;
   }
   
   @GetMapping("find_pw2")
   public String find_id2() throws Exception{
	   return "member/find_id2";
   }
   
   @GetMapping("find_pw")
   public String find_pw() throws Exception{
	   return "member/find_pw";
   }
   
   @GetMapping("pwReset")
   public String pwReset() throws Exception{
	   return "member/pwReset";
   }
   
   
   
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