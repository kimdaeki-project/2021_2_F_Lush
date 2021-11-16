package com.iu.e1.inquiry;

import java.sql.Date;

import lombok.Data;

@Data
public class InquiryVO {

	private Integer num;
	private String title;
	private String category;
	private String writer;
	private String contents;
	private Date regDate;
	private Integer status;
	
}
