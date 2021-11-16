package com.iu.e1.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoticeService {

	@Autowired
	private NoticeRepository noticeRepository;
	
	public List<NoticeVO> noticeList()throws Exception{
		return noticeRepository.noticeList();
	}
	
	public NoticeVO noticeSelect(NoticeVO noticeVO)throws Exception{
		return noticeRepository.noticeSelect(noticeVO);
	}
	
	public int noticeInsert(NoticeVO noticeVO)throws Exception{
		return noticeRepository.noticeInsert(noticeVO);
	}
	
	public int noticeDelete(NoticeVO noticeVO)throws Exception{
		return noticeRepository.noticeDelete(noticeVO);
	}
	
	public int noticeUpdate(NoticeVO noticeVO)throws Exception{
		return noticeRepository.noticeUpdate(noticeVO);
	}
}
