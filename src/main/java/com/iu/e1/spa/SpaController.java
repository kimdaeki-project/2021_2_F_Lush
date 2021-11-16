package com.iu.e1.spa;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/spa/**")
public class SpaController {
   
   @Autowired
   private SpaService spaService;
   
   // insert
   @GetMapping("insert")
   public String setInsert(SpaVO spaVO) throws Exception{
      return "spa/insert";
   }
   
   // insert
   @PostMapping("insert")
   public String setInsert(SpaVO spaVO, Model model) throws Exception{
      int result = spaService.setInsert(spaVO);
      return "redirect:./list";
   }
   
   // Delete
   @GetMapping("delete")
   public String setDelete(SpaVO spaVO) throws Exception{
      int result = spaService.setDelete(spaVO);
      return "redirect:./list";
   }
   
   //update
   @GetMapping("update")
   public String setUpdate(SpaVO spaVO, Model model) throws Exception{
      spaVO = spaService.getSelectOne(spaVO);
      model.addAttribute("spaVO", spaVO);
      return "spa/update";
   }
   
   @PostMapping("update")
   public String setUpdate(SpaVO spaVO) throws Exception{
      int result = spaService.setUpdate(spaVO);
      return "redirect:./list";
   }
   
   // selectOne
   @GetMapping("selectOne")
   public ModelAndView getSelectOne(SpaVO spaVO) throws Exception{
      ModelAndView mv = new ModelAndView();
      spaVO = spaService.getSelectOne(spaVO);
      mv.setViewName("spa/selectOne");
      mv.addObject("spaVO", spaVO);
      return mv;
   }
   
   // selectList
   @GetMapping("list")
   public ModelAndView getSelectList(ModelAndView mv) throws Exception{
      List<SpaVO> ar = spaService.getSelectList();
      mv.setViewName("spa/list");
      mv.addObject("spaList", ar);
      return mv;
   }
}