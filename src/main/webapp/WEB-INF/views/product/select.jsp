<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style type="text/css">
@font-face {
	font-family: 'italic';
	src: url('/resources/fonts/OpenSans-Italic.otf') format('opentype');
}

@font-face {
	font-family: 'notokrM';
	src: url('/resources/fonts/NotoSansKR-Medium.otf') format('opentype');
}

@font-face {
	font-family: 'notokrR';
	src: url('/resources/fonts/NotoSansKR-Regular.otf') format('opentype');
}

@font-face {
	font-family: 'notokrB';
	src: url('/resources/fonts/NotoSansKR-Black.otf') format('opentype');
}

@font-face {
	font-family: 'HelveticaNeue-Heavy';
	src: url('/resources/fonts/HelveticaNeue-Heavy.otf') format('opentype');
}

body {
	color: #333;
	font-family: "notokrR", Malgun Gothic, "맑은 고딕", AppleGothic, Dotum, "돋움",
		sans-serif;
	font-size: 14px;
	line-height: 1.4;
	letter-spacing: -0.5px;
}

#wrap>#side, #wrap>#container {
	height: 100%;
	min-height: 100%;
}

#container.goodsv_container {
	display: block;
	width: 100%;
	min-width: 100%;
	max-width: 100%;
}

#container {
	/* z-index: 9; */
	padding-top: 100px;
}

#container.goodsv_container #content {
	display: block;
	width: 100%;
}

#container #content {
	display: block;
	width: 100%;
	margin: 50px auto;
	padding: 0 0 50px;
}

#container>#content {
	display: table-cell;
	width: 100%;
	padding: 0 0 100px;
	vertical-align: top;
}

.goods-view {
	display: block;
	width: 1180px;
	margin: 0 auto;
}

.goods-view .goods {
	display: table;
	position: relative;
	width: 100%;
	margin: 0 auto;
	clear: both;
	margin-top: 70px;
	z-index: 0;
	/* border: 1px solid #ddd; */
	padding: 30px 0 30px 0px;
}

.goods-view .goods .image {
	display: inline-block;
	position: relative;
	float: left;
	width: 380px;
	margin: 0 auto;
	padding: 0 0;
	text-align: center;
	margin-left: 40px;
}

.goods-view .goods .image .thumbnail {
	display: block;
	width: 100%;
	height: auto;
	margin: 0 auto;
	border: none;
	text-align: center !important;
	vertical-align: middle;
	border: 0px solid #ddd !important;
}

.thumbnail img {
	width: 100%;
	max-width: 100%;
	margin: 0 auto;
}

.goods-view .goods .info {
	display: inline-block;
	position: relative;
	float: right;
	width: 580px;
	padding: 0;
	margin-right: 40px;
}

.goods-view .goods .info .info_wrap {
	display: block;
	position: relative;
	width: 100%;
	margin: 0 auto;
}

.goods-view .goods .info .goods-header {
	position: relative;
	margin-bottom: 20px;
	padding-bottom: 20px;
	border-bottom: 1px solid #e7e7e7;
}

.goods-view .goods .info .top {
	position: relative;
	overflow: hidden;
}

.goods-view .goods .info .top .tit {
	display: block;
	float: none;
	width: auto;
}

.goods-view .goods .info .top .tit h2 {
	padding-right: 60px;
	line-height: 34px;
	color: #000000;
	font-weight: normal;
	font-size: 28px;
	font-family: "notokrM";
}

.goods-view .goods .info .top .hashtag {
	padding-top: 8px;
	font-size: 16px;
	color: #808080;
}

.goods-view .goods .info .item {
	border-bottom: 0;
}

.mt_10 {
	margin-top: 10px;
}

.goods-view .goods .info .item ul {
	padding-top: 25px;
}

.goods-view .goods .info .item ul li:first-child {
	display: block;
	border-top: none;
}

.goods-view .goods .info .item ul li>strong {
	display: table-cell;
	float: left;
	line-height: 25px;
	width: 80px;
	color: #333;
	font-weight: normal;
	vertical-align: top;
}

.goods-view .goods .info .item ul li.price>div strong {
	color: #000;
	font-size: 16px;
	font-weight: normal;
	font-family: "notokrM";
}

.goods-view .goods .info .choice {
	display: table;
	width: 100%;
	padding: 5px 0;
}

.goods-view .goods .info .choice .list {
	display: table;
	width: 100%;
}

.goods-view .goods .info .choice .list>strong {
	display: table-cell;
	float: left;
	width: 80px !important;
	line-height: 30px;
	color: #111111;
	padding: 0 0 0 0;
	vertical-align: middle;
	font-weight: normal;
}

.goods-view .goods .info .choice .list>div {
	display: table-cell;
	vertical-align: middle;
	width: 100% !important;
}

.goods-view .goods .info .btn {
	display: block;
	width: 100%;
	float: left;
	margin: 40px 0 0;
	padding: 0;
	font-size: 0px;
}

#cartBtn {
	width: 285px;
	height: 50px;
	line-height: 50px;
	margin: 0;
	color: #000000;
	font-size: 15px;
	font-weight: normal;
	background: #ffffff;
	border: 1px solid #000;
	border-radius: 0;
}

#orderBtn {
	float: right;
	width: 285px;
	height: 50px;
	line-height: 50px;
	margin: 0 !important;
	color: #fff;
	font-size: 15px !important;
	background: #000;
	border: 1px solid #000;
	border-radius: 0;
}

.multiple-topics>div {
	padding: 100px 0 0;
}

.multiple-topics h3 {
	display: none;
	padding: 0 0 17px;
	color: #000;
	font-size: 20px;
}

.multiple-topics .tab {
	display: table;
	width: 100%;
	table-layout: fixed;
	position: relative;
	height: 47px;
	padding: 0 0 80px;
	line-height: 47px;
	text-align: center;
	overflow: initial;
}

.multiple-topics .tab a.on {
	position: relative;
	height: 45px;
	line-height: 45px;
	border: 1px solid #333;
	background: #ffffff;
	color: #111;
	font-weight: normal;
	z-index: 1;
}

.multiple-topics .tab a.on:after {
	content: '';
	display: block;
	width: 100%;
	height: 2px;
	background: #fff;
	position: absolute;
	bottom: -1px;
	left: 0;
}

.multiple-topics .tab a {
	float: none;
	display: table-cell;
	position: relative;
	height: 45px;
	line-height: 45px;
	padding: 0;
	margin: 0 0 0 -1px;
	border: 1px solid #e9e9e9;
	border-bottom: 1px solid #333;
	color: #8f8f8f;
	font-family: "notokrM";
	font-size: 14px;
	text-align: center;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.section-header {
    padding-top: 144px;
}

.detail-section {
    margin-bottom: 144px;
}

.detail-section {
    color: #000;
    font-family: 'notokr', sans-serif;
    font-size: 18px;
    font-weight: 400;
    line-height: 1;
}

.section-header {
    margin: 0 0 10px 0;
    position: relative;
}

.section-header .inner {
    text-align: center;
}

.section-header .inner .category {
    margin-bottom: 24px;
}

.detail-section p {
    font-size: 18px;
}

.detail-section h1 {
    font-size: 36px;
    font-weight: 700;
}

.section-header .inner .title .title-kr {
    margin-bottom: 16px;
    line-height: 1.35;
}

.section-header .inner .title span {
    display: block;
}

.section-header .inner .title .title-en {
    font-family: 'HelveticaNeue-Bold';
    font-size: 24px;
    line-height: 1.38;
}

.detail-section {
    margin-bottom: 144px;
}

.early-review .inner {
    position: relative;
    overflow: hidden;
}

.early-review .bg-image {
    position: absolute;
    top: 0;
    right: 0;
    width: 986px;
    height: calc( 100% - 1px );
    overflow: hidden;
    z-index: 1;
}

.early-review .bg-image img {
    position: absolute;
    top: 50%;
    left: 50%;
    width: 100%;
    height: auto;
    transform: translate(-50%, -50%);
}

.early-review .review-box {
    position: relative;
    float: left;
    width: 480px;
    margin-top: 166px;
    margin-left: 26px;
    background-color: #fff;
    z-index: 2;
}

.early-review .review-box .box-inner {
    padding: 48px 48px 48px 72px;
}

.early-review .review-box .box-inner .title {
    margin-bottom: 24px;
}

.detail-section h2 {
    font-size: 24px;
    font-weight: 700;
}

.early-review .review-box .box-inner .title .title-text {
    float: left;
    display: block;
}

.early-review .review-box .box-inner .title .stars {
    float: left;
    margin-left: 16px;
    font-size: 0;
}

.early-review .review-box .box-inner .title .stars .star-item {
    display: inline-block;
    width: 21px;
    height: 21px;
    margin-right: 9px;
    background: url('https://lush.co.kr/data/newdetail/img/star-fill.png') no-repeat center / cover;
}

.description .text-wrap {
    margin-bottom: 80px;
    text-align: center;
}

.detail-section p {
    font-size: 18px;
}

.description .text-wrap .desc {
    line-height: 34px;
}

.description .text-wrap .tip {
    margin-top: 16px;
    color: #6b6b6b;
    font-weight: 400;
    line-height: 30px;
}

.description .image-wrap:last-child {
    margin-bottom: 0;
}

.description .image-wrap img {
    position: absolute;
    top: 50%;
    left: 50%;
    width: 100%;
    height: auto;
    transform: translate(-50%, -50%);
}

.usage {
    padding: 80px 0;
    background-color: #f8f8f8;
}

.usage .inner {
    position: relative;
    overflow: hidden;
}

.usage .bg-image {
    position: absolute;
    top: 0;
    right: 0;
    width: 600px;
    height: calc( 100% - 1px );
    overflow: hidden;
    z-index: 1;
}

.usage .bg-image img {
    position: absolute;
    top: 50%;
    left: 50%;
    height: 100%;
    width: auto;
    max-width: none;
    transform: translate(-50%, -50%);
}

.usage .usage-box {
    position: relative;
    float: left;
    width: 600px;
    margin-top: 88px;
    margin-left: 56px;
    background-color: #fff;
    z-index: 2;
}


.usage .usage-box .box-inner {
    padding: 80px;
    text-align: left;
}

.usage .usage-box .box-inner .title {
    margin-bottom: 24px;
}

.usage .usage-box .box-inner .content {
    margin-bottom: 16px;
    color: #6b6b6b;
    line-height: 34px;
}
.usage .usage-box .box-inner .hashtags {
    margin-bottom: -16px;
    
}

.hashtags {
	display: inline-block;
    margin: 0 10px 16px 0;
    padding-bottom: 2px;
    border-bottom: 1px solid #1ea24d;
    color: #1ea24d;
    font-size: 18px;
    line-height: 1;
    letter-spacing: -0.24px;
}

.packing .inner {
    max-width: 937px;
    margin: 0 auto;
    text-align: center;
}

.packing .packing-cont {
    position: relative;
}

.packing .packing-cont .desc {
    margin-top: 17px;
    letter-spacing: -0.02em;
    line-height: 1.7;
}

.packing .break {
    display: none;
}

.packing .packing-tip {
    display: block;
    margin-top: 16px;
    color: #6b6b6b;
    letter-spacing: -0.02em;
}

.packing .packing-tip strong {
    color: #6b6b6b;
}

.packing .packing-tip .i {
    padding-right: 10px;
    font-weight: 700;
    font-style: italic;
    color: #6b6b6b;
}

.qus{	
	font-style: italic;
	font-weight: bold;
}

.packing .graphics {
    position: relative;
    margin-top: 80px;
}

.packing .graphics img {
    width: 100%;
}

.packing .m-only {
    display: none;
}

.packing .item {
    position: absolute;
    text-align: left;
    line-height: 1.7;
    letter-spacing: -0.02em;
}

.packing .item strong {
    display: block;
}

.packing .item.paper {
    left: 66.5%;
    top: 22%;
}

.packing .item.box {
    left: 8.2%;
    top: 71.2%;
}

.packing .item.corn {
    left: 74%;
    top: 52.7%;
}

.packing .check .tit {
    margin-top: 140px;
    font-family: 'HelveticaNeue-Bold';
    font-size: 42px;
}

.packing .check-list {
    margin-top: 74px;
    overflow: hidden;
}

.detail-section ul {
    list-style: none;
}

.blackpot .inner {
    max-width: 937px;
    margin: 0 auto;
    text-align: center;
}

.blackpot .blackpot-box {
    position: relative;
    margin-top: 78px;
}

.blackpot .blackpot-box img {
    width: 100%;
}

.blackpot .m-only {
    display: none;
}

.blackpot .blackpot-box .desc {
    position: absolute;
    left: 8.5%;
    top: 26.013%;
    color: #fff;
    line-height: 1.7;
    letter-spacing: -0.013em;
    text-align: left;
}

.blackpot .break {
    display: none;
}

.blackpot .blackpot-box .btn-more {
    position: absolute;
    left: 8.6%;
    top: 55.067%;
    width: 206px;
    height: 56px;
    border: 1px solid #fff;
    font-weight: 200;
    font-size: 16px;
    color: #fff;
    line-height: 54px;
    letter-spacing: 0.089em;
}

.multiple-topics .image-manual img, .multiple-topics .txt-manual img {
    max-width: 100%;
}

.description .image-wrap {
    position: relative;
    height: 460px;
    margin-bottom: 48px;
    overflow: hidden;
}

ul {
	display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}

.packing .check-list li {
    float: left;
    width: 46%;
    padding-left: 37px;
    text-align: left;
}

.packing .check-list li img {
    display: inline-block;
    width: 32.26%;
    margin-right: 20px;
    vertical-align: middle;
}

.packing .check-list li .txt {
    display: inline-block;
    color: #6b6b6b;
    line-height: 30px;
    vertical-align: middle;
}

.dg {
 	display: list-item;
}

.early-review .review-box .box-inner .content {
    line-height: 32px;
    text-align: left;
}

</style>
</head>
<body>
	<c:import url="../main/mainHeader.jsp"></c:import>

	<div id="container" class="goodsv_container">
		<div id="content">
			<div class="goods-view">
				<div class="goods">
					<div class="image">
						<div class="thumbnail">
							<img src="${product.photo}" width="380" alt="" title=""
								class="middle productPhoto">
						</div>
					</div>
					<div class="info">
						<div class="info_wrap">
							<div class="goods-header">
								<div class="top">
									<div class="tit">
										<h2 class="productName">${product.name}</h2>

									</div>
									<div class="hashtag">${product.hashTag}</div>
								</div>
							</div>
							<div class="item">
								<div>
									<span>220개의 후기보기</span>
								</div>
								<div class="mt_10">
									<span>Good to know</span>
								</div>
								<ul>
									<li class="price"><strong>판매가</strong>
										<div>
											<strong class="productPrice">￦${product.price}</strong><span></span>
											<!-- 글로벌 참조 화폐 임시 적용 -->
										</div></li>
								</ul>
							</div>
							<div class="choice">
								<div class="list">
									<strong>용량</strong>
									<div class="productWeight">${product.weight}g</div>
								</div>
							</div>
							<div class="btn">
							<div class="productCategory" style="display: none;">${product.category}</div>
							<div class="memberId"  style="display: none;">${memberVO.id}</div>
								<button id="cartBtn">장바구니</button>
								<button id="orderBtn">주문하기</button>
							</div>

						</div>
					</div>
				</div>

				<div class="multiple-topics">
					<div id="detail">
						<div class="in_width_wrap">
							<div class="tab">
								<a href="#detail" class="on">상품상세정보</a><a href="#reviews">상품후기
									(220)</a><a href="#delivery">배송/교환 및 반품안내</a>
							</div>
						</div>
						<c:if test="${!product.youtube eq ''}">
						<div style="padding: 10px 0; text-align: center"
							id="external-video">
							<iframe width="1180" height="551" src="${product.youtube}"
								frameborder="0" allowfullscreen=""></iframe>
						</div>
						</c:if>

						<div class="txt-manual">
							<!-- 상품상세 공통정보 관리를 상세정보 상단에 노출-->

							<!--<a href="https://lush.co.kr/goods/goods_view.php?goodsNo=12" target="_blank"><img src="http://img.lush.co.kr/pns/noti/201028_bn_beautysleep_1180.jpg"></a>-->



							<div id="wrap">
								<div class="container">

									<section class="detail-section section-header">
										<!-- 제품 타이틀 영역 -->
										<div class="inner">
											<p class="category">${product.innerText}</p>
											<h1 class="title">
												<span class="title-kr">${product.innerText2}</span> <span class="title-en">${product.innerText3}</span>
											</h1>
										</div>
									</section>
									<!-- // 제품 타이틀 영역 -->

									<section class="detail-section early-review is-soup">
										<!-- 미리 써 본 후기 -->
										<div class="inner clearfix">
											<div class="bg-image">
												<img alt="뷰티슬립 미리 써 본 후기 배경 이미지"
													src="${product.bgImage}">
											</div>
											<div class="review-box">
												<div class="box-inner">
													<h2 class="title clearfix">
														<span class="title-text">미리 써 본 후기</span>
														<div class="stars">
															<span class="star-item"></span> <span class="star-item"></span>
															<span class="star-item"></span> <span class="star-item"></span>
															<span class="star-item"></span>
															<!-- 빈 별은 empty 클래스 삽입 -->
														</div>
													</h2>
													<div class="content">${product.review}</div>
													
												</div>
											</div>
										</div>
									</section>
									<!-- // 미리 써 본 후기 -->

									<section class="detail-section description">
										<!-- 제품 설명 및 사진 -->
										<div class="inner">
											<div class="text-wrap">
												<p class="desc">
													${product.text}


												</p>
												<p class="tip">
													<strong>TIP<i class="qus">!&nbsp;&nbsp;</i></strong>${product.tip}
												</p>
											</div>
											<div class="image-wrap">
												<img alt="뷰티슬립 이미지"
													src="${product.imageWrap}">
											</div>
										</div>
									</section>
									<!-- // 제품 설명 및 사진 -->

									
								</div>
								

								<section class="detail-section usage">
									<!-- 사용방법 -->
									<div class="inner clearfix">
										<div class="bg-image">
											<img alt="사용방법 배경 이미지"
												src="${product.bgImage2}">
										</div>
										<div class="usage-box">
											<div class="box-inner">
												<h1 class="title">사용 방법</h1>
												<div class="content">
													${product.usageText}

												</div>
												<div class="hashtags">
													${product.hashTag}

												</div>
											</div>
										</div>
									</div>
								</section>
								<!-- // 사용방법 -->
							</div>
							

							<section class="detail-section packing">
								<!-- 친환경 포장 -->
								<div class="inner">
									<h1 class="section-title">친환경 포장</h1>
									<div class="packing-cont">
										<p class="desc">
											환경을 생각하는 마음을 담아 신선하게 배송해 드립니다.<br> 배송 상자는 운송장을 떼어 분리배출하고
											<br class="break">완충재는 부피를 줄여 일반 쓰레기로 배출해주세요.
										</p>
										<p class="packing-tip">
											<strong>TIP<span class="i">!</span></strong>냉장배송이 필요한 제품은
											100% 물이 담긴 <br class="break">종이 아이스 팩과 함께 출발합니다. (5~9월에
											해당)
										</p>
										<div class="graphics">
											<img src="https://lush.co.kr/data/newdetail/img/bg_packing.jpg" class="pc-only"
												alt=""> <img
												src="https://lush.co.kr/data/newdetail/img/bg_packing_m.jpg" class="m-only"
												alt=""> <span class="item paper"><strong>종이
													완충재</strong>종이 분리배출</span> <span class="item box"><strong>비접착
													끼움 상자</strong>종이 분리배출</span> <span class="item corn"><strong>옥수수
													전분 완충재</strong>부피를 줄여 <br class="break">일반쓰레기 배출<br>(자연
												분해)</span>
										</div>
									</div>
									<div class="check">
										<h2 class="tit">Check Point!</h2>
										<ul class="check-list">
											<li class="dg"><img
												src="https://lush.co.kr/data/newdetail/img/img_packing_check01.png" alt="">
												<span class="txt"> 제품에 부착된 스티커에서<br> 제조자와 사용 기한을
													확인하세요.<br> 스티커 속에서 깜짝 메세지도<br> 찾아볼 수 있습니다.
											</span></li>
											<li class="dg"><img
												src="https://lush.co.kr/data/newdetail/img/img_packing_check02.png" alt="">
												<span class="txt"> 러쉬는 정직한 재료를 사용하여<br> 모든 제품을
													손으로 만듭니다.<br> 어떤 모양의 제품이 오더라도<br> 사랑해 주실거죠?
											</span></li>
										</ul>
									</div>
								</div>
							</section>
							<!-- // 친환경 포장 -->

							<section class="detail-section blackpot">
								<!-- 블랙팟의 환생 참여 방법 -->
								<div class="inner">
									<h1 class="section-title">블랙 팟의 환생 참여방법</h1>
									<div class="blackpot-box">
										<img src="https://lush.co.kr/data/newdetail/img/bg_blackpot_pc.jpg"
											class="pc-only" alt=""> <img
											src="https://lush.co.kr/data/newdetail/img/bg_blackpot_m.jpg" class="m-only"
											alt="">
										<p class="desc">
											모두 사용한 블랙 팟 공병을 <br class="break">깨끗이 씻어 매장에 방문해보세요!<br>신선한
											프레쉬 페이스 마스크 1종을 <br class="break">선물해드립니다.
										</p>
										<a href="/board/view.php?&amp;bdId=article&amp;sno=110"
											class="btn-more">자세히 보기</a>
									</div>	
								</div>
							</section>
							<!-- //블랙팟의 환생 참여 방법 -->


							<p>&nbsp;</p>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<c:import url="../main/mainFooter.jsp"></c:import>
	
	<script type="text/javascript">
	
	$('#cartBtn').click(function(){
		
		let member = "${memberVO.id}";
		
		let category = "${product.category}";
		let name = "${product.name}";
		let price = "${product.price}";
		let photo = "${product.photo}";
		let num = "${product.num}";
		console.log(member);
		console.log(category);
		console.log(name);
		console.log(price);
		console.log(photo);
		console.log(num);
		
		
		$.ajax({
			
			type : "GET",
			url : "../cart/cartInsert",
			data : {
				cart_num : num,
				member_id : member,
				ps_group : category,
				ps_name : name,
				ps_price : price,
				ps_amount : 1,
				ps_photo : photo
			},
			success : function(result) {
				if(confirm("장바구니에 담겼습니다 확인하시겠습니까?")==true){
					window.location.href="../cart/cartPage";
				} else {
					window.location.href="./list";
				}
				
				
			}

		});
	});
	
	</script>
</body>
</html>