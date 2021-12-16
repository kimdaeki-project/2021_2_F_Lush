<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach items="${eventList}" var="eventVO" varStatus="i">
	<c:choose>
		<c:when test="${i.count eq 3}">

			<li class="list-item se"><span class="thumb"><img
					src="${eventVO.photo}" class="js-image-load"></span>
				<div class="list-item-info">
					<p class="text2">
						<a class="list_info_t" href="./selectOne?num=${eventVO.num}">${eventVO.title}</a>
					</p>
					<p class="text3">${eventVO.text3}</p>
					<p class="text4">${eventVO.text4}</p>
				</div></li>
		</c:when>
		<c:otherwise>
			<li class="list-item"><span class="thumb"><img
					src="${eventVO.photo}" class="js-image-load"></span>
				<div class="list-item-info">
					<p class="text2">
						<a class="list_info_t" href="./selectOne?num=${eventVO.num}">${eventVO.title}</a>
					</p>
					<p class="text3">${eventVO.text3}</p>
					<p class="text4">${eventVO.text4}</p>
				</div></li>
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

<c:if test="${count eq 0}">
	<div class="ct">검색 결과가 없습니다.</div>
</c:if>
