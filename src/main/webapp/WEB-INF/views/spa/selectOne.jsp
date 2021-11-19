<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<style></style>
	<script></script>
	
	<div id="remainsGoodsLayer" style="display: none;">
    	<div class="box add-cart-layer" style="margin: auto; margin-top: 16%; padding-top: 1px; background-color: #ffffff; text-align: center;">
        	<div class="view" style="position: relative; margin: 28px 20px;">
	            <!-- <h2>장바구니 담기</h2> -->
	            <div class="scroll-box">
	                <p class="success">
	                	<strong id="remainsGoods1"></strong>
	                	<span id="remainsGoods2"></span></p>
	            </div>
	            <div class="btn">
	                <button class="btnicon btn_bk btn_m w160 layer-cart-btn" onclick="closeGoodsCntClose();"><em>확인하기</em></button>
	            </div>
            	<button title="닫기" class="closeGoodsCntClose" type="button" onclick="closeGoodsCntClose();">닫기</button>
			</div>
		</div>
	</div>
	
	<div id="wrap">
		<%--------------- 헤더영역 ---------------%>
		<c:import url="../main/mainHeader.jsp"></c:import>
		
		<%--------------- 본문영역 ---------------%>
		<div id="container" class>
			<div id="content">
				
				<%-- JS 2개 추가하기 --%>
				<meta property="recopick:title" content="탱글드 헤어 트리트먼트">
				<meta property="recopick:image" content="../../resources/img/goods/tangled_hair_treatment_detail.jpg">
				<meta property="recopick:price" content="70000.00">
				<meta property="recopick:price:currency" content="KRW">
				<meta property="recopick:sale_price" content="70000.00">
				<meta property="recopick:sale_price:currency" content="KRW">
				
				<%-- JS 3개, html 2개 추가 --%>
				
				<div class="groobeeProductDetail" style="display: none;">
					<span class="groobeeProductName">탱글드 헤어 트리트먼트</span>
					<span class="groobeeProductPrice">70000.00</span>
					<span class="groobeeProductSalePrice">70000.00</span>
					<span class="groobeeProductCode">1000001808</span>
					<span class="groobeeProductImage"><img src="../../resources/img/goods/tangled_hair_treatment_detail.jpg" width="380" alt="탱글드 헤어 트리트먼트" title="탱글드 헤어 트리트먼트" class="middle"></span>
					<span class="groobeeProductCategory">002001001</span>
					<span class="groobeeProductCategoryName">LUSH SPA</span>
					<span class="groobeeProductCategoryName">SPA</span>
					<span class="groobeeProductCategoryName">TREATMENTS</span>
					<span class="groobeeProductStatus">n</span>
				</div>
				
				<div class="goods-view">
				
					<div class="location"></div>
					<div class="goods">
						<div class="image">
							<div class="thumbnail">
								<a href="#zoom-layer" class="zoom-layer-open btn-open-layer" id="mainImage">
									<img src="../../resources/img/goods/tangled_hair_treatment_detail.jpg"
										width="380" alt="탱글드 헤어 트리트먼트" title="탱글드 헤어 트리트먼트" class="middle"></a>
							</div>
							<div class="more-thumbnail">
								<div class="slide">
									<div class="slider-wrap cycle slider-image-thumbnail slick-initialized slick-slider">
										<div aria-live="polite" class="slick-list">
											<div class="slick-track" role="listbox" style="opacity: 1; width: 80px; transform: translate3d(0px, 0px, 0px);">
												<span class="swiper-slide slick-slide slick-current slick-active"
													data-slick-index="0" aria-hidden="false" tabindex="-1" role="option"
													aria-describedby="slick-slide20" style="width: 80px;">
													
													<a href="javascript:change_image('0','detail');" tabindex="0">
														<img src="../../resources/img/goods/tangled_hair_treatment_detail.jpg"
															width="68" alt="탱글드 헤어 트리트먼트" title="탱글드 헤어 트리트먼트" class="middle"></a>	
												</span>
											</div>
										</div>
									</div>
								</div>
								<div class="prev slider-image-thumbnail-prev slick-arrow slick-hidden"
									title="이전 상품 이미지" aria-disabled="true" tabindex="-1">
								</div>
								<div class="next slider-image-thumbnail-next slick-arrow slick-hidden"
									title="다음 상품 이미지" aria-disabled="true" tabindex="-1">
								</div>
							</div>
						</div>
						<form name="frmView" id="frmView" method="post">
							<%-- 주문영역 추가하기 --%>
						</form>
					</div>
					<div class="adpic_detail"></div>
					<script type="text/javascript"></script>
									
				
				</div>
				
			</div>
		</div>
	</div>
   <h1>Spa selectOne Page</h1>
   
   <h3>name : ${spaVO.name}</h3>
   <h3>price : ${spaVO.price}</h3>
   <h3>amount : ${spaVO.amount}</h3>
   <h3>voucherNumber : ${spaVO.voucherNumber}</h3>
   <h3>bookingDate : ${spaVO.bookingDate}</h3>
   
   <a href="./delete?name=${spaVO.name}">DELETE</a>
   <a href="./update?name=${spaVO.name}">UPDATE</a>
</body>

</html>