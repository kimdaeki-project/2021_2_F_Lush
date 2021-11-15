package com.iu.e1.hire;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface HireRepository {
	// insert
	public int setInsert(HireVO hireVO) throws Exception;
	
	// delete
	public int setDelete(HireVO hireVO) throws Exception;
	
	// selectOne
	public HireVO getSelectOne(HireVO hireVO) throws Exception;
	
	// selectList
	public List<HireVO> getSelectList() throws Exception;
}
