package com.iu.e1.inquiry;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class InquiryService {

	@Autowired
	private InquiryRepository inquiryRepository;
	
	public int setInsert(InquiryVO inquiryVO) throws Exception {
		return inquiryRepository.setInsert(inquiryVO);
	}
	
	public List<InquiryVO> getSelectList() throws Exception {
		return inquiryRepository.getSelectList();
	}
	
	public InquiryVO getSelectOne(InquiryVO inquiryVO) throws Exception {
		return inquiryRepository.getSelectOne(inquiryVO);
	}
	
	public int setUpdate(InquiryVO inquiryVO) throws Exception {
		return inquiryRepository.setUpdate(inquiryVO);
	}
	
	public int setDelete(InquiryVO inquiryVO) throws Exception {
		return inquiryRepository.setDelete(inquiryVO);
	}
	
}
