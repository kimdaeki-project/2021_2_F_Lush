package com.iu.e1.certify;

import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CertifyController {

   @GetMapping("/test")
   public String test1() throws Exception {
      return "test/Test";
   }

   @PostMapping("message")
   public ModelAndView testMessage(String phonNumber) {
      Random rand = new Random();
      String numStr = "";
      for (int i = 0; i < 6; i++) {
         String ran = Integer.toString(rand.nextInt(10));
         numStr += ran;
      }
      
      CertifyService.certifiedPhoneNumber(phonNumber, numStr);

      ModelAndView mv = new ModelAndView();
      mv.addObject("numStr", numStr);
      mv.setViewName("test/Test2");
      //numStr이 인증번호 > 파라미터로 넘겨야댐 jsp로

      return mv;
   }
   
}