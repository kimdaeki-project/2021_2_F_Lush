<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:forEach items="${productList}" var="productList" varStatus="i">
	<li style="width: 25%">
		<div class="space">
			<div class="box">
			<a href="./select?num=${productList.num}">
				<div class="thumbnail">
					<img src="${productList.photo}" width="280" class="js-image-load">
				</div></a>
				<div class="prdinfo">
					<div class="conditions">
						<span class="hot"> <c:if
								test="${productList.category eq '신제품'}">
								<img src="https://lush.co.kr/data/icon/goods_icon/icon_new.png"
									alt="new" title="new" class="middle">
							</c:if> <c:if test="${productList.category eq '비건'}">
								<img
									src="https://lush.co.kr/data/icon/goods_icon/icon_vegan.png"
									alt="new" title="vegan" class="middle">
							</c:if>
						</span>
					</div>
					<div class="txt">
						<a href="./select?num=${productList.num}"><span
							class="prdName">${productList.name}</span></a> <span class="shotdesc">${productList.hashTag}</span>
					</div>
					<div class="price gd-default">
						<span class="cost"> <strong>￦ ${productList.price}</strong>
						</span>
					</div>
				</div>
			</div>
		</div>
	</li>
</c:forEach>