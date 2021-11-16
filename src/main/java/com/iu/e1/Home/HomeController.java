package com.iu.e1.Home;

import org.springframework.web.bind.annotation.GetMapping;

public class HomeController {
	
	@GetMapping("/")
	public String getIndex()throws Exception{
		
		return "index";
		
	}

}
