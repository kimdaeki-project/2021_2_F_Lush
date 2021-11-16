package com.iu.e1.spa;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SpaService {
	
	@Autowired
	private SpaRepository spaRepository;
	
	public int setInsert(SpaVO spaVO) throws Exception{
		return spaRepository.setInsert(spaVO);
	}
	
	public int setDelete(SpaVO spaVO) throws Exception{
		return spaRepository.setDelete(spaVO);
	}
	
	public int setUpdate(SpaVO spaVO) throws Exception{
		return spaRepository.setUpdate(spaVO);
	}
	
	
	public SpaVO getSelectOne(SpaVO spaVO) throws Exception{
		return spaRepository.getSelectOne(spaVO);
	}
	
	public List<SpaVO> getSelectList() throws Exception{
		return spaRepository.getSelectList();
	}
}
