package com.iu.e1.hire;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.iu.e1.spa.SpaVO;

@Controller
@RequestMapping("/hire/**")
public class HireController {
	@Autowired
	private HireService hireService;

	@GetMapping("insert")
	public String setInsert(HireVO hireVO) throws Exception {
		return "hire/insert";
	}

	@PostMapping("insert")
	public String setInsert(HireVO hireVO, Model model) throws Exception {
		int result = hireService.setInsert(hireVO);
		return "redirect: ./list";
	}

	@GetMapping("delete")
	public String setDelete(HireVO hireVO) throws Exception {
		int result = hireService.setDelete(hireVO);
		return "redirect: ./list";
	}

	// update
	@GetMapping("update")
	public String setUpdate(HireVO hireVO, Model model) throws Exception {
		hireVO = hireService.getSelectOne(hireVO);
		model.addAttribute("hireVO", hireVO);
		return "hire/update";
	}

	@PostMapping("update")
	public String setUpdate(HireVO hireVO) throws Exception {
		int result = hireService.setUpdate(hireVO);
		return "redirect: ./list";
	}

	@GetMapping("selectOne")
	public ModelAndView getSelectOne(HireVO hireVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		hireVO = hireService.getSelectOne(hireVO);
		mv.setViewName("hire/selectOne");
		mv.addObject("hireVO", hireVO);
		System.out.println(hireVO.getNum());
		return mv;
	}

	@GetMapping("list")
	public ModelAndView getSelectList(ModelAndView mv) throws Exception {
		List<HireVO> ar = hireService.getSelectList();
		mv.setViewName("hire/list");
		mv.addObject("hireList", ar);
		return mv;
	}
}
