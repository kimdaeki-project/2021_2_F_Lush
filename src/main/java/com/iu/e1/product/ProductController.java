package com.iu.e1.product;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.iu.e1.member.MemberVO;
import com.iu.e1.notice.NoticeService;
import com.iu.e1.util.Pager;

@Controller
@RequestMapping("/product/**")
public class ProductController {

	@Autowired
	private ProductService productService;

	@GetMapping("cordList")
	public ModelAndView productCordList(ProductVO productVO) throws Exception {
		ModelAndView mv = new ModelAndView();

		List<ProductVO> ar = productService.productCordList(productVO);

		mv.setViewName("common/cordList");
		mv.addObject("cordList", ar);

		return mv;
	}

	@GetMapping("list")
	public ModelAndView productList(ModelAndView mv) throws Exception {

		mv = new ModelAndView();

		List<ProductVO> ar = productService.productList();

		mv.addObject("productList", ar);

		mv.setViewName("product/list");

		return mv;

	}

	@GetMapping("productList")
	public ModelAndView productList() throws Exception {

		ModelAndView mv = new ModelAndView();

		List<ProductVO> ar = productService.productList();

		mv.addObject("productList", ar);

		mv.setViewName("common/productList");

		return mv;

	}

	@GetMapping("select")
	public ModelAndView productSelect(ProductVO productVO, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
	    System.out.println();
		productVO = productService.productSelect(productVO);

		mv.setViewName("product/select");
		mv.addObject("product", productVO);
		mv.addObject("memberVO",memberVO);

		return mv;
	}

	@GetMapping("insert")
	public String productInsert(ProductVO productVO) throws Exception {
		return "product/insert";
	}

	@PostMapping("insert")
	public ModelAndView productInsert(ProductVO productVO, ModelAndView mv) throws Exception {
		int result = productService.productInsert(productVO);
		mv.setViewName("redirect:../product/productList");
		return mv;

	}

	@GetMapping("delete")
	public ModelAndView productDelete(ProductVO productVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = productService.productDelete(productVO);
		mv.setViewName("redirect:../product/productList");
		return mv;

	}

	@GetMapping("update")
	public String productUpdate(ProductVO productVO, Model model) throws Exception {
		productVO = productService.productSelect(productVO);
		model.addAttribute("product", productVO);
		return "product/update";
	}

	@PostMapping("update")
	public String productUpdate(ProductVO productVO) throws Exception {
		int result = productService.productUpdate(productVO);
		return "redirect:./productList";

	}

}
