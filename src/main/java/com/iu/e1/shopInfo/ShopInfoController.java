package com.iu.e1.shopInfo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.iu.e1.util.Pager2;

@Controller
@RequestMapping("/shopInfo/**")
public class ShopInfoController {

	@Autowired
	private ShopInfoService shopInfoService;
	
	@GetMapping("infoList")
	public ModelAndView getInfoList(Pager2 pager2)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<ShopInfoVO> ar = shopInfoService.shopInfoList(pager2);
		mv.addObject("pager2", pager2);
		mv.addObject("shopInfo", ar);
		mv.setViewName("common/infoList");
		return mv;
		
	}
	
	
	@GetMapping("list")
	public ModelAndView shopInfoList(Pager2 pager2)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<ShopInfoVO> ar = shopInfoService.shopInfoList(pager2);
		mv.addObject("pager2", pager2);
		mv.addObject("shopInfo", ar);
		mv.setViewName("shopInfo/list");
		return mv;
		
	}
	
	@GetMapping("select")
	public ModelAndView shopInfoSelect(ShopInfoVO shopInfoVO, Pager2 pager2)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<ShopInfoVO> ar = shopInfoService.shopInfoList(pager2);
		shopInfoVO = shopInfoService.shopInfoSelect(shopInfoVO);
		mv.addObject("shopInfos", ar);
		mv.addObject("shopInfo", shopInfoVO);
		mv.setViewName("shopInfo/select");
		return mv;
	}
	
}
