package com.iu.e1.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.iu.e1.notice.NoticeService;

@Controller
@RequestMapping("/product/**")
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@GetMapping("productList")
	public ModelAndView productList()throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		List<ProductVO> ar = productService.productList();
		
		mv.setViewName("product/list");
		mv.addObject("productList", ar);
		
		return mv;	
		
	}
	
	@GetMapping("select")
	public ModelAndView productSelect(ProductVO productVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		productVO = productService.productSelect(productVO);
		
		mv.setViewName("product/select");
		mv.addObject("product", productVO);
		
		return mv;
	}
	
	@GetMapping("insert")
	public String productInsert(ProductVO productVO)throws Exception{
		return "product/insert";
	}
	
	@PostMapping("insert")
	public ModelAndView productInsert(ProductVO productVO,ModelAndView mv)throws Exception{
		int result = productService.productInsert(productVO);
		mv.setViewName("redirect:../product/productList");
		return mv;
		
		
	}
	
	@GetMapping("delete")
	public ModelAndView productDelete(ProductVO productVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = productService.productDelete(productVO);
		mv.setViewName("redirect:../product/productList");
		return mv;
		
	}
	
	@GetMapping("update")
	public String productUpdate(ProductVO productVO, Model model)throws Exception{
		productVO = productService.productSelect(productVO);
		model.addAttribute("product", productVO);
		return "product/update";
	}
	
	@PostMapping("update")
	public String productUpdate(ProductVO productVO)throws Exception{
		int result = productService.productUpdate(productVO);
		return "redirect:./productList";
		
	}

}
