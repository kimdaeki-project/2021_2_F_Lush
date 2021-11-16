package com.iu.e1.inquiry;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/inquiry/**")
public class InquiryController {
	
	@Autowired
	private InquiryService inquiryService;
	
	@GetMapping("selectList")
	public ModelAndView getSelectList(ModelAndView mv) throws Exception {
		List<InquiryVO> ar = inquiryService.getSelectList();
		
		mv.setViewName("inquiry/list");
		mv.addObject("inquiryList", ar);
		return mv;
		
	}
	
}
