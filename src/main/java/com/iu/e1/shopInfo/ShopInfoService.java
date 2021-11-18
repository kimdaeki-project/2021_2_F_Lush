package com.iu.e1.shopInfo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ShopInfoService {

	@Autowired
	private ShopInfoRepository shopInfoRepository;

	public List<ShopInfoVO> shopInfoList()throws Exception{
		return shopInfoRepository.shopInfoList();
	}
	
	public ShopInfoVO shopInfoSelect(ShopInfoVO shopInfoVO)throws Exception{
		return shopInfoRepository.shopInfoSelect(shopInfoVO);
	}
	
}
