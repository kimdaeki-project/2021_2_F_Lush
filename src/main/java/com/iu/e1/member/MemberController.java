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
	public String find_id() throws Exception {
		return "member/find_id";
	}

	@PostMapping("find_id2")
	public ModelAndView find_id(MemberVO memberVO, ModelAndView mv) throws Exception {
		MemberVO vo = memberService.find_id(memberVO);
		mv.addObject("memberVO", vo);
		/* System.out.println(vo.getName()); */
		mv.setViewName("member/find_id2");
		return mv;
	}

	@PostMapping("find_pw2")
	public ModelAndView find_pw(MemberVO memberVO, ModelAndView mv) throws Exception {
		MemberVO vo = memberService.find_pw(memberVO);
		mv.addObject("memberVO", vo);
		mv.setViewName("member/find_pw2");
		return mv;
	}

	@GetMapping("find_pw2")
	public String find_id2() throws Exception {
		return "member/find_id2";
	}

	@GetMapping("find_pw")
	public String find_pw() throws Exception {
		return "member/find_pw";
	}

	@GetMapping("pwReset")
	public ModelAndView pwReset(String name, ModelAndView mv) throws Exception {
		System.out.println(name + "1234");
		mv.addObject("name", name);
		mv.setViewName("member/pwReset");
		return mv;
	}

	@PostMapping("pwReset")
	public String pwReset(MemberVO memberVO) throws Exception {
		int result = memberService.pwReset(memberVO);
		if (result == 0) {
			System.out.println("오류");
		} else {
			System.out.println("수정성공");
		}
		return "redirect:../";
	}

	@GetMapping("joinFinish")
	public String joinFinish() throws Exception {
		return "member/joinFinish";
	}

	// 회원가입
	@GetMapping("memberJoin2")
	public String setInsert() throws Exception {
		return "member/memberJoin2";
	}

	// 회원가입
	@PostMapping("memberJoin2")
	public String setInsert(MemberVO memberVO) throws Exception {
		int result = memberService.setInsert(memberVO);
		return "member/joinFinish";
	}

	// check page
	@GetMapping("joinCheck")
	public String setCheck() throws Exception {
		return "member/joinCheck";
	}

	@GetMapping("memberJoin")
	public String setmemberJoin() throws Exception {
		return "member/memberJoin";
	}

	// 로그인
	@GetMapping("memberLogin")
	public String getLogin() throws Exception {
		return "member/memberLogin";
	}

	// 로그인
	@PostMapping("memberLogin")
	public ModelAndView getLogin(MemberVO memberVO, HttpSession httpSession) throws Exception {
		memberVO = memberService.getLoign(memberVO);
		ModelAndView mv = new ModelAndView();
		String message = "";
		String url = "";
		
		if (memberVO != null) {
			
			message = "로그인 완료 되었습니다";
			url = "../";
			httpSession.setAttribute("member", memberVO);
			System.out.println("성공");
						
		} else {
			
			message = "아이디와 비밀번호가 일지하지 않습니다";
			url = "./memberLogin";			
			System.out.println("실패");
			
		}

		mv.addObject("message", message);
		mv.addObject("url", url);
		mv.setViewName("./member/extra");

		return mv;
	}

	// 로그아웃
	@GetMapping("memberLogout")
	public String getLogout(HttpSession httpSession) throws Exception {
		httpSession.invalidate();
		return "redirect:../";
	}

	// MyPage
	@GetMapping("myPage")
	public ModelAndView getMyPage(HttpSession session) throws Exception {
		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		/* System.out.println(memberVO.getName()); */
		ModelAndView mv = new ModelAndView();
		mv.addObject("memberVO", memberVO);
		mv.setViewName("member/myPage");
		return mv;
	}

	// 회원정보 업데이트 전 본인확인
	@GetMapping("mypage_updateCheck")
	public ModelAndView mypage_updateCheck(HttpSession session) throws Exception {
		MemberVO memberVO = (MemberVO) session.getAttribute("member");
		ModelAndView mv = new ModelAndView();
		mv.addObject("memberVO", memberVO);
		mv.setViewName("member/mypage_updateCheck");
		return mv;
	}

	@PostMapping("mypage_updateCheck")
	public ModelAndView mypage_updateCheck(MemberVO memberVO, ModelAndView mv) throws Exception {
		MemberVO vo = memberService.checkMember(memberVO);
		String id1 = memberVO.getId();

		String message = "";
		String url = "";

		if (vo == null) {
			message = "아이디와 비밀번호가 일지하지 않습니다";
			url = "/member/mypage_updateCheck";
			System.out.println("실패");
		} else {
			String id2 = vo.getId();

			if (id1.equals(id2)) {
				message = "본인 인증에 성공하였습니다";
				url = "/member/mypage_updatePage";
				System.out.println("성공");
			}
		}

		mv.addObject("message", message);
		mv.addObject("url", url);
		mv.setViewName("./member/extra");

		return mv;
	}

	// 회원정보업데이트
	@GetMapping("mypage_updatePage")
	public String mypage_updatePage(MemberVO memberVO, Model model, HttpSession session) throws Exception {
		MemberVO vo = (MemberVO) session.getAttribute("member");
		memberVO = memberService.getSelectOne(vo);
		System.out.println(memberVO.getId());
		model.addAttribute("memberVO", memberVO);

		return "member/mypage_updatePage";
	}

	// 회원정보업데이트
	@PostMapping("mypage_updatePage")
	public String mypage_updatePage(MemberVO memberVO, HttpSession session) throws Exception {
		System.out.println(memberVO.getId());
		int result = memberService.setUpdate(memberVO);
		System.out.println(result);
		session.invalidate();
		return "redirect: ../../../";
	}

	// 회원탈퇴
	@GetMapping("mypage_memberDelete")
	public String mypage_memberDelete(MemberVO memberVO) throws Exception {
		
		
		return "member/mypage_memberDelete";
	}
	
	@PostMapping("mypage_memberDelete")
	public ModelAndView mypage_memberDelete(MemberVO memberVO, ModelAndView mv, HttpSession session) throws Exception{
		MemberVO vo1 = (MemberVO) session.getAttribute("member");		
		String a = vo1.getPw();
				
		MemberVO vo2 = memberService.getSelectOne2(memberVO);		
		String b = vo2.getPw();
		
		String message = "";
		String url = "";
		
		if(a.equals(b)) {
			message = "탈퇴완료되었습니다";
			url = "../../../";
			System.out.println("성공");
		}else {
			message = "비밀번호가 일치하지 않습니다";
			url = "./member/mypage_memberDelete";
		}
		
		mv.addObject("message", message);
		mv.addObject("url", url);
		mv.setViewName("member/extra");
		session.invalidate();
		return mv;
	}

}