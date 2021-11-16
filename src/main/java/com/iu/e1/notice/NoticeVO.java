package com.iu.e1.notice;

import java.sql.Date;

import lombok.Data;

@Data
public class NoticeVO {

	private Integer num;
	private String title;
	private String writer;
	private Date regDate;
	private String contents;
	private Integer hits;
}
