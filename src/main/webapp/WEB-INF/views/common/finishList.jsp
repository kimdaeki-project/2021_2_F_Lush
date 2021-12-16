<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form action="./finishList" id="frm">
<c:forEach items="${finishList}" var="eventVO" varStatus="i">
				         	<c:choose>
				         			<c:when test="${i.count%3 eq 0}">
				         		  <li class="list-item fhtt se">
						        
						             <span class="thumb"><img src="${eventVO.photo}" class="js-image-load fh"></span>	
						            	<div class="list-item-info">
						            		<p class="text2 fht"><a class="list_info_t fht" href="./selectOne?num=${eventVO.num}">${eventVO.title}</a></p>
						            		<p class="text3 fht">${eventVO.text3}</p>
						            		<p class="text4 fht">${eventVO.text4}</p>
						             </div>
						            </li>
				         	</c:when>
				         	<c:otherwise>
				         		<li class="list-item fhtt">
						        
						             <span class="thumb"><img src="${eventVO.photo}" class="js-image-load fh"></span>	
						            	<div class="list-item-info">
						            		<p class="text2 fht"><a class="list_info_t fht" href="./selectOne?num=${eventVO.num}">${eventVO.title}</a></p>
						            		<p class="text3 fht">${eventVO.text3}</p>
						            		<p class="text4 fht">${eventVO.text4}</p>
						             </div>
						            </li>
				         	</c:otherwise>
				         	
				         	</c:choose>
				         	
						       
				    			 </c:forEach>

<div class="paging-result">

	<!-- Paging -->
	<ul class="pagination pagination-sm">

		<c:forEach begin="${pager2.startNum}" end="${pager2.lastNum}" var="n">
			<li data-pn-num="${n}" class="pn"><a href="#"> ${n} </a></li>
		</c:forEach>

	</ul>

</div>
</form>