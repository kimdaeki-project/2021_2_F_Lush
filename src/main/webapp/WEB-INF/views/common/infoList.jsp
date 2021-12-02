<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="item-display type-gallery shop_boad_list">
					<div class="list">
					<ul class="list-ul">
					<c:forEach items="${shopInfo}" var="shopInfo" varStatus="i">
					<li class="list-li">
						
						<div class="thumbnail">	
						<img src="${shopInfo.photo}" width="275" height="230" class="js-image-load">
						</div>
						<div class="txt"><a href="./select?num=${shopInfo.num}"><strong>${shopInfo.name}</strong></a></div>
						
						
					
					</li>
					</c:forEach>
					
					</ul>
					</div>
					</div>

<div class="paging-result"> 

   <!-- Paging -->
           <ul class="pagination">
             <li class="pn">
               <a href="./list?keyword=${pager2.kind}&search=${pager2.search}" aria-label="Previous">&laquo;</a>
             </li>
             
             <li data-pn-num="${pager2.startNum-1}" class="pn">
               <a href="#" aria-label="Previous">&lt; 이전</a>
             </li>
             
             <c:forEach begin="${pager2.startNum}" end="${pager2.endNum}" var="n">
               <li data-pn-num="${n}" class="pn">
                  <a href="#">
                     ${n}
                  </a>
               </li>
            </c:forEach>
            
            <li data-pn-num="${pager2.lastNum+1}" class="pn">
               <a href="#" aria-label="Next">다음 &gt;</a>
             </li>
             
             <li data-pn-num="${pager2.totalPage}" class="pn">
               <a href="#" aria-label="Next">&raquo;</a>
             </li>
           </ul>

</div>

<c:if test="${count eq 0}">
<div class="ct">
   검색 결과가 없습니다.
</div>
</c:if>