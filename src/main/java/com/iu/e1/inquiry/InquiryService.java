package com.iu.e1.inquiry;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class InquiryService {

	@Autowired
	private InquiryRepository inquiryRepository;
	
	public List<InquiryVO> getSelectList() throws Exception {
		return inquiryRepository.getSelectList();
	}
	
}
