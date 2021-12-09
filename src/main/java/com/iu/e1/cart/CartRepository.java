package com.iu.e1.cart;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CartRepository {
	// 장바구니 담기
	public int getInsert(CartVO cartVO) throws Exception;
	
	// 담은 물건 삭제
	public int setDelete(CartVO cartVO) throws Exception;
	
	// 장바구니 정보 가져오기
	public CartVO getSelete(CartVO cartVO) throws Exception;
}
