package com.iu.e1.cart;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.iu.e1.member.MemberVO;

@Mapper
public interface CartRepository {
   // 장바구니 담기
   public int getInsert(CartVO cartVO) throws Exception;
   
   // 담은 물건 삭제
   public int setDelete(CartVO cartVO) throws Exception;
   
   // 장바구니 정보 가져오기
   public List<CartVO> getSelect(MemberVO memberVO) throws Exception;
}