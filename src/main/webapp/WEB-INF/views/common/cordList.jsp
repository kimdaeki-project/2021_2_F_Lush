<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<c:forEach items="${cordList}" var="cordList" varStatus="i">
	<li style="width: 25%">
		<div class="space">
			<div class="box">
				<div class="thumbnail">
					<img src="${cordList.photo}" width="280" class="js-image-load">
				</div>
				<div class="prdinfo">
					<div class="conditions">
						<span class="hot"> <c:if
								test="${cordList.category eq '신제품'}">
								<img src="https://lush.co.kr/data/icon/goods_icon/icon_new.png"
									alt="new" title="new" class="middle">
							</c:if> <c:if test="${cordList.category eq '비건'}">
								<img
									src="https://lush.co.kr/data/icon/goods_icon/icon_vegan.png"
									alt="new" title="vegan" class="middle">
							</c:if>
						</span>
					</div>
					<div class="txt">
						<a href="./select?num=${cordList.num}"><span
							class="prdName">${cordList.name}</span></a> <span class="shotdesc">${cordList.hashTag}</span>
					</div>
					<div class="price gd-default">
						<span class="cost"> <strong>￦ ${cordList.price}</strong>
						</span>
					</div>
				</div>
			</div>
		</div>
	</li>
</c:forEach>
