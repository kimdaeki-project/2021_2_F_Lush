package com.iu.e1.hire;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HireService {
   @Autowired
   private HireRepository hireRepository;
   
   public int setInsert(HireVO hireVO) throws Exception{
      return hireRepository.setInsert(hireVO);
   }
   
   public int setDelete(HireVO hireVO) throws Exception{
      return hireRepository.setDelete(hireVO);
   }
   
   public int setUpdate(HireVO hireVO) throws Exception{
      return hireRepository.setUpdate(hireVO);
   }
   
   public HireVO getSelectOne(HireVO hireVO) throws Exception{
      return hireRepository.getSelectOne(hireVO);
   }
   
   public List<HireVO> getSelectList() throws Exception{
      return hireRepository.getSelectList();
   }
}
