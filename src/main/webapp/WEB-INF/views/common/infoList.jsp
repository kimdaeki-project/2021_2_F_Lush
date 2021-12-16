<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>




<c:forEach items="${shopInfo}" var="shopInfo" varStatus="i">
	<li class="list-li">

		<div class="thumbnail">
			<img src="${shopInfo.photo}" width="275" height="230"
				class="js-image-load">
		</div>
		<div class="txt">
			<a href="./select?num=${shopInfo.num}"><strong>${shopInfo.name}</strong></a>
		</div>

	</li>
</c:forEach>

<div class="paging-result">

	<!-- Paging -->
	<ul class="pagination pagination-sm">

		<c:forEach begin="${pager2.startNum}" end="${pager2.lastNum}" var="n">
			<li data-pn-num="${n}" class="pn"><a href="#"> ${n} </a></li>
		</c:forEach>

	</ul>

</div>

<c:if test="${count eq 0}">
	<div class="ct">검색 결과가 없습니다.</div>
</c:if>