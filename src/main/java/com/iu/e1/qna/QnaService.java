package com.iu.e1.qna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QnaService {

	@Autowired
	private QnaRepository qnaRepository;
	
	public int setInsert(QnaVO qnaVO) throws Exception {
		return qnaRepository.setInsert(qnaVO);
	}
	
	public List<QnaVO> getSelectList() throws Exception {
		return qnaRepository.getSelectList();
	}
	
	public QnaVO getSelectOne(QnaVO qnaVO) throws Exception {
		return qnaRepository.getSelectOne(qnaVO);
	}
	
	public int setUpdate(QnaVO qnaVO) throws Exception {
		return qnaRepository.setUpdate(qnaVO);
	}
	
	public int setDelete(QnaVO qnaVO) throws Exception {
		return qnaRepository.setDelete(qnaVO);
	}
	
}
