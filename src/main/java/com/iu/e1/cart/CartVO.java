package com.iu.e1.cart;

import lombok.Data;

@Data
public class CartVO {
   private Integer cart_num;
   private String member_id;
   private String ps_name;
   private Integer ps_price;
   private Integer ps_amount;
   private String ps_group;
   private String ps_photo;
}