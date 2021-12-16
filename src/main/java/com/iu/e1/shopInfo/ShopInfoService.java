package com.iu.e1.shopInfo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iu.e1.util.Pager2;

@Service
public class ShopInfoService {

	@Autowired
	private ShopInfoRepository shopInfoRepository;
	
	public List<ShopInfoVO> getInfoList(Pager2 pager2)throws Exception{
		pager2.makeRow();
		List<ShopInfoVO> ar = shopInfoRepository.getInfoList(pager2);
		
		pager2.makeNum(Long.valueOf(shopInfoRepository.getCount()));
		
		return ar;
	}

	public List<ShopInfoVO> shopInfoList(Pager2 pager2)throws Exception{
		pager2.makeRow();
		System.out.println("START LOW"+pager2.getStartRow());
		System.out.println("PER PAGE"+pager2.getPerPage());
		System.out.println("kind :"+pager2.getKind());
		System.out.println("search : "+pager2.getSearch());
		List<ShopInfoVO> ar = shopInfoRepository.shopInfoList(pager2);
		
		pager2.makeNum(Long.valueOf(shopInfoRepository.getCount()));
		
		return ar;
	}
	
	public ShopInfoVO shopInfoSelect(ShopInfoVO shopInfoVO)throws Exception{
		return shopInfoRepository.shopInfoSelect(shopInfoVO);
	}
	
}
