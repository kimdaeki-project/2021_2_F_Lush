package com.iu.e1.qna;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface QnaRepository {
	
	public int setInsert(QnaVO qnaVO) throws Exception;
	
	public List<QnaVO> getSelectList() throws Exception;
	
	public QnaVO getSelectOne(QnaVO qnaVO) throws Exception;
	
	public int setUpdate(QnaVO qnaVO) throws Exception;
	
	public int setDelete(QnaVO qnaVO) throws Exception;
	
}
