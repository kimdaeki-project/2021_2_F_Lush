package com.iu.e1.inquiry;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class InquiryRepositoryTest {

	@Autowired
	private InquiryRepository inquiryRepository;
	
	//@Test
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
	
	//@Test
	void getSelectListTest() throws Exception {
		List<InquiryVO> ar = inquiryRepository.getSelectList();
		assertNotEquals(0, ar.size());
	}
	
	//@Test
	void getSelectOneTest() throws Exception {
		InquiryVO inquiryVO = new InquiryVO();
		inquiryVO.setNum(2);
		inquiryVO = inquiryRepository.getSelectOne(inquiryVO);
		assertNotNull(inquiryVO);
	}
	
	//@Test
	void setUpdateTest() throws Exception {
		InquiryVO inquiryVO = new InquiryVO();
		inquiryVO.setTitle("test222");
		inquiryVO.setCategory("test222");
		inquiryVO.setWriter("test222");
		inquiryVO.setContents("test222");
		inquiryVO.setStatus(0);
		inquiryVO.setNum(1);
		
		int result = inquiryRepository.setUpdate(inquiryVO);
		assertNotEquals(0, result);
	}
	
	@Test
	void setDeleteTest() throws Exception {
		InquiryVO inquiryVO = new InquiryVO();
		inquiryVO.setNum(1);
		int result = inquiryRepository.setDelete(inquiryVO);
		assertNotEquals(0, result);
	}

}
