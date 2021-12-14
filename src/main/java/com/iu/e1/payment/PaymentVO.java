package com.iu.e1.payment;

import lombok.Data;

@Data
public class PaymentVO {
	private Integer payment_num;
	private String user_id;
	private String payment_name;
	private Integer payment_price;
	private Integer payment_amount;
	private String payment_group; 
}
