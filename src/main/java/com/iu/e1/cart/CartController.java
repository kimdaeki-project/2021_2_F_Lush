package com.iu.e1.cart;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.iu.e1.member.MemberVO;

@Controller
@RequestMapping("/cart/**")
public class CartController {
   @Autowired
   private CartService cartService;
   
   @GetMapping("pay")
   public String pay() throws Exception{
      return "./cart/pay";
   }

   @GetMapping("cartInsert")
   public ModelAndView getInsert(CartVO cartVO, HttpSession session) throws Exception{
	   ModelAndView mv= new ModelAndView();
	      
	   MemberVO memberVO = (MemberVO)session.getAttribute("member");
	   cartVO.setMember_id(memberVO.getId());
	   System.out.println(cartVO);
	   int result = cartService.getInsert(cartVO);
	      
	   mv.setViewName("redirect:../cart/cartPage");
	   return mv;
   }
   
   
   @GetMapping("cartPage")
   public ModelAndView getSelect(CartVO cartVO, HttpSession session) throws Exception {
      MemberVO memberVO = (MemberVO) session.getAttribute("member"); // session의 memberVO를 가져오기      
      System.out.println(memberVO.getId()+"1");      
      
      List<CartVO> ar = cartService.getSelect(memberVO);
      List<CartVO> ar1 = new ArrayList<CartVO>(); // product
      List<CartVO> ar2 = new ArrayList<CartVO>(); // spa
      
      ModelAndView mv = new ModelAndView();
      int pprice = 0;
      int pamount = 0;
      
      int sprice = 0;
      int samount = 0;
      
      for (int i = 0; i < ar.size(); i++) {
         if (ar.get(i).getPs_group() != null) {
            ar1.add(ar.get(i));
            System.out.println(ar.get(i).getPs_price());
            pprice = pprice + ar.get(i).getPs_price();
            pamount = pamount + ar.get(i).getPs_amount();
            System.out.println("p 성공");
            mv.addObject("memberVO", memberVO);
         } else {
            ar2.add(ar.get(i));
            sprice = sprice + ar.get(i).getPs_price();
            samount = samount + ar.get(i).getPs_amount();
            System.out.println("s 성공");
            mv.addObject("memberVO", memberVO);
         }
      }
      
      System.out.println(pprice);
      System.out.println(pamount);
      
      System.out.println(sprice);
      System.out.println(samount);
      
      mv.addObject("pamount", pamount);
      mv.addObject("pprice", pprice);
      
      mv.addObject("samount", samount);
      mv.addObject("sprice", sprice);
      
      mv.addObject("product", ar1);
      mv.addObject("spa", ar2);
      mv.setViewName("./cart/cartPage");
      return mv;
   }
   
   @GetMapping("cartDelete")
   public String setDelete(CartVO cartVO) throws Exception{
      int result = cartService.setDelete(cartVO);
      return "redirect:./cartPage";
   }
      
}