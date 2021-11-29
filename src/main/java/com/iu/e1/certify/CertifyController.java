package com.iu.e1.certify;

import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/certify/**")
public class CertifyController {

   @GetMapping("pnCheck")
   public String pnCheck() throws Exception {
      return "certify/pnCheck";
   }

   @PostMapping("pnCheck2")
   public ModelAndView pnCheckMessage(String phonNumber) {
      Random rand = new Random();
      String numStr = "";
      for (int i = 0; i < 6; i++) {
         String ran = Integer.toString(rand.nextInt(10));
         numStr += ran;
      }
      
      CertifyService.certifiedPhoneNumber(phonNumber, numStr);

      ModelAndView mv = new ModelAndView();
      mv.addObject("numStr", numStr);
      mv.setViewName("certify/pnCheck2");
      //numStr이 인증번호 > 파라미터로 넘겨야댐 jsp로

      return mv;
   }
   
   @GetMapping("pwCheck")
   public String pwCheck() throws Exception {
      return "certify/pwCheck";
   }

   @PostMapping("pwCheck2")
   public ModelAndView pwCheckMessage(String phonNumber, String pw) {
      Random rand = new Random();
      String numStr = "";
      for (int i = 0; i < 6; i++) {
         String ran = Integer.toString(rand.nextInt(10));
         numStr += ran;
      }
      
      CertifyService.certifiedPhoneNumber(phonNumber, numStr);
      System.out.println(pw);
      System.out.println(numStr);
      ModelAndView mv = new ModelAndView();
      mv.addObject("numStr", numStr);
      mv.addObject("pwCheck", pw);
      mv.setViewName("certify/pwCheck2");
      //numStr이 인증번호 > 파라미터로 넘겨야댐 jsp로

      return mv;
   }
   
}