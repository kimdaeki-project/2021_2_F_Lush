package com.iu.e1.campaign;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CampaignRepository {
	
	public int campaignInsert(CampaignVO campaignVO)throws Exception;
}
