package com.iu.e1.shopInfo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/shopInfo/**")
public class ShopInfoController {

	@Autowired
	private ShopInfoService shopInfoService;
	
	@GetMapping("list")
	public ModelAndView shopInfoList()throws Exception{
		ModelAndView mv = new ModelAndView();
		List<ShopInfoVO> ar = shopInfoService.shopInfoList();
		mv.addObject("shopInfo", ar);
		mv.setViewName("shopInfo/list");
		return mv;
		
	}
	
	@GetMapping("select")
	public ModelAndView shopInfoSelect(ShopInfoVO shopInfoVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<ShopInfoVO> ar = shopInfoService.shopInfoList();
		shopInfoVO = shopInfoService.shopInfoSelect(shopInfoVO);
		mv.addObject("shopInfos", ar);
		mv.addObject("shopInfo", shopInfoVO);
		mv.setViewName("shopInfo/select");
		return mv;
	}
	
}
