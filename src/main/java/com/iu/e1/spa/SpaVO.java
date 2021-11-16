package com.iu.e1.spa;

import java.sql.Date;

import lombok.Data;

@Data
public class SpaVO {
   private String name;
   private String price;
   private Integer amount;
   private String voucherNumber;
   private Date bookingDate;
}