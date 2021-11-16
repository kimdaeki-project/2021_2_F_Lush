package com.iu.e1.campaign;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CampaignService {
	
	@Autowired
	private CampaignRepository campaignRepository;
	
	public int campaignInsert(CampaignVO campaignVO)throws Exception{
		return campaignRepository.campaignInsert(campaignVO);
	}

}
