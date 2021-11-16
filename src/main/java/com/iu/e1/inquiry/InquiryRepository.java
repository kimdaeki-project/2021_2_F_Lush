package com.iu.e1.inquiry;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface InquiryRepository {
	
	public int setInsert(InquiryVO inquiryVO) throws Exception;
	
	public List<InquiryVO> getSelectList() throws Exception;
	
}
