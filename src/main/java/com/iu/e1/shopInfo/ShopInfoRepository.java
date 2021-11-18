package com.iu.e1.shopInfo;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ShopInfoRepository {
	
	public List<ShopInfoVO> shopInfoList()throws Exception;
	
	public ShopInfoVO shopInfoSelect(ShopInfoVO shopInfoVO)throws Exception;

}
