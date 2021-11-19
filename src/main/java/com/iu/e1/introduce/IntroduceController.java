package com.iu.e1.introduce;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/introduce/**")
public class IntroduceController {

   @GetMapping("LushIntroduce")
   public String lushIntroduce() throws Exception {
      return "introduce/LushIntroduce";

   }
   
   @GetMapping("LushHistory")
   public String lushHistory() throws Exception {
      return "introduce/LushHistory";

   }
   
   @GetMapping("LushIdeology")
   public String lushIdeology() throws Exception {
      return "introduce/LushIdeology";

   }
   
   @GetMapping("LushCommunity")
   public String lushCommunity() throws Exception {
      return "introduce/Community";

   }
   
   @GetMapping("LushCorporategift")
   public String lushCorporategift() throws Exception {
      return "introduce/Corporategift";

   }
}