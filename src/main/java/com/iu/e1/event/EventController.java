package com.iu.e1.event;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/event/**")
public class EventController {

   @Autowired
   private EventService eventService;

   @GetMapping("Eventinsert")
   public String setInsertEvent() throws Exception {
      return "event/EventInsert";
   }

   @PostMapping("Eventinsert")
   public String setInsertEvent(EventVO eventVO) throws Exception {
      int result = eventService.setInsertEvent(eventVO);
      return "redirect:./EventList";
   }

   @GetMapping("Winnerinsert")
   public String setInsertWinner() throws Exception {
      return "winner/WinnerInsert";
   }

   @PostMapping("Winnerinsert")
   public String setInsertWinner(EventVO eventVO) throws Exception {
      int result = eventService.setInsertWinner(eventVO);
      return "redirect:./WinnerList";
   }

   @GetMapping("EventList")
   public ModelAndView getSelectEventList(ModelAndView mv) throws Exception {

      List<EventVO> ar = eventService.getSelectEventList();
      mv.setViewName("event/EventList");
      mv.addObject("eventList", ar);


      return mv;
   }

   @GetMapping("WinnerList")
   public ModelAndView getSelectWinnerList(ModelAndView mv) throws Exception {

      List<EventVO> ar = eventService.getSelectWinnerList();
      mv.setViewName("winner/WinnerList");
      mv.addObject("winnerList", ar);

      return mv;
   }

   @GetMapping("selectOne")
   public ModelAndView getSelectOne(EventVO eventVO) throws Exception {
      ModelAndView mv = new ModelAndView();
      eventVO = eventService.getSelectOne(eventVO);

      mv.setViewName("event/select");
      mv.addObject("eventVO", eventVO);

      return mv;
   }

   @GetMapping("delete")
   public String setDelete(EventVO eventVO) throws Exception {
      int result = eventService.setDelete(eventVO);
      return "redirect:./EventList";
   }
   
   @GetMapping("update")
   public String setUpdate(EventVO eventVO, Model model) throws Exception {
      eventVO = eventService.getSelectOne(eventVO);
      model.addAttribute("eventVO", eventVO);
      
      return "event/update";
   }
   
   @PostMapping("update")
   public String setUpdate(EventVO eventVO) throws Exception  {
      int result = eventService.setUpdate(eventVO);
      return "redirect:./EventList";
   }

}