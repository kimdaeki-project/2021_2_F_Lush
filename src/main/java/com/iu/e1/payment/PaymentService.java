package com.iu.e1.payment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PaymentService {
   @Autowired
   private PaymentRepository paymentRepository;
   
   public int getInsert(PaymentVO paymentVO) throws Exception{
      return paymentRepository.getInsert(paymentVO);
   }
   
   public List<PaymentVO> getSelect(PaymentVO paymentVO) throws Exception{
      return paymentRepository.getSelect(paymentVO);
   }
}