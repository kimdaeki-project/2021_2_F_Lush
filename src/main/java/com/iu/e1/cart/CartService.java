package com.iu.e1.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iu.e1.member.MemberVO;

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
   
   public List<CartVO> getSelect(MemberVO memberVO) throws Exception{
      return cartRepository.getSelect(memberVO);
   }
}