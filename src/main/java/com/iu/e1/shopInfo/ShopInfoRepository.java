package com.iu.e1.shopInfo;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.iu.e1.util.Pager2;

@Mapper
public interface ShopInfoRepository {
	
	public List<ShopInfoVO> shopInfoList(Pager2 pager2)throws Exception;
	
	public ShopInfoVO shopInfoSelect(ShopInfoVO shopInfoVO)throws Exception;
	
	public List<ShopInfoVO> getInfoList(Pager2 pager2)throws Exception;
	
	public Integer getCount()throws Exception;

}
