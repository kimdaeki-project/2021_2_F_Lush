package com.iu.e1.cart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartService {
	@Autowired
	private CartRepository cartRepository;
	
	public int getInsert(CartVO cartVO) throws Exception{
		return cartRepository.getInsert(cartVO);				
	}
	
	public int setDelete(CartVO cartVO) throws Exception{
		return cartRepository.setDelete(cartVO);
	}
	
	public CartVO getSelect(CartVO cartVO) throws Exception{
		return cartRepository.getSelete(cartVO);
	}
}
