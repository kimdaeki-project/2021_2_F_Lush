package com.iu.e1.event;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EventService {

   @Autowired
   private EventRepository eventRepository;

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

   public List<EventVO> getSelectEventList() throws Exception {
      List<EventVO> ar = eventRepository.getSelectEventList();

      return ar;
   }

   public List<EventVO> getSelectWinnerList() throws Exception {
      List<EventVO> ar = eventRepository.getSelectWinnerList();

      return ar;
   }
   
   public EventVO getSelectOne(EventVO eventVO) throws Exception {
      
      int result = eventRepository.setHitsUpdate(eventVO);
      
      return eventRepository.getSelectOne(eventVO);
      }
}