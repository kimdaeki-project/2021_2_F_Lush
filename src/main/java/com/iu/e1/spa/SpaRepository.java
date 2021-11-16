package com.iu.e1.spa;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;


@Mapper
public interface SpaRepository {
   // Insert
   public int setInsert(SpaVO spaVO) throws Exception;
   
   // Delete
   public int setDelete(SpaVO spaVO) throws Exception;
   
   // Update
   public int setUpdate(SpaVO spaVO) throws Exception;
   
   // Select(글 1개 조회)
   public SpaVO getSelectOne(SpaVO spaVO) throws Exception;
   
   // Select(List 조회)
   public List<SpaVO> getSelectList() throws Exception;
   
}