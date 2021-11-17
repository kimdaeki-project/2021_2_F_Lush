package com.iu.e1.inquiry;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface InquiryRepository {
	
	public int setInsert(InquiryVO inquiryVO) throws Exception;
	
	public List<InquiryVO> getSelectList() throws Exception;
	
	public InquiryVO getSelectOne(InquiryVO inquiryVO) throws Exception;
	
	public int setUpdate(InquiryVO inquiryVO) throws Exception;
	
	public int setDelete(InquiryVO inquiryVO) throws Exception;
}
