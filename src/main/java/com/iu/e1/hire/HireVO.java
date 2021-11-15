package com.iu.e1.hire;

import java.sql.Date;

import lombok.Data;

@Data
public class HireVO {
	private Integer num;
	private String title;
	private String writer;
	private Date regDate;
	private String contents;
	private Integer hits;
}
