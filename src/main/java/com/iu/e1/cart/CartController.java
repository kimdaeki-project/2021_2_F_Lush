package com.iu.e1.cart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cart/**")
public class CartController {
	@Autowired
	private CartService cartService;
	
	@GetMapping("cartPage")
	public String cartPage() throws Exception{
		return "cart/cartPage";
	}
}
