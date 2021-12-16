package com.iu.e1.event;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iu.e1.util.Pager2;

@Service
public class EventService {

   @Autowired
   private EventRepository eventRepository;
   
   public List<EventVO> getSelectFinishList(Pager2 pager2)throws Exception{
	   pager2.makeRow();
	   List<EventVO> ar = eventRepository.getSelectFinishList(pager2);
	   pager2.makeNum(Long.valueOf(eventRepository.getfinishListCount()));
	   return ar;
   }
   
   public List<EventVO> setSelectFinishList(Pager2 pager2)throws Exception{
	   pager2.makeRow();
	   List<EventVO> ar = eventRepository.getSelectFinishList(pager2);
	   System.out.println(pager2.getKind());
	   System.out.println(pager2.getSearch());
	   System.out.println(ar.size());
	   pager2.makeNum(Long.valueOf(eventRepository.getfinishListCount()));
	   return ar;
   }


   public int setInsertEvent(EventVO eventVO) throws Exception {
      int result = eventRepository.setInsertEvent(eventVO);

      return result;
   }

   public int setInsertWinner(EventVO eventVO) throws Exception {
      int result = eventRepository.setInsertWinner(eventVO);

      return result;
   }

   public int setDelete(EventVO eventVO) throws Exception {
      return eventRepository.setDelete(eventVO);
   }

   public int setUpdate(EventVO eventVO) throws Exception {
      return eventRepository.setUpdate(eventVO);
   }

   public List<EventVO> getSelectEventList(Pager2 pager2) throws Exception {
	  pager2.makeRow();
      List<EventVO> ar = eventRepository.getSelectEventList(pager2);
      pager2.makeNum(Long.valueOf(eventRepository.geteventListCount()));

      return ar;
   }
   
   public List<EventVO> setSelectEventList(Pager2 pager2) throws Exception {
		  pager2.makeRow();
	      List<EventVO> ar = eventRepository.getSelectEventList(pager2);
	      pager2.makeNum(Long.valueOf(eventRepository.geteventListCount()));

	      return ar;
	   }

   public List<EventVO> getSelectWinnerList(Pager2 pager2) throws Exception {
	  pager2.makeRow();
	  List<EventVO> ar = eventRepository.getSelectWinnerList(pager2);
      pager2.makeNum(Long.valueOf(eventRepository.getCountWinnerList()));
     
      return ar;
   }
   
   public List<EventVO> setSelectWinnerList(Pager2 pager2) throws Exception {
		  pager2.makeRow();
		  List<EventVO> ar = eventRepository.setSelectWinnerList(pager2);  
	      pager2.makeNum(Long.valueOf(eventRepository.getCountWinnerList()));
	     
	      return ar;
	   }
   
   public EventVO getSelectOne(EventVO eventVO) throws Exception {
      
      int result = eventRepository.setHitsUpdate(eventVO);
      
      return eventRepository.getSelectOne(eventVO);
      }
   
   public int getCountWinnerList()throws Exception{
	   
	   int result = eventRepository.getCountWinnerList();
	   return result;
   }
}