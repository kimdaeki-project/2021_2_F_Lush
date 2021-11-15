package com.iu.e1.hire;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/hire/**")
public class HireController {
	@Autowired
	private HireRepository hireRepository;
	
	@GetMapping("insert")
	public String setInsert(HireVO hireVO) throws Exception{
		return "hire/insert";
	}
	
	@PostMapping("insert")
	public String setInsert(HireVO hireVO, Model model) throws Exception{
		int result = hireRepository.setInsert(hireVO);
		return "redirect: ./list";
	}
	
	@GetMapping("delete")
	public String setDelete(HireVO hireVO) throws Exception{
		int result = hireRepository.setDelete(hireVO);
		return "redirect: ./list";				
	}
	
	@GetMapping("selectOne")
	public ModelAndView getSelectOne(HireVO hireVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		hireVO = hireRepository.getSelectOne(hireVO);
		mv.setViewName("hire/selectOne");
		mv.addObject("hireVO", hireVO);
		System.out.println(hireVO.getNum());
		return mv;
	}
	
	@GetMapping("list")
	public ModelAndView getSelectList(ModelAndView mv) throws Exception{
		List<HireVO> ar = hireRepository.getSelectList();
		mv.setViewName("hire/list");
		mv.addObject("hireList", ar);		
		return mv;
	}
}
