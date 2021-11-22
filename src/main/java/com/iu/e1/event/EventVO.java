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
   private String photo;
   private String text3;
   private String text4;
   private String evtSection1;
   private String evtSection2;
}