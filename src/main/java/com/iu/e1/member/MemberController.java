package com.iu.e1.member;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/**")
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	// 회원가입
	@GetMapping("memberJoin")
	public String setInsert() throws Exception{
		return "member/memberJoin";
	}
	
	// 회원가입
	@PostMapping("memberJoin")
	public String setInsert(MemberVO memberVO) throws Exception{
		int result = memberService.setInsert(memberVO);
		return "redirect:../";		
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
	public String getMyPage() throws Exception{
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
