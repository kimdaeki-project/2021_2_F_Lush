package com.iu.e1.inquiry;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.iu.e1.qna.QnaService;

@Controller
@RequestMapping("/inquiry/**")
public class InquiryController {
	
	@Autowired
	private InquiryService inquiryService;
	
	@GetMapping("insert")
	public String setInsert() throws Exception {
		return "inquiry/insert";
	}
	
	@PostMapping("insert")
	public String setInsert(InquiryVO inquiryVO) throws Exception {
		int result = inquiryService.setInsert(inquiryVO);
		return "redirect:./selectList";
	}
	
	@GetMapping("selectList")
	public ModelAndView getSelectList(ModelAndView mv) throws Exception {
		List<InquiryVO> ar = inquiryService.getSelectList();
		
		mv.setViewName("inquiry/list");
		mv.addObject("inquiryList", ar);
		return mv;
	}
	
	@GetMapping("selectOne")
	public ModelAndView getSelectOne(InquiryVO inquiryVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		inquiryVO = inquiryService.getSelectOne(inquiryVO);
		mv.setViewName("inquiry/select");
		mv.addObject("inquiryVO", inquiryVO);
		
		return mv;
	}
	
	@GetMapping("update")
	public String setUpdate(InquiryVO inquiryVO, Model model) throws Exception {
		inquiryVO = inquiryService.getSelectOne(inquiryVO);
		model.addAttribute("inquiryVO", inquiryVO);
		return "inquiry/update";
	}
	
	@PostMapping("update")
	public String setUpdate(InquiryVO inquiryVO) throws Exception {
		int result = inquiryService.setUpdate(inquiryVO);
		return "redirect:./selectOne?num="+inquiryVO.getNum();
	}
	
	@GetMapping("delete")
	public String setDelete(InquiryVO inquiryVO) throws Exception {
		int result = inquiryService.setDelete(inquiryVO);
		return "redirect:./selectList";
	}
	
}
