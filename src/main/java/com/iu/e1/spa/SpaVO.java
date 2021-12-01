package com.iu.e1.spa;

import java.sql.Date;

import lombok.Data;

@Data
public class SpaVO {
	private Integer num;
	private String name;
	private String name_eng;
	private String price;
	private Integer amount;
	private String voucherNumber;
	private Date bookingDate;
	private String photo;
	private String hashtag;
	private String details;
	private String review;
	private String guide;
}