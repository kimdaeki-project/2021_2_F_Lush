package com.iu.e1.campaign;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/campaign/**")
public class CampaignController {
	
	@Autowired
	private CampaignService campaignService;
	
	@GetMapping("insert")
	public String campaignInsert(CampaignVO campaignVO)throws Exception{
		return "campaign/insert";
	}
	
	@PostMapping("insert")
	public ModelAndView campaignInsert(CampaignVO campaignVO, ModelAndView mv)throws Exception{
		mv = new ModelAndView();
		int result = campaignService.campaignInsert(campaignVO);
		mv.setViewName("redirect:../");
		
		return mv;
		
	}
	
	
	

}
