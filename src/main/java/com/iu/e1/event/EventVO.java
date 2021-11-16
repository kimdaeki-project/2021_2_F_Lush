package com.iu.e1.event;


import java.sql.Date;

import lombok.Data;

@Data
public class EventVO {
   
   private Integer num;
   private String title;
   private String term;
   private String contents;
   private Integer hits;
   private int state;
   private Date regDate;

}