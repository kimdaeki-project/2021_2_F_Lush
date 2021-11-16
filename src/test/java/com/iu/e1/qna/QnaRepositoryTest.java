package com.iu.e1.qna;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class QnaRepositoryTest {

	@Autowired
	private QnaRepository qnaRepository;
	
	//@Test
	void setInsertTest() throws Exception {
		QnaVO qnaVO = new QnaVO();
		qnaVO.setTitle("Test Title");
		qnaVO.setCategory("Test Category");
		qnaVO.setContents("Test Contents");
		int result = qnaRepository.setInsert(qnaVO);
		
		assertEquals(1, result);
	}
	
	//@Test
	void getSelectListTest() throws Exception {
		List<QnaVO> ar = qnaRepository.getSelectList();
		assertNotEquals(0, ar.size());
	}
	
	//@Test
	void getSelectOneTest() throws Exception {
		QnaVO qnaVO = new QnaVO();
		qnaVO.setNum(2);
		qnaVO = qnaRepository.getSelectOne(qnaVO);
		assertNotNull(qnaVO);
	}
	
	//@Test
	void setUpdateTest() throws Exception {
		QnaVO qnaVO = new QnaVO();
		qnaVO.setTitle("update_test");
		qnaVO.setCategory("update_test");
		qnaVO.setContents("update_test");
		qnaVO.setNum(3);
		
		int result = qnaRepository.setUpdate(qnaVO);
		assertNotEquals(0, result);
	}

	@Test
	void setDeleteTest() throws Exception {
		QnaVO qnaVO = new QnaVO();
		qnaVO.setNum(3);
		int result = qnaRepository.setDelete(qnaVO);
		assertNotEquals(0, result);
	}
	
}
