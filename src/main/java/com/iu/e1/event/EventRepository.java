package com.iu.e1.event;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface EventRepository {

	public int setInsertEvent(EventVO eventVO) throws Exception;

	public int setInsertWinner(EventVO eventVO) throws Exception;

	public int setDelete(EventVO eventVO) throws Exception;

	public int setUpdate(EventVO eventVO) throws Exception;

	public List<EventVO> getSelectEventList() throws Exception;
	
	public List<EventVO> getSelectWinnerList() throws Exception;
	
	public EventVO getSelectOne(EventVO eventVO) throws Exception;
	
	public int setHitsUpdate(EventVO eventVO) throws Exception;

}
