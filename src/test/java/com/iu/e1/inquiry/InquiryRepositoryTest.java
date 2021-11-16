package com.iu.e1.inquiry;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class InquiryRepositoryTest {

	@Autowired
	private InquiryRepository inquiryRepository;
	
	@Test
	void setInsertTest() throws Exception {
		InquiryVO inquiryVO = new InquiryVO();
		inquiryVO.setTitle("test2");
		inquiryVO.setCategory("test2");
		inquiryVO.setWriter("test2");
		inquiryVO.setContents("test2");
		inquiryVO.setStatus(1);
		
		int result = inquiryRepository.setInsert(inquiryVO);
		
		assertEquals(1, result);
	}

}
