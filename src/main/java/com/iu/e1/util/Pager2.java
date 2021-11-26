package com.iu.e1.util;

import lombok.Data;

@Data
public class Pager2 {
	private String kind;
	private String search;
	
	private Integer perPage; //한 페이지당 몇개 출력?
	private Integer pn; //현재 페이지 번호
	private Integer startRow; //시작 번호
	
	private Long startNum;
	private Long lastNum;
	
	private boolean lastCheck;    //true면 마지막 블럭, false면 마지막 블럭X
	
	   public void makeRow() {
	      this.startRow = (this.getPn()-1)*this.getPerPage();
	   }
	   
	   public void makeNum(Long totalCount) {//110
		   //2. 전체페이지 갯수 구하기
		   Long totalPage = totalCount/this.getPerPage();//10
		   if(totalCount%this.getPerPage() !=0) {
			   totalPage++;//11
		   }
		   
		   //3. 총 블럭의 갯수 구하기
		   Long perBlock=10L;
		   Long totalBlock = totalPage/perBlock;//2
		   if(totalPage%perBlock !=0) {
			   totalBlock++;//3
		   }
		   
		   //4. pn로 현재 블럭 번호 구하기
		   // pn = 1      curBlock=1
		   // ...
		   // pn = 5      curBlock=1
		   // pn = 6      curBlock=2
		   // ...
		   // pn = 10     curBlock=2
		   Long curBlock = this.getPn()/perBlock;
		   if(this.getPn()%perBlock !=0) {
			   curBlock++;
		   }
		   
		   //5. curBlock으로 시작번호와 끝번호 구하기
		   
		   startNum = (curBlock-1)*10+1;
		   lastNum = curBlock*10;
		   
		   System.out.println("시작 번호 :"+startNum);
		   System.out.println("끝 번호 :"+lastNum);
		   
		   if(curBlock==totalBlock) {
			   lastCheck = true;		   
			   lastNum= totalPage;
		   }
		   
	   }
	   
	   // pn이 null이거나 1미만일 경우를 대비해 두 경우 모두 1로 return 받기
	   public Integer getPn() {
	      if(this.pn == null || this.pn < 1) {
	         this.pn = 1;         
	      }
	      return pn;
	   }
	   
	   // perPage가 null이거나 1미만일 경우를 대비해 두 경우 모두 10으로 return 받기
	   public Integer getPerPage() {
	      if(this.perPage == null || this.perPage < 1) {
	         this.perPage = 10;         
	      }
	      return perPage;
	   }
	   
	   public String getSearch() {
	      if(this.search == null) {
	         this.search = "";
	      }
	      return this.search;
	   }
   
  
   
}