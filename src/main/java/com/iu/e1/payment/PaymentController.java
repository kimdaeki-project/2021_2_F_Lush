package com.iu.e1.payment;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.iu.e1.member.MemberVO;

@Controller
@RequestMapping("/payment/**")
public class PaymentController {

   @Autowired
   private PaymentService paymentService;

   @GetMapping("orderPage")
   public ModelAndView orderPage(HttpSession session) throws Exception {
      ModelAndView mv = new ModelAndView();
      MemberVO memberVO = (MemberVO) session.getAttribute("member"); // session의 memberVO를 가져오기
      mv.addObject("memberVO", memberVO);
      mv.setViewName("payment/orderPage");
      return mv;
   }
}