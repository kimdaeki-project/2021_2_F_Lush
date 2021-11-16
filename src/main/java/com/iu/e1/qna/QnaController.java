package com.iu.e1.qna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/qna/**")
public class QnaController {

	@Autowired
	private QnaService qnaService;
	
	@GetMapping("insert")
	public String setInsert() throws Exception {
		return "qna/insert";
	}
	
	@PostMapping("insert")
	public String setInsert(QnaVO qnaVO) throws Exception {
		
		int result = qnaService.setInsert(qnaVO);
		
		return "redirect:./selectList";
	}
	
	@GetMapping("selectList")
	public ModelAndView getSelectList(ModelAndView mv) throws Exception {
		List<QnaVO> ar = qnaService.getSelectList();
		
		mv.setViewName("qna/list");
		mv.addObject("qnaList", ar);
		return mv;
	}
	
	@GetMapping("selectOne")
	public ModelAndView getSelectOne(QnaVO qnaVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		qnaVO = qnaService.getSelectOne(qnaVO);
		mv.setViewName("qna/select");
		mv.addObject("qnaVO", qnaVO);
		
		return mv;
	}
	
	@GetMapping("update")
	public String setUpdate(QnaVO qnaVO, Model model) throws Exception {
		qnaVO = qnaService.getSelectOne(qnaVO);
		model.addAttribute("qnaVO", qnaVO);
		
		return "qna/update";
	}
	
	@PostMapping("update")
	public String setUpdate(QnaVO qnaVO) throws Exception {
		int result = qnaService.setUpdate(qnaVO);
		return "redirect:./selectOne?num="+qnaVO.getNum();
	}
	
}
