package com.iu.e1.payment;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PaymentRepository {
   // 결제 제품 insert
   public int getInsert(PaymentVO paymentVO) throws Exception;
   
   // 결제 상품 가져오기
   public List<PaymentVO> getSelect(PaymentVO paymentVO) throws Exception;
}