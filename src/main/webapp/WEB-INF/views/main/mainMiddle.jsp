<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
#container_main {
	position: relative;
	/* z-index: 9; */
	padding-top: 100px;
}

#content {
	display: block;
	margin-bottom: 100px;
}

.main_wrap01 .slider-wrap .slick-list .slick-track .slick-slide {
	height: 580px !important;
}

.slick-slider .slick-list {
	display: block;
	overflow: hidden;
	position: relative;
	margin: 0;
	padding: 0;
}

#content .contents {
	display: block;
	min-width: 1000px;
	margin: 0px auto 0;
}

*:focus {
	outline: none !important;
}

.slider-banner-3305991155 {
	margin: 0 auto;
	width: 100%;
	overflow: hidden;
	visibility: hidden;
}

.slider-banner-3305991155 .slick-slide {
	display: inline-block;
	width: auto;
}

.slider-banner-3305991155 .slick-slide a {
	display: block;
	height: 100%;
}

.slider-banner-3305991155 .slick-slide img {
	display: block;
	/*width: 100%;*/
	position: static !important;
	top: 0px !important;
}

.slider-banner-3305991155 .slick-prev {
	background-image:
		url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M0%2C22L22%2C0l2.1%2C2.1L4.2%2C22l19.9%2C19.9L22%2C44L0%2C22L0%2C22L0%2C22z'%20fill%3D'%231e1e1e'%2F%3E%3C%2Fsvg%3E");
	background: #1e1e1e\0/IE8;
}

.slider-banner-3305991155 .slick-next {
	background-image:
		url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M27%2C22L27%2C22L5%2C44l-2.1-2.1L22.8%2C22L2.9%2C2.1L5%2C0L27%2C22L27%2C22z'%20fill%3D'%231e1e1e'%2F%3E%3C%2Fsvg%3E");
	background: #1e1e1e\0/IE8;
}

.slider-banner-3305991155 .slick-prev, .slider-banner-3305991155 .slick-next
	{
	position: absolute;
	top: 50%;
	width: 27px;
	height: 44px;
	z-index: 3;
	cursor: pointer;
	background-size: 27px 44px;
	background-position: center;
	background-repeat: no-repeat;
	filter: alpha(opacity = 0);
	opacity: 0;
	-webkit-opacity: 0;
	-webkit-transition: all 200ms ease-in-out;
	-moz-transition: all 200ms ease-in-out;
	-o-transition: all 200ms ease-in-out;
	-khtml-transition: all 200ms ease-in-out;
	-ms-transition: all 200ms ease-in-out;
	transition: all 200ms ease-in-out;
}

.slider-banner-3305991155 .slick-prev {
	left: 50%;
	margin-left: -550px;
}

.slider-banner-3305991155 .slick-next {
	right: 50%;
	margin-right: -550px;
}

.slider-banner-3305991155:hover .slick-prev {
	margin-left: -600px;
	filter: alpha(opacity = 50);
	opacity: 0.5;
	-webkit-opacity: 0.5;
}

.slider-banner-3305991155:hover .slick-next {
	margin-right: -600px;
	filter: alpha(opacity = 50);
	opacity: 0.5;
	-webkit-opacity: 0.5;
}

.slider-banner-3305991155 .slick-prev:hover {
	filter: alpha(opacity = 100);
	opacity: 1;
	-webkit-opacity: 1;
}

.slider-banner-3305991155 .slick-next:hover {
	filter: alpha(opacity = 100);
	opacity: 1;
	-webkit-opacity: 1;
}

@media screen and (max-width: 1200px) {
	.slider-banner-3305991155 .slick-prev {
		left: 50%;
		margin-left: -400px;
	}
	.slider-banner-3305991155 .slick-next {
		right: 50%;
		margin-right: -400px;
	}
	.slider-banner-3305991155:hover .slick-prev {
		margin-left: -450px;
	}
	.slider-banner-3305991155:hover .slick-next {
		margin-right: -450px;
	}
}

.slider-banner-3305991155  .slick-dots li button {
	border: 2px solid #fff;
	width: 12px;
	height: 12px;
	border-radius: 100%;
	background: #ffffff;
	-webkit-transition: all 200ms ease-in-out;
	-moz-transition: all 200ms ease-in-out;
	-o-transition: all 200ms ease-in-out;
	-khtml-transition: all 200ms ease-in-out;
	-ms-transition: all 200ms ease-in-out;
	transition: all 200ms ease-in-out;
	background: none;
}

.slider-banner-3305991155 .slick-dots li.slick-active button {
	/* background:#ffffff; */
	background: #fff;
}

.slider-area {
	display: block;
	width: 100%;
	height: 580px;
	background-image:
		url('https://lush.co.kr/data/skin/front/howling/img/banner/slider_3305991155/a4718ce4ff4a9a1a7d0dfda13cac6252_44894.jpg');
	background-repeat: no-repeat;
}

.sliderBtn>active {
	background: #fff;
}

.adpic_wideslide2 {
	clear: both;
	display: block;
	position: relative;
	width: 100%;
	height: auto;
	padding: 80px 0 120px;
	min-width: 1000px;
	margin: 0 auto;
	background: #fff;
}

.adpic_wideslide2 .inner_wrap {
	height: 460px;
}

.inner_wrap {
	position: relative;
	width: 1180px;
	margin: 0 auto;
}

.adpic_wideslide2 .display_list {
	padding-right: 280px;
}

.adpic_wideslide2 h2 {
	border: 0;
	padding: 0;
	margin: 0 0 25px 0;
	font-size: 42px;
	line-height: 44px;
	font-family: 'HelveticaNeue-Heavy';
	color: #333;
}

.adpic_wideslide2 .review {
	position: absolute;
	top: -160px;
	right: 0;
	width: 280px;
	height: 652px;
}

.item-display .space .box .thumbnail .prdimg img, .item-display .space .box .thumbnail img
	{
	width: 100%;
}

.adpic_wideslide2 .display_list .bx-viewport {
	height: 390px !important;
}

.adpic_wideslide2 .space {
	display: block;
	position: relative;
	padding: 0 5px 40px 5px;
}

.adpic_wideslide2 .box {
	display: block;
	position: relative;
}

.adpic_wideslide2 .thumbnail a {
	display: block;
}

.item-display .prdimg {
	display: block;
}

.adpic_wideslide2 .prdinfo {
	position: relative;
	display: block;
	padding: 0 0 0 0;
	text-align: center;
}

.adpic_wideslide2 .conditions {
	display: none;
}

.adpic_wideslide2 .txt {
	display: block;
	padding: 0 0 0 0;
	color: #1e1e1e;
	text-align: center;
	line-height: 20px;
}

.adpic_wideslide2 .brand {
	display: none;
}

.adpic_wideslide2 .txt .prdName {
	display: block;
	padding: 0;
	color: #333;
	line-height: 22px;
	font-size: 18px;
	max-height: 40px;
	text-overflow: ellipsis;
	overflow: hidden;
}

.adpic_wideslide2 .txt .shotdesc {
	display: block;
	padding: 0;
	color: #8f8f8f;
	line-height: 20px;
	max-height: 20px;
	font-size: 14px;
	text-overflow: ellipsis;
	overflow: hidden;
}

.adpic_wideslide2 .price {
	display: block;
	line-height: 30px;
	margin-top: 10px;
	padding: 0;
	text-align: center;
	color: #333;
	font-size: 16px;
}

.item-display .choice .icon-name {
	display: none;
}

.adpic_wideslide2 .review .bx-wrapper .bx-controls-direction a {
	width: 11px;
	height: 15px;
	z-index: 9;
}

.bx-wrapper .slideList .left {
	top: auto;
	bottom: 20px;
	left: 194px;
	margin-top: 0;
	background:
		url("https://lush.co.kr/data/skin/front/howling/img/etc/review_prev.png")
		no-repeat;
	position: absolute;
}

.adpic_wideslide2 .review .slider_count {
	position: absolute;
	bottom: 20px;
	right: 24px;
	width: 46px;
	text-align: center;
	color: #fff;
	font-size: 14px;
	line-height: 18px;
}

.bx-wrapper .slideList .right {
	top: auto;
	bottom: 20px;
	right: 7px;
	margin-top: 0;
	background:
		url("https://lush.co.kr/data/skin/front/howling/img/etc/review_next.png")
		no-repeat;
	position: absolute;
}

.adpic_wideslide2 .bx-wrapper .bx-pager.bx-default-pager button.active {
	background:
		url("https://lush.co.kr/data/skin/front/howling/img/etc/main_dot_off.png")
		no-repeat;
}

.adpic_wideslide2 .bx-wrapper .bx-pager.bx-default-pager button {
	width: 12px;
	height: 12px;
	background:
		url("https://lush.co.kr/data/skin/front/howling/img/etc/main_dot_on.png")
		no-repeat;
}

.bx-wrapper .bx-pager.bx-default-pager button {
	background: #666;
	text-indent: -9999px;
	display: block;
	width: 10px;
	height: 10px;
	margin: 0 5px;
	border:0;
	outline: 0;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
}

.main_wrap03 {
	display: table;
	width: 100%;
	max-width: 1400px;
	margin-left: auto;
	margin-right: auto;
	margin-bottom: 100px;
}

.main_wrap03 .left {
	display: table-cell;
	width: 43.57%;
	vertical-align: top;
}

.main_wrap03 img {
	width: 100%;
}

.main_wrap03 .right {
	display: table-cell;
	width: 56.43%;
	vertical-align: top;
}

.main_wrap03 .right .right2 p {
	display: table-cell;
}

.main_wrap03 .right .right2 {
	display: table;
	width: 100%;
}

.main_wrap04 {
	padding: 90px 0 200px 0;
}

.main_wrap04 .inner_wrap {
	position: relative;
}

.main_wrap04 dl {
	width: 350px;
	padding-left: 300px;
}

.main_wrap04 dt {
	padding-bottom: 20px;
	font-size: 42px;
	font-family: "notokrB";
	color: #000;
}

.main_wrap04 dd {
	line-height: 26px;
	font-size: 16px;
}

.main_wrap04 .inner_wrap .img {
	position: absolute;
	top: -40px;
	right: 100px;
	width: 380px;
	z-index: 1;
}

.slick-slide {
	display: block;
}

.slick-list {
	display: block;
	overflow: hidden;
	position: relative;
	margin: 0;
	padding: 0;
}

.slick-track {
	display: block;
	position: relative;
	top: 0;
	left: 0;
}

.main_wrap01 .slick-dots {
	width: 12px;
	bottom: auto;
	position: relative;
	top: 40%;
	left: 50%;
	margin-left: 580px;
}

.main_wrap01 .slick-dots li {
	display: block;
	margin: 0 0 10px 0;
}

.slick-dots li {
	cursor: pointer;
}

.slider-banner-3305991155 .slick-dots li button {
	border: 2px solid #fff;
	width: 12px;
	height: 12px;
	border-radius: 100%;
	background: none;
}

.slick-li>button.active {
	/* background: #ffffff; */
	background: #fff;
}

.slider-banner-3305991155 {
	margin: 0 auto;
	width: 100%;
	overflow: hidden;
	visibility: hidden;
}

.main_wrap01, .main_wrap01 .slider-wrap, .main_wrap01 .slider-wrap .slick-list,
	.main_wrap01 .slider-wrap .slick-list .slick-track, .main_wrap01 .slider-wrap .slick-list .slick-track .slick-slide
	{
	height: 580px !important;
}

.sliderBtn {
	border: 2px solid #fff;
	width: 12px;
	height: 12px;
	border-radius: 100%;
	display: block;
	padding: 5px;
	font-size: 0;
	line-height: 0;
	cursor: pointer;
	outline: none;
	opacity: 0.75;
}

.fade {
	-webkit-animation-name: fade;
	-webkit-animation-duration: 1.5s;
	animation-name: fade;
	animation-duration: 1.5s;
}

@
-webkit-keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}
@
keyframes fade {
	from {opacity: .4}
}

to {
	opacity: 1
}

.bx-wrapper{
	height: 100%;
	overflow: hidden;
}

.bx-wrapper input[id*="slideInput"] {
	display: none;
}

.bx-wrapper .mySlides {
	max-width: 280px; 
	overflow: hidden;
	margin: 0 auto;
}

.bx-wrapper .slideList {
	white-space: nowrap;
	font-size: 0;
}

.bx-wrapper .slideList li {
	display: inline-block;
	vertical-align: middle;
	width: 100%;
	transition: all .5s;
}

.bx-wrapper .slideList li>a {
	display: block;
	position: relative;
}

.bx-wrapper .slideList li>a img {
	width: 100%;
}

.bx-wrapper .slideList label {
	position: absolute;
	z-index: 0;
	top: auto;
	bottom: 20px;
	cursor: pointer;
	width: 11px;
	height: 15px;
}

.bx-wrapper [id="slideInput01"]:checked ~ .mySlides .slideList > li {
	transform: translateX(0%)
}

;
.bx-wrapper [id="slideInput02"]:checked ~ .mySlides .slideList > li {
	transform: translateX(-100%)
}

;
.bx-wrapper [id="slideInput03"]:checked ~ .mySlides .slideList >li {
	transform: translateX(-200%)
}

;
.bx-wrapper [id="slideInput04"]:checked ~ .mySlides .slideList > li {
	transform: translateX(-300%)
}

;
.bx-wrapper [id="slideInput05"]:checked ~ .mySlides .slideList > li {
	transform: translateX(-400%)
}

;
.bx-wrapper [id="slideInput06"]:checked ~ .mySlides .slideList > li {
	transform: translateX(-500%)
}

;
.bx-wrapper .bx-controls bx-has-controls-direction [class*="bx-controls-direction"]
	{
	display: none;
}

.bx-wrapper [id="slideInput01"]:checked ~ .bxslider .bx-controls-direction01
	{
	display: block;
}

.bx-wrapper .bx-pager {
    text-align: center;
    font-size: .85em;
    font-family: Arial;
    font-weight: bold;
    color: #666;
    padding-top: 20px;
}

.bx-controls-direction01 > a > label {
	width: 11px;
    height: 15px;
    z-index: 9;
}

.bx-wrapper .bx-pager-item, .bx-wrapper .bx-controls-auto .bx-controls-auto-item {
    display: inline-block;
    vertical-align: bottom;
    *zoom: 1;
    *display: inline;
}

.bx-controls-direction a {
    position: absolute;
    top: 50%;
    margin-top: -16px;
    outline: 0;
    width: 32px;
    height: 32px;
    text-indent: -9999px;
    z-index: 99;
}


.slider_count {
    position: absolute;
    bottom: 20px;
    right: 25px;
    width: 46px;
    text-align: center;
    color: #fff;
    font-size: 14px;
    line-height: 19px;
}

</style>

</head>
<body>
	<div id="container_main">
		<div id="content">
			<div class="contents main_wrap01 ee">
				<div class="slider-area" style="">


					<ul class="slick-dots" style="display: block;" role="tablist">
						<li class="slick-li" aria-hidden="false" role="presentation"
							aria-selected="true" aria-controls="navigation20"
							id="slick-slide20"><button class="sliderBtn sb1 active"
								type="button" data-role="none" role="button" tabindex="0">1</button></li>
						<li class="slick-li" aria-hidden="true" role="presentation"
							aria-selected="false" aria-controls="navigation21"
							id="slick-slide21"><button class="sliderBtn sb2"
								type="button" data-role="none" role="button" tabindex="0">2</button></li>
						<li class="slick-li" aria-hidden="true" role="presentation"
							aria-selected="false" aria-controls="navigation22"
							id="slick-slide22"><button class="sliderBtn sb3"
								type="button" data-role="none" role="button" tabindex="0">3</button></li>
						<li class="slick-li" aria-hidden="true" role="presentation"
							aria-selected="false" aria-controls="navigation23"
							id="slick-slide23"><button class="sliderBtn sb4"
								type="button" data-role="none" role="button" tabindex="0">4</button></li>
					</ul>
				</div>
			</div>
			<div class="adpic_wideslide2">
				<div class="inner_wrap">
					<div class="display_list">

						<h2>
							<img src="https://lush.co.kr/data/display/1_imageNm.png">
						</h2>
						<div class="bx-wrapper">
							<div class="bx-viewport" aria-live="polite"
								style="width: 100%; overflow: hidden; position: relative; height: 410px;">
								<div class="bestseller_bxslider item-display"
									style="width: 12215%; position: relative; transition-duration: 0s; transform: translate3d(-900px, 0px, 0px);">
									<div
										style="float: left; list-style: none; position: relative; width: 280px; margin-right: 20px;"
										class="bx-clone" aria-hidden="true">
										<div class="space">
											<div class="box">

												<div class="thumbnail"
													data-image-magnify="https://lush.co.kr/data/goods/21/11/45/1000001958/1000001958_main_057.jpg"
													data-image-list="https://lush.co.kr/data/goods/21/11/45/1000001958/1000001958_main_057.jpg"
													data-image-main="https://lush.co.kr/data/goods/21/11/45/1000001958/1000001958_main_057.jpg"
													data-image-add1="https://lush.co.kr/data/goods/21/11/45/1000001958/1000001958_main_057.jpg"
													data-image-add2="https://lush.co.kr/data/goods/21/11/45/1000001958/1000001958_main_057.jpg">
													<a
														href="../goods/goods_view.php?goodsNo=1000001958&amp;mtn=%5E%7C%5E%5E%7C%5E">
														<span class="prdimg"><img
															src="https://lush.co.kr/data/goods/21/11/45/1000001958/1000001958_main_057.jpg"></span>
													</a> <span class="choice -moslow"> <a
														href="../goods/goods_view.php?goodsNo=1000001958&amp;mtn=%5E%7C%5E%5E%7C%5E"
														target="_blank" class="btn-open-win -moslow" type="button"
														data-goods-no="1000001958"><span
															class="ti ti-layout-media-center-alt -moslow"></span><span
															class="hand icon-name">새창열기</span></a> <!--
									<a class="wish btn-add-wish1 -moslow" data-goods-no="1000001958" href="#jjimA"><span class="ti ti-heart -moslow"></span><span class="icon-name">찜하기</span></a>
									<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart1 -moslow" data-mode="cartIn" data-goods-no="1000001958"><span class="ti ti-bag -moslow"></span><span class="icon-name">장바구니</span></a>
									-->
													</span>
												</div>
												<div class="prdinfo">
													<div class="conditions">
														<span class="hot"> <img
															src="https://lush.co.kr/data/icon/goods_icon/icon_new.png"
															alt="new" title="new" class="middle"> <img
															src="https://lush.co.kr/data/icon/goods_icon/icon_local.png"
															alt="국내제조" title="국내제조" class="middle">
														</span>
													</div>
													<div class="txt">
														<span class="brand"> <strong>[러쉬]</strong>
														</span> <a
															href="../goods/goods_view.php?goodsNo=1000001958&amp;mtn=%5E%7C%5E%5E%7C%5E">
															<span class="prdName">마스크 오브 매그너민티 셀프-프리저빙
																125g/315g</span><span class="shotdesc">#천연원재료 #더부드럽게</span>
														</a>
													</div>
													<div class="price gd-default">
														<span class="cost"> <strong>￦ 20,000</strong>
														</span>
													</div>
													<div class="display-field"></div>

												</div>
											</div>
										</div>
									</div>
									<div
										style="float: left; list-style: none; position: relative; width: 280px; margin-right: 20px;"
										class="bx-clone" aria-hidden="true">
										<div class="space">
											<div class="box">

												<div class="thumbnail"
													data-image-magnify="/data/goods/11/01/20/15/15_magnify_017.jpg"
													data-image-detail="/data/goods/11/01/20/15/15_detail_056.jpg"
													data-image-list="/data/goods/11/01/20/15/15_list_013.jpg"
													data-image-main="/data/goods/11/01/20/15/15_main_074.jpg"
													data-image-add1="/data/goods/11/01/20/15/15_add1_054.jpg"
													data-image-add2="/data/goods/11/01/20/15/15_add2_016.jpg">
													<a
														href="../goods/goods_view.php?goodsNo=15&amp;mtn=%5E%7C%5E%5E%7C%5E">
														<span class="prdimg"><img
															src="/data/goods/11/01/20/15/15_main_074.jpg"></span>
													</a> <span class="choice -moslow"> <a
														href="../goods/goods_view.php?goodsNo=15&amp;mtn=%5E%7C%5E%5E%7C%5E"
														target="_blank" class="btn-open-win -moslow" type="button"
														data-goods-no="15"><span
															class="ti ti-layout-media-center-alt -moslow"></span><span
															class="hand icon-name">새창열기</span></a> <!--
									<a class="wish btn-add-wish1 -moslow" data-goods-no="15" href="#jjimA"><span class="ti ti-heart -moslow"></span><span class="icon-name">찜하기</span></a>
									<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart1 -moslow" data-mode="cartIn" data-goods-no="15"><span class="ti ti-bag -moslow"></span><span class="icon-name">장바구니</span></a>
									-->
													</span>
												</div>
												<div class="prdinfo">
													<div class="conditions">
														<span class="hot"> <img
															src="/data/icon/goods_icon/icon_vegan.png" alt="vegan"
															title="vegan" class="middle">
														</span>
													</div>
													<div class="txt">
														<span class="brand"> <strong>[러쉬]</strong>
														</span> <a
															href="../goods/goods_view.php?goodsNo=15&amp;mtn=%5E%7C%5E%5E%7C%5E">
															<span class="prdName">대디-오 100g/250g/500g</span><span
															class="shotdesc">#오래머무는잔향 #베스트샴푸</span>
														</a>
													</div>
													<div class="price gd-default">
														<span class="cost"> <strong>￦ 19,000</strong>
														</span>
													</div>
													<div class="display-field"></div>

												</div>
											</div>
										</div>
									</div>

									<div
										style="float: left; list-style: none; position: relative; width: 280px; margin-right: 20px;"
										class="bx-clone" aria-hidden="true">
										<div class="space">
											<div class="box">

												<div class="thumbnail"
													data-image-magnify="/data/goods/17/05/30/241/241_magnify_077.jpg"
													data-image-detail="/data/goods/17/05/30/241/241_detail_073.jpg"
													data-image-list="/data/goods/17/05/30/241/241_list_098.jpg"
													data-image-main="/data/goods/17/05/30/241/241_main_049.jpg"
													data-image-add1="/data/goods/17/05/30/241/241_add1_072.jpg"
													data-image-add2="/data/goods/17/05/30/241/241_add2_07.jpg">
													<a
														href="../goods/goods_view.php?goodsNo=241&amp;mtn=%5E%7C%5E%5E%7C%5E">
														<span class="prdimg"><img
															src="/data/goods/17/05/30/241/241_main_049.jpg"></span>
													</a> <span class="choice -moslow"> <a
														href="../goods/goods_view.php?goodsNo=241&amp;mtn=%5E%7C%5E%5E%7C%5E"
														target="_blank" class="btn-open-win -moslow" type="button"
														data-goods-no="241"><span
															class="ti ti-layout-media-center-alt -moslow"></span><span
															class="hand icon-name">새창열기</span></a> <!--
									<a class="wish btn-add-wish1 -moslow" data-goods-no="241" href="#jjimA"><span class="ti ti-heart -moslow"></span><span class="icon-name">찜하기</span></a>
									<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart1 -moslow" data-mode="cartIn" data-goods-no="241"><span class="ti ti-bag -moslow"></span><span class="icon-name">장바구니</span></a>
									-->
													</span>
												</div>
												<div class="prdinfo">
													<div class="conditions">
														<span class="hot"> <img
															src="/data/icon/goods_icon/icon_vegan.png" alt="vegan"
															title="vegan" class="middle">
														</span>
													</div>
													<div class="txt">
														<span class="brand"> <strong>[러쉬]</strong>
														</span> <a
															href="../goods/goods_view.php?goodsNo=241&amp;mtn=%5E%7C%5E%5E%7C%5E">
															<span class="prdName">뉴</span><span class="shotdesc">#착한고체샴푸
																#뿌리튼튼</span>
														</a>
													</div>
													<div class="price gd-default">
														<span class="cost"> <strong>￦ 18,000</strong>
														</span>
													</div>
													<div class="display-field"></div>

												</div>
											</div>
										</div>
									</div>
<!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
<!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
<!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
									<div class="mid1"
										style="float: left; list-style: none; position: relative; width: 280px; margin-right: 20px;"
										aria-hidden="false">
										<div class="space">
											<div class="box">

												<div class="thumbnail"
													data-image-magnify="/data/goods/16/03/18/174/174_magnify_072.jpg"
													data-image-detail="/data/goods/16/03/18/174/174_detail_082.jpg"
													data-image-list="/data/goods/16/03/18/174/174_list_06.jpg"
													data-image-main="/data/goods/16/03/18/174/174_main_086.jpg"
													data-image-add1="/data/goods/16/03/18/174/174_add1_098.jpg"
													data-image-add2="/data/goods/16/03/18/174/174_add2_078.jpg">
													<a
														href="http://localhost/product/select?num=5">
														<span class="prdimg"><img
															src="https://www.lush.co.kr/data/goods/16/03/18/174/174_main_086.jpg"></span>
													</a> <span class="choice -moslow"> <a
														href="http://localhost/product/select?num=5"
														target="_blank" class="btn-open-win -moslow" type="button"
														data-goods-no="174"><span
															class="ti ti-layout-media-center-alt -moslow"></span><span
															class="hand icon-name">새창열기</span></a> <!--
									<a class="wish btn-add-wish1 -moslow" data-goods-no="174" href="#jjimA"><span class="ti ti-heart -moslow"></span><span class="icon-name">찜하기</span></a>
									<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart1 -moslow" data-mode="cartIn" data-goods-no="174"><span class="ti ti-bag -moslow"></span><span class="icon-name">장바구니</span></a>
									-->
													</span>
												</div>
												<div class="prdinfo">
													<div class="conditions">
														<span class="hot"> <img
															src="http://localhost/product/select?num=5" alt="vegan"
															title="vegan" class="middle">
														</span>
													</div>
													<div class="txt">
														<span class="brand"> <strong>[러쉬]</strong>
														</span> <a
															href="http://localhost/product/select?num=5">
															<span class="prdName">인터갈락틱</span><span class="shotdesc">#배쓰밤
																#환상적인우주느낌</span>
														</a>
													</div>
													<div class="price gd-default">
														<span class="cost"> <strong>￦ 17,000</strong>
														</span>
													</div>
													<div class="display-field"></div>

												</div>
											</div>
										</div>
									</div>
									

									<div class="mid1"
										style="float: left; list-style: none; position: relative; width: 280px; margin-right: 20px;"
										aria-hidden="false">
										<div class="space">
											<div class="box">

												<div class="thumbnail"
													data-image-magnify="/data/goods/17/08/16/246/246_magnify_074.jpg"
													data-image-detail="/data/goods/17/08/16/246/246_detail_070.jpg"
													data-image-list="/data/goods/17/08/16/246/246_list_060.jpg"
													data-image-main="/data/goods/17/08/16/246/246_main_022.jpg"
													data-image-add1="/data/goods/17/08/16/246/246_add1_070.jpg"
													data-image-add2="/data/goods/17/08/16/246/246_add2_025.jpg">
													<a
														href="http://localhost/product/select?num=3">
														<span class="prdimg"><img
															src="https://lush.co.kr/data/goods/17/08/16/246/246_main_022.jpg"></span>
													</a> <span class="choice -moslow"> <a
														href="http://localhost/product/select?num=3"
														target="_blank" class="btn-open-win -moslow" type="button"
														data-goods-no="246"><span
															class="ti ti-layout-media-center-alt -moslow"></span><span
															class="hand icon-name">새창열기</span></a> <!--
									<a class="wish btn-add-wish1 -moslow" data-goods-no="246" href="#jjimA"><span class="ti ti-heart -moslow"></span><span class="icon-name">찜하기</span></a>
									<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart1 -moslow" data-mode="cartIn" data-goods-no="246"><span class="ti ti-bag -moslow"></span><span class="icon-name">장바구니</span></a>
									-->
													</span>
												</div>
												<div class="prdinfo">
													<div class="conditions">
														<span class="hot"> <img
															src="http://localhost/product/select?num=3" alt="프레쉬"
															title="프레쉬" class="middle"> <img
															src="http://localhost/product/select?num=3" alt="vegan"
															title="vegan" class="middle">
														</span>
													</div>
													<div class="txt">
														<span class="brand"> <strong>[러쉬]</strong>
														</span> <a
															href="http://localhost/product/select?num=3">
															<span class="prdName">트와일라잇</span><span
															class="shotdesc">#스테디셀러 #뒤돌아보는향 #재구매각</span>
														</a>
													</div>
													<div class="price gd-default">
														<span class="cost"> <strong>￦ 50,000</strong>
														</span>
													</div>
													<div class="display-field"></div>

												</div>
											</div>
										</div>
									</div>

									<div class="mid1"
										style="float: left; list-style: none; position: relative; width: 280px; margin-right: 20px;"
										aria-hidden="false">
										<div class="space">
											<div class="box">

												<div class="thumbnail"
													data-image-magnify="/data/goods/11/01/25/88/88_magnify_01.jpg"
													data-image-detail="/data/goods/11/01/25/88/88_detail_056.jpg"
													data-image-list="/data/goods/11/01/25/88/88_list_07.jpg"
													data-image-main="/data/goods/11/01/25/88/88_main_058.jpg"
													data-image-add1="/data/goods/11/01/25/88/88_add1_010.jpg"
													data-image-add2="/data/goods/11/01/25/88/88_add2_098.jpg">
													<a
														href="http://localhost/product/select?num=4">
														<span class="prdimg"><img
															src="https://lush.co.kr/data/goods/11/01/25/88/88_main_058.jpg"></span>
													</a> <span class="choice -moslow"> <a
														href="http://localhost/product/select?num=4"
														target="_blank" class="btn-open-win -moslow" type="button"
														data-goods-no="88"><span
															class="ti ti-layout-media-center-alt -moslow"></span><span
															class="hand icon-name">새창열기</span></a> <!--
									<a class="wish btn-add-wish1 -moslow" data-goods-no="88" href="#jjimA"><span class="ti ti-heart -moslow"></span><span class="icon-name">찜하기</span></a>
									<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart1 -moslow" data-mode="cartIn" data-goods-no="88"><span class="ti ti-bag -moslow"></span><span class="icon-name">장바구니</span></a>
									-->
													</span>
												</div>
												<div class="prdinfo">
													<div class="conditions">
														<span class="hot"> <img
															src="http://localhost/product/select?num=4" alt="국내제조"
															title="국내제조" class="middle"> <img
															src="http://localhost/product/select?num=4" alt="vegan"
															title="vegan" class="middle">
														</span>
													</div>
													<div class="txt">
														<span class="brand"> <strong>[러쉬]</strong>
														</span> <a
															href="http://localhost/product/select?num=4">
															<span class="prdName">챠콜</span><span class="shotdesc">#유명한숯비누
																#바로그제품 #맑은피부</span>
														</a>
													</div>
													<div class="price gd-default">
														<span class="cost"> <strong>￦ 18,000</strong>
														</span>
													</div>
													<div class="display-field"></div>

												</div>
											</div>
										</div>
									</div>

									<div class="mid2"									
										style="float: left; list-style: none; position: relative; width: 280px; margin-right: 20px;"
										aria-hidden="false">
										<div class="space">
											<div class="box">

												<div class="thumbnail"
													data-image-magnify="/data/goods/21/11/45/1000001958/1000001958_magnify_06.jpg"
													data-image-detail="/data/goods/21/11/45/1000001958/1000001958_detail_02.jpg"
													data-image-list="/data/goods/21/11/45/1000001958/1000001958_list_094.jpg"
													data-image-main="/data/goods/21/11/45/1000001958/1000001958_main_057.jpg"
													data-image-add1="/data/goods/21/11/45/1000001958/1000001958_add1_051.jpg"
													data-image-add2="/data/goods/21/11/45/1000001958/1000001958_add2_053.jpg">
													<a
														href="../goods/goods_view.php?goodsNo=1000001958&amp;mtn=%5E%7C%5E%5E%7C%5E">
														<span class="prdimg"><img
															src="https://lush.co.kr/data/goods/21/11/45/1000001958/1000001958_main_057.jpg"></span>
													</a> <span class="choice -moslow"> <a
														href="../goods/goods_view.php?goodsNo=1000001958&amp;mtn=%5E%7C%5E%5E%7C%5E"
														target="_blank" class="btn-open-win -moslow" type="button"
														data-goods-no="1000001958"><span
															class="ti ti-layout-media-center-alt -moslow"></span><span
															class="hand icon-name">새창열기</span></a> <!--
									<a class="wish btn-add-wish1 -moslow" data-goods-no="1000001958" href="#jjimA"><span class="ti ti-heart -moslow"></span><span class="icon-name">찜하기</span></a>
									<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart1 -moslow" data-mode="cartIn" data-goods-no="1000001958"><span class="ti ti-bag -moslow"></span><span class="icon-name">장바구니</span></a>
									-->
													</span>
												</div>
												<div class="prdinfo">
													<div class="conditions">
														<span class="hot"> <img
															src="/data/icon/goods_icon/icon_new.png" alt="new"
															title="new" class="middle"> <img
															src="/data/icon/goods_icon/icon_local.png" alt="국내제조"
															title="국내제조" class="middle">
														</span>
													</div>
													<div class="txt">
														<span class="brand"> <strong>[러쉬]</strong>
														</span> <a
															href="../goods/goods_view.php?goodsNo=1000001958&amp;mtn=%5E%7C%5E%5E%7C%5E">
															<span class="prdName">마스크 오브 매그너민티 셀프-프리저빙
																125g/315g</span><span class="shotdesc">#천연원재료 #더부드럽게</span>
														</a>
													</div>
													<div class="price gd-default">
														<span class="cost"> <strong>￦ 20,000</strong>
														</span>
													</div>
													<div class="display-field"></div>

												</div>
											</div>
										</div>
									</div>

									<div class="mid2"
										style="float: left; list-style: none; position: relative; width: 280px; margin-right: 20px;"
										aria-hidden="false">
										<div class="space">
											<div class="box">

												<div class="thumbnail"
													data-image-magnify="/data/goods/11/01/20/76/76_magnify_016.jpg"
													data-image-detail="/data/goods/11/01/20/76/76_detail_043.jpg"
													data-image-list="/data/goods/11/01/20/76/76_list_037.jpg"
													data-image-main="/data/goods/11/01/20/76/76_main_063.jpg"
													data-image-add1="/data/goods/11/01/20/76/76_add1_041.jpg"
													data-image-add2="/data/goods/11/01/20/76/76_add2_021.jpg">
													<a
														href="../goods/goods_view.php?goodsNo=76&amp;mtn=%5E%7C%5E%5E%7C%5E">
														<span class="prdimg"><img
															src="https://www.lush.co.kr/data/goods/11/01/20/76/76_main_063.jpg"></span>
													</a> <span class="choice -moslow"> <a
														href="../goods/goods_view.php?goodsNo=76&amp;mtn=%5E%7C%5E%5E%7C%5E"
														target="_blank" class="btn-open-win -moslow" type="button"
														data-goods-no="76"><span
															class="ti ti-layout-media-center-alt -moslow"></span><span
															class="hand icon-name">새창열기</span></a> <!--
									<a class="wish btn-add-wish1 -moslow" data-goods-no="76" href="#jjimA"><span class="ti ti-heart -moslow"></span><span class="icon-name">찜하기</span></a>
									<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart1 -moslow" data-mode="cartIn" data-goods-no="76"><span class="ti ti-bag -moslow"></span><span class="icon-name">장바구니</span></a>
									-->
													</span>
												</div>
												<div class="prdinfo">
													<div class="conditions">
														<span class="hot"> <img
															src="/data/icon/goods_icon/icon_local.png" alt="국내제조"
															title="국내제조" class="middle"> <img
															src="/data/icon/goods_icon/icon_vegan.png" alt="vegan"
															title="vegan" class="middle">
														</span>
													</div>
													<div class="txt">
														<span class="brand"> <strong>[러쉬]</strong>
														</span> <a
															href="../goods/goods_view.php?goodsNo=76&amp;mtn=%5E%7C%5E%5E%7C%5E">
															<span class="prdName">카타스트로피 코스메틱</span><span
															class="shotdesc">#블루베리의촉촉함 #슈퍼푸드블루베리</span>
														</a>
													</div>
													<div class="price gd-default">
														<span class="cost"> <strong>￦ 25,000</strong>
														</span>
													</div>
													<div class="display-field"></div>

												</div>
											</div>
										</div>
									</div>

									<div class="mid2"
										style="float: left; list-style: none; position: relative; width: 280px; margin-right: 20px;"
										aria-hidden="false">
										<div class="space">
											<div class="box">

												<div class="thumbnail"
													data-image-magnify="/data/goods/11/01/20/53/53_magnify_02.jpg"
													data-image-detail="/data/goods/11/01/20/53/53_detail_091.jpg"
													data-image-list="/data/goods/11/01/20/53/53_list_063.jpg"
													data-image-main="/data/goods/11/01/20/53/53_main_044.jpg"
													data-image-add1="/data/goods/11/01/20/53/53_add1_014.jpg"
													data-image-add2="/data/goods/11/01/20/53/53_add2_011.jpg">
													<a
														href="../goods/goods_view.php?goodsNo=53&amp;mtn=%5E%7C%5E%5E%7C%5E">
														<span class="prdimg"><img
															src="https://www.lush.co.kr/data/goods/11/01/20/53/53_main_044.jpg"></span>
													</a> <span class="choice -moslow"> <a
														href="../goods/goods_view.php?goodsNo=53&amp;mtn=%5E%7C%5E%5E%7C%5E"
														target="_blank" class="btn-open-win -moslow" type="button"
														data-goods-no="53"><span
															class="ti ti-layout-media-center-alt -moslow"></span><span
															class="hand icon-name">새창열기</span></a> <!--
									<a class="wish btn-add-wish1 -moslow" data-goods-no="53" href="#jjimA"><span class="ti ti-heart -moslow"></span><span class="icon-name">찜하기</span></a>
									<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart1 -moslow" data-mode="cartIn" data-goods-no="53"><span class="ti ti-bag -moslow"></span><span class="icon-name">장바구니</span></a>
									-->
													</span>
												</div>
												<div class="prdinfo">
													<div class="conditions">
														<span class="hot"> <img
															src="/data/icon/goods_icon/icon_vegan.png" alt="vegan"
															title="vegan" class="middle">
														</span>
													</div>
													<div class="txt">
														<span class="brand"> <strong>[러쉬]</strong>
														</span> <a
															href="../goods/goods_view.php?goodsNo=53&amp;mtn=%5E%7C%5E%5E%7C%5E">
															<span class="prdName">씨닉</span><span class="shotdesc">#샴푸바
																#바닷소금듬뿍</span>
														</a>
													</div>
													<div class="price gd-default">
														<span class="cost"> <strong>￦ 18,000</strong>
														</span>
													</div>
													<div class="display-field"></div>

												</div>
											</div>
										</div>
									</div>

									<div class="mid3"
										style="float: left; list-style: none; position: relative; width: 280px; margin-right: 20px;"
										aria-hidden="false">
										<div class="space">
											<div class="box">

												<div class="thumbnail"
													data-image-add1="/data/goods/18/11/48/1000000026/1000000026_add1_04.jpg"
													data-image-add2="/data/goods/18/11/48/1000000026/1000000026_add2_050.jpg"
													data-image-list="/data/goods/18/11/48/1000000026/1000000026_list_056.jpg"
													data-image-main="/data/goods/18/11/48/1000000026/1000000026_main_03.jpg"
													data-image-detail="/data/goods/18/11/48/1000000026/1000000026_detail_084.jpg"
													data-image-magnify="/data/goods/18/11/48/1000000026/1000000026_magnify_072.jpg">
													<a
														href="../goods/goods_view.php?goodsNo=1000000026&amp;mtn=%5E%7C%5E%5E%7C%5E">
														<span class="prdimg"><img
															src="https://www.lush.co.kr/data/goods/18/11/48/1000000026/1000000026_main_03.jpg"></span>
													</a> <span class="choice -moslow"> <a
														href="../goods/goods_view.php?goodsNo=1000000026&amp;mtn=%5E%7C%5E%5E%7C%5E"
														target="_blank" class="btn-open-win -moslow" type="button"
														data-goods-no="1000000026"><span
															class="ti ti-layout-media-center-alt -moslow"></span><span
															class="hand icon-name">새창열기</span></a> <!--
									<a class="wish btn-add-wish1 -moslow" data-goods-no="1000000026" href="#jjimA"><span class="ti ti-heart -moslow"></span><span class="icon-name">찜하기</span></a>
									<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart1 -moslow" data-mode="cartIn" data-goods-no="1000000026"><span class="ti ti-bag -moslow"></span><span class="icon-name">장바구니</span></a>
									-->
													</span>
												</div>
												<div class="prdinfo">
													<div class="conditions">
														<span class="hot"> <img
															src="/data/icon/goods_icon/icon_vegan.png" alt="vegan"
															title="vegan" class="middle">
														</span>
													</div>
													<div class="txt">
														<span class="brand"> <strong>[러쉬]</strong>
														</span> <a
															href="../goods/goods_view.php?goodsNo=1000000026&amp;mtn=%5E%7C%5E%5E%7C%5E">
															<span class="prdName">매직 크리스탈스 300g/600g</span><span
															class="shotdesc">#스크럽 #민트의마법 #시원해져라</span>
														</a>
													</div>
													<div class="price gd-default">
														<span class="cost"> <strong>￦ 32,000</strong>
														</span>
													</div>
													<div class="display-field"></div>

												</div>
											</div>
										</div>
									</div>

									<div class="mid3"
										style="float: left; list-style: none; position: relative; width: 280px; margin-right: 20px;"
										aria-hidden="false">
										<div class="space">
											<div class="box">

												<div class="thumbnail"
													data-image-magnify="/data/goods/12/03/07/97/97_magnify_035.jpg"
													data-image-detail="/data/goods/12/03/07/97/97_detail_057.jpg"
													data-image-list="/data/goods/12/03/07/97/97_list_071.jpg"
													data-image-main="/data/goods/12/03/07/97/97_main_074.jpg"
													data-image-add1="/data/goods/12/03/07/97/97_add1_073.jpg"
													data-image-add2="/data/goods/12/03/07/97/97_add2_064.jpg">
													<a
														href="../goods/goods_view.php?goodsNo=97&amp;mtn=%5E%7C%5E%5E%7C%5E">
														<span class="prdimg"><img
															src="https://www.lush.co.kr/data/goods/12/03/07/97/97_main_074.jpg"></span>
													</a> <span class="choice -moslow"> <a
														href="../goods/goods_view.php?goodsNo=97&amp;mtn=%5E%7C%5E%5E%7C%5E"
														target="_blank" class="btn-open-win -moslow" type="button"
														data-goods-no="97"><span
															class="ti ti-layout-media-center-alt -moslow"></span><span
															class="hand icon-name">새창열기</span></a> <!--
									<a class="wish btn-add-wish1 -moslow" data-goods-no="97" href="#jjimA"><span class="ti ti-heart -moslow"></span><span class="icon-name">찜하기</span></a>
									<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart1 -moslow" data-mode="cartIn" data-goods-no="97"><span class="ti ti-bag -moslow"></span><span class="icon-name">장바구니</span></a>
									-->
													</span>
												</div>
												<div class="prdinfo">
													<div class="conditions">
														<span class="hot"> <img
															src="/data/icon/goods_icon/icon_local.png" alt="국내제조"
															title="국내제조" class="middle">
														</span>
													</div>
													<div class="txt">
														<span class="brand"> <strong>[러쉬]</strong>
														</span> <a
															href="../goods/goods_view.php?goodsNo=97&amp;mtn=%5E%7C%5E%5E%7C%5E">
															<span class="prdName">마스크 오브 매그너민티 125g/315g</span><span
															class="shotdesc">#꿀의촉촉함 #데일리팩 #민트팩</span>
														</a>
													</div>
													<div class="price gd-default">
														<span class="cost"> <strong>￦ 20,000</strong>
														</span>
													</div>
													<div class="display-field"></div>

												</div>
											</div>
										</div>
									</div>

									<div class="mid3"
										style="float: left; list-style: none; position: relative; width: 280px; margin-right: 20px;"
										aria-hidden="false">
										<div class="space">
											<div class="box">

												<div class="thumbnail"
													data-image-magnify="/data/goods/17/11/01/342/342_magnify_050.jpg"
													data-image-detail="/data/goods/17/11/01/342/342_detail_068.jpg"
													data-image-add1="/data/goods/17/11/01/342/342_add1_042.jpg"
													data-image-add2="/data/goods/17/11/01/342/342_add2_011.jpg"
													data-image-list="/data/goods/17/11/01/342/342_list_061.jpg"
													data-image-main="/data/goods/17/11/01/342/342_main_041.jpg">
													<a
														href="../goods/goods_view.php?goodsNo=342&amp;mtn=%5E%7C%5E%5E%7C%5E">
														<span class="prdimg"><img
															src="https://www.lush.co.kr/data/goods/17/11/01/342/342_main_041.jpg"></span>
													</a> <span class="choice -moslow"> <a
														href="../goods/goods_view.php?goodsNo=342&amp;mtn=%5E%7C%5E%5E%7C%5E"
														target="_blank" class="btn-open-win -moslow" type="button"
														data-goods-no="342"><span
															class="ti ti-layout-media-center-alt -moslow"></span><span
															class="hand icon-name">새창열기</span></a> <!--
									<a class="wish btn-add-wish1 -moslow" data-goods-no="342" href="#jjimA"><span class="ti ti-heart -moslow"></span><span class="icon-name">찜하기</span></a>
									<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart1 -moslow" data-mode="cartIn" data-goods-no="342"><span class="ti ti-bag -moslow"></span><span class="icon-name">장바구니</span></a>
									-->
													</span>
												</div>
												<div class="prdinfo">
													<div class="conditions">
														<span class="hot"> <img
															src="/data/icon/goods_icon/icon_vegan.png" alt="vegan"
															title="vegan" class="middle">
														</span>
													</div>
													<div class="txt">
														<span class="brand"> <strong>[러쉬]</strong>
														</span> <a
															href="../goods/goods_view.php?goodsNo=342&amp;mtn=%5E%7C%5E%5E%7C%5E">
															<span class="prdName">더 올리브 브랜치 100g/250g/500g</span><span
															class="shotdesc">#오일듬뿍샤워젤 #보습샤워시작</span>
														</a>
													</div>
													<div class="price gd-default">
														<span class="cost"> <strong>￦ 17,000</strong>
														</span>
													</div>
													<div class="display-field"></div>

												</div>
											</div>
										</div>
									</div>

									<div class="mid4"
										style="float: left; list-style: none; position: relative; width: 280px; margin-right: 20px;"
										aria-hidden="false">
										<div class="space">
											<div class="box">

												<div class="thumbnail"
													data-image-magnify="/data/goods/11/01/20/37/37_magnify_029.jpg"
													data-image-detail="/data/goods/11/01/20/37/37_detail_078.jpg"
													data-image-list="/data/goods/11/01/20/37/37_list_055.jpg"
													data-image-main="/data/goods/11/01/20/37/37_main_019.jpg"
													data-image-add1="/data/goods/11/01/20/37/37_add1_017.jpg"
													data-image-add2="/data/goods/11/01/20/37/37_add2_055.jpg">
													<a
														href="../goods/goods_view.php?goodsNo=37&amp;mtn=%5E%7C%5E%5E%7C%5E">
														<span class="prdimg"><img
															src="https://www.lush.co.kr/data/goods/11/01/20/37/37_main_019.jpg"></span>
													</a> <span class="choice -moslow"> <a
														href="../goods/goods_view.php?goodsNo=37&amp;mtn=%5E%7C%5E%5E%7C%5E"
														target="_blank" class="btn-open-win -moslow" type="button"
														data-goods-no="37"><span
															class="ti ti-layout-media-center-alt -moslow"></span><span
															class="hand icon-name">새창열기</span></a> <!--
									<a class="wish btn-add-wish1 -moslow" data-goods-no="37" href="#jjimA"><span class="ti ti-heart -moslow"></span><span class="icon-name">찜하기</span></a>
									<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart1 -moslow" data-mode="cartIn" data-goods-no="37"><span class="ti ti-bag -moslow"></span><span class="icon-name">장바구니</span></a>
									-->
													</span>
												</div>
												<div class="prdinfo">
													<div class="conditions">
														<span class="hot"> <img
															src="/data/icon/goods_icon/icon_local.png" alt="국내제조"
															title="국내제조" class="middle">
														</span>
													</div>
													<div class="txt">
														<span class="brand"> <strong>[러쉬]</strong>
														</span> <a
															href="../goods/goods_view.php?goodsNo=37&amp;mtn=%5E%7C%5E%5E%7C%5E">
															<span class="prdName">비비 씨위드</span><span class="shotdesc">#장미의촉촉함
																#해초팩# 건강한피부</span>
														</a>
													</div>
													<div class="price gd-default">
														<span class="cost"> <strong>￦ 25,000</strong>
														</span>
													</div>
													<div class="display-field"></div>

												</div>
											</div>
										</div>
									</div>

									<div class="mid4"
										style="float: left; list-style: none; position: relative; width: 280px; margin-right: 20px;"
										aria-hidden="false">
										<div class="space">
											<div class="box">

												<div class="thumbnail"
													data-image-magnify="/data/goods/11/01/20/15/15_magnify_017.jpg"
													data-image-detail="/data/goods/11/01/20/15/15_detail_056.jpg"
													data-image-list="/data/goods/11/01/20/15/15_list_013.jpg"
													data-image-main="/data/goods/11/01/20/15/15_main_074.jpg"
													data-image-add1="/data/goods/11/01/20/15/15_add1_054.jpg"
													data-image-add2="/data/goods/11/01/20/15/15_add2_016.jpg">
													<a
														href="../goods/goods_view.php?goodsNo=15&amp;mtn=%5E%7C%5E%5E%7C%5E">
														<span class="prdimg"><img
															src="https://www.lush.co.kr/data/goods/11/01/20/15/15_main_074.jpg"></span>
													</a> <span class="choice -moslow"> <a
														href="../goods/goods_view.php?goodsNo=15&amp;mtn=%5E%7C%5E%5E%7C%5E"
														target="_blank" class="btn-open-win -moslow" type="button"
														data-goods-no="15"><span
															class="ti ti-layout-media-center-alt -moslow"></span><span
															class="hand icon-name">새창열기</span></a> <!--
									<a class="wish btn-add-wish1 -moslow" data-goods-no="15" href="#jjimA"><span class="ti ti-heart -moslow"></span><span class="icon-name">찜하기</span></a>
									<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart1 -moslow" data-mode="cartIn" data-goods-no="15"><span class="ti ti-bag -moslow"></span><span class="icon-name">장바구니</span></a>
									-->
													</span>
												</div>
												<div class="prdinfo">
													<div class="conditions">
														<span class="hot"> <img
															src="/data/icon/goods_icon/icon_vegan.png" alt="vegan"
															title="vegan" class="middle">
														</span>
													</div>
													<div class="txt">
														<span class="brand"> <strong>[러쉬]</strong>
														</span> <a
															href="../goods/goods_view.php?goodsNo=15&amp;mtn=%5E%7C%5E%5E%7C%5E">
															<span class="prdName">대디-오 100g/250g/500g</span><span
															class="shotdesc">#오래머무는잔향 #베스트샴푸</span>
														</a>
													</div>
													<div class="price gd-default">
														<span class="cost"> <strong>￦ 19,000</strong>
														</span>
													</div>
													<div class="display-field"></div>

												</div>
											</div>
										</div>
									</div>

									<div class="mid4"
										style="float: left; list-style: none; position: relative; width: 280px; margin-right: 20px;"
										aria-hidden="false">
										<div class="space">
											<div class="box">

												<div class="thumbnail"
													data-image-magnify="/data/goods/17/05/30/241/241_magnify_077.jpg"
													data-image-detail="/data/goods/17/05/30/241/241_detail_073.jpg"
													data-image-list="/data/goods/17/05/30/241/241_list_098.jpg"
													data-image-main="/data/goods/17/05/30/241/241_main_049.jpg"
													data-image-add1="/data/goods/17/05/30/241/241_add1_072.jpg"
													data-image-add2="/data/goods/17/05/30/241/241_add2_07.jpg">
													<a
														href="../goods/goods_view.php?goodsNo=241&amp;mtn=%5E%7C%5E%5E%7C%5E">
														<span class="prdimg"><img
															src="https://www.lush.co.kr/data/goods/17/05/30/241/241_main_049.jpg"></span>
													</a> <span class="choice -moslow"> <a
														href="../goods/goods_view.php?goodsNo=241&amp;mtn=%5E%7C%5E%5E%7C%5E"
														target="_blank" class="btn-open-win -moslow" type="button"
														data-goods-no="241"><span
															class="ti ti-layout-media-center-alt -moslow"></span><span
															class="hand icon-name">새창열기</span></a> <!--
									<a class="wish btn-add-wish1 -moslow" data-goods-no="241" href="#jjimA"><span class="ti ti-heart -moslow"></span><span class="icon-name">찜하기</span></a>
									<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart1 -moslow" data-mode="cartIn" data-goods-no="241"><span class="ti ti-bag -moslow"></span><span class="icon-name">장바구니</span></a>
									-->
													</span>
												</div>
												<div class="prdinfo">
													<div class="conditions">
														<span class="hot"> <img
															src="/data/icon/goods_icon/icon_vegan.png" alt="vegan"
															title="vegan" class="middle">
														</span>
													</div>
													<div class="txt">
														<span class="brand"> <strong>[러쉬]</strong>
														</span> <a
															href="../goods/goods_view.php?goodsNo=241&amp;mtn=%5E%7C%5E%5E%7C%5E">
															<span class="prdName">뉴</span><span class="shotdesc">#착한고체샴푸
																#뿌리튼튼</span>
														</a>
													</div>
													<div class="price gd-default">
														<span class="cost"> <strong>￦ 18,000</strong>
														</span>
													</div>
													<div class="display-field"></div>

												</div>
											</div>
										</div>
									</div>

									<div
										style="float: left; list-style: none; position: relative; width: 280px; margin-right: 20px;"
										class="bx-clone" aria-hidden="true">
										<div class="space">
											<div class="box">

												<div class="thumbnail"
													data-image-magnify="/data/goods/21/11/45/1000001958/1000001958_magnify_06.jpg"
													data-image-detail="/data/goods/21/11/45/1000001958/1000001958_detail_02.jpg"
													data-image-list="/data/goods/21/11/45/1000001958/1000001958_list_094.jpg"
													data-image-main="/data/goods/21/11/45/1000001958/1000001958_main_057.jpg"
													data-image-add1="/data/goods/21/11/45/1000001958/1000001958_add1_051.jpg"
													data-image-add2="/data/goods/21/11/45/1000001958/1000001958_add2_053.jpg">
													<a
														href="../goods/goods_view.php?goodsNo=1000001958&amp;mtn=%5E%7C%5E%5E%7C%5E">
														<span class="prdimg"><img
															src="/data/goods/21/11/45/1000001958/1000001958_main_057.jpg"></span>
													</a> <span class="choice -moslow"> <a
														href="../goods/goods_view.php?goodsNo=1000001958&amp;mtn=%5E%7C%5E%5E%7C%5E"
														target="_blank" class="btn-open-win -moslow" type="button"
														data-goods-no="1000001958"><span
															class="ti ti-layout-media-center-alt -moslow"></span><span
															class="hand icon-name">새창열기</span></a> <!--
									<a class="wish btn-add-wish1 -moslow" data-goods-no="1000001958" href="#jjimA"><span class="ti ti-heart -moslow"></span><span class="icon-name">찜하기</span></a>
									<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart1 -moslow" data-mode="cartIn" data-goods-no="1000001958"><span class="ti ti-bag -moslow"></span><span class="icon-name">장바구니</span></a>
									-->
													</span>
												</div>
												<div class="prdinfo">
													<div class="conditions">
														<span class="hot"> <img
															src="/data/icon/goods_icon/icon_new.png" alt="new"
															title="new" class="middle"> <img
															src="/data/icon/goods_icon/icon_local.png" alt="국내제조"
															title="국내제조" class="middle">
														</span>
													</div>
													<div class="txt">
														<span class="brand"> <strong>[러쉬]</strong>
														</span> <a
															href="../goods/goods_view.php?goodsNo=1000001958&amp;mtn=%5E%7C%5E%5E%7C%5E">
															<span class="prdName">마스크 오브 매그너민티 셀프-프리저빙
																125g/315g</span><span class="shotdesc">#천연원재료 #더부드럽게</span>
														</a>
													</div>
													<div class="price gd-default">
														<span class="cost"> <strong>￦ 20,000</strong>
														</span>
													</div>
													<div class="display-field"></div>

												</div>
											</div>
										</div>
									</div>

									<div
										style="float: left; list-style: none; position: relative; width: 280px; margin-right: 20px;"
										class="bx-clone" aria-hidden="true">
										<div class="space">
											<div class="box">

												<div class="thumbnail"
													data-image-magnify="/data/goods/17/08/16/246/246_magnify_074.jpg"
													data-image-detail="/data/goods/17/08/16/246/246_detail_070.jpg"
													data-image-list="/data/goods/17/08/16/246/246_list_060.jpg"
													data-image-main="/data/goods/17/08/16/246/246_main_022.jpg"
													data-image-add1="/data/goods/17/08/16/246/246_add1_070.jpg"
													data-image-add2="/data/goods/17/08/16/246/246_add2_025.jpg">
													<a
														href="../goods/goods_view.php?goodsNo=246&amp;mtn=%5E%7C%5E%5E%7C%5E">
														<span class="prdimg"><img
															src="/data/goods/17/08/16/246/246_main_022.jpg"></span>
													</a> <span class="choice -moslow"> <a
														href="../goods/goods_view.php?goodsNo=246&amp;mtn=%5E%7C%5E%5E%7C%5E"
														target="_blank" class="btn-open-win -moslow" type="button"
														data-goods-no="246"><span
															class="ti ti-layout-media-center-alt -moslow"></span><span
															class="hand icon-name">새창열기</span></a> <!--
									<a class="wish btn-add-wish1 -moslow" data-goods-no="246" href="#jjimA"><span class="ti ti-heart -moslow"></span><span class="icon-name">찜하기</span></a>
									<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart1 -moslow" data-mode="cartIn" data-goods-no="246"><span class="ti ti-bag -moslow"></span><span class="icon-name">장바구니</span></a>
									-->
													</span>
												</div>
												<div class="prdinfo">
													<div class="conditions">
														<span class="hot"> <img
															src="/data/icon/goods_icon/icon_fresh.png" alt="프레쉬"
															title="프레쉬" class="middle"> <img
															src="/data/icon/goods_icon/icon_vegan.png" alt="vegan"
															title="vegan" class="middle">
														</span>
													</div>
													<div class="txt">
														<span class="brand"> <strong>[러쉬]</strong>
														</span> <a
															href="../goods/goods_view.php?goodsNo=246&amp;mtn=%5E%7C%5E%5E%7C%5E">
															<span class="prdName">더티 보디 스프레이</span><span
															class="shotdesc">#스테디셀러 #뒤돌아보는향 #재구매각</span>
														</a>
													</div>
													<div class="price gd-default">
														<span class="cost"> <strong>￦ 50,000</strong>
														</span>
													</div>
													<div class="display-field"></div>

												</div>
											</div>
										</div>
									</div>

									<div
										style="float: left; list-style: none; position: relative; width: 280px; margin-right: 20px;"
										class="bx-clone" aria-hidden="true">
										<div class="space">
											<div class="box">

												<div class="thumbnail"
													data-image-magnify="/data/goods/11/01/25/88/88_magnify_01.jpg"
													data-image-detail="/data/goods/11/01/25/88/88_detail_056.jpg"
													data-image-list="/data/goods/11/01/25/88/88_list_07.jpg"
													data-image-main="/data/goods/11/01/25/88/88_main_058.jpg"
													data-image-add1="/data/goods/11/01/25/88/88_add1_010.jpg"
													data-image-add2="/data/goods/11/01/25/88/88_add2_098.jpg">
													<a
														href="../goods/goods_view.php?goodsNo=88&amp;mtn=%5E%7C%5E%5E%7C%5E">
														<span class="prdimg"><img
															src="/data/goods/11/01/25/88/88_main_058.jpg"></span>
													</a> <span class="choice -moslow"> <a
														href="../goods/goods_view.php?goodsNo=88&amp;mtn=%5E%7C%5E%5E%7C%5E"
														target="_blank" class="btn-open-win -moslow" type="button"
														data-goods-no="88"><span
															class="ti ti-layout-media-center-alt -moslow"></span><span
															class="hand icon-name">새창열기</span></a> <!--
									<a class="wish btn-add-wish1 -moslow" data-goods-no="88" href="#jjimA"><span class="ti ti-heart -moslow"></span><span class="icon-name">찜하기</span></a>
									<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart1 -moslow" data-mode="cartIn" data-goods-no="88"><span class="ti ti-bag -moslow"></span><span class="icon-name">장바구니</span></a>
									-->
													</span>
												</div>
												<div class="prdinfo">
													<div class="conditions">
														<span class="hot"> <img
															src="/data/icon/goods_icon/icon_local.png" alt="국내제조"
															title="국내제조" class="middle"> <img
															src="/data/icon/goods_icon/icon_vegan.png" alt="vegan"
															title="vegan" class="middle">
														</span>
													</div>
													<div class="txt">
														<span class="brand"> <strong>[러쉬]</strong>
														</span> <a
															href="../goods/goods_view.php?goodsNo=88&amp;mtn=%5E%7C%5E%5E%7C%5E">
															<span class="prdName">챠콜</span><span class="shotdesc">#유명한숯비누
																#바로그제품 #맑은피부</span>
														</a>
													</div>
													<div class="price gd-default">
														<span class="cost"> <strong>￦ 18,000</strong>
														</span>
													</div>
													<div class="display-field"></div>

												</div>
											</div>
										</div>
									</div>

								</div>
							</div>

							<div class="bx-controls bx-has-controls-direction bx-has-pager">
								<div class="bx-controls-direction">
									<a class="bx-prev" href="">Prev</a><a class="bx-next" href="">Next</a>
								</div>
								<div class="bx-pager bx-default-pager">
									<div class="bx-pager-item">
										<button data-slide-index="0" class="bx-pager-link active midbtn1"></button>
									</div>
									<div class="bx-pager-item">
										<button data-slide-index="1" class="bx-pager-link midbtn2"></button>
									</div>
									<div class="bx-pager-item">
										<button data-slide-index="2" class="bx-pager-link midbtn3"></button>
									</div>
									<div class="bx-pager-item">
										<button data-slide-index="3" class="bx-pager-link midbtn4"></button>
									</div>
								</div>
							</div>

						</div>
					</div>
					<div class="review" data-500="top: -160px;" data-700="top: -111px;"
						style="margin-top: 22.5px;">



						<div class="bx-wrapper">


							<input type="radio" name="slideInput" id="slideInput01"
								checked="checked"> <input type="radio" name="slideInput"
								id="slideInput02"> <input type="radio" name="slideInput"
								id="slideInput03"> <input type="radio" name="slideInput"
								id="slideInput04"> <input type="radio" name="slideInput"
								id="slideInput05"> <input type="radio" name="slideInput"
								id="slideInput06">


							<div class="mySlides last1">
								<ul class="slideList">
									<li><a
										href="#"><img
											src="https://lush.co.kr/data/skin/front/howling/img/banner/ecb0f342ba157e979b563230e4ea30c0_31163.jpg"
											alt="허벌리즘 리뷰" title="허벌리즘 리뷰"> <label
											for="slideInput06" class="left"></label><label
											for="slideInput02" class="right"></label>
											
											</a></li>
								</ul>

							</div>

							<div class="mySlides last2" style="display:none;">
								<ul class="slideList">
									<li><a
										href="#"><img
											src="https://lush.co.kr/data/skin/front/howling/img/banner/a66343424b23cf05d4030e16718640cd_46051.jpg"
											alt="팬지 솔리드 퍼퓸 _ 리뷰" title="팬지 솔리드 퍼퓸 _ 리뷰"> <label
											for="slideInput01" class="left"></label><label
											for="slideInput03" class="right"></label> </a></li>
								</ul>

							</div>

							<div class="mySlides last3" style="display:none;">
								<ul class="slideList">
									<li><a
										href="#"><img
											src="https://lush.co.kr/data/skin/front/howling/img/banner/d914d3b7fa14c180605388a7b7addb4f_62624.jpg"
											alt="더티 보디 스프레이_리뷰" title="더티 보디 스프레이_리뷰"> <label
											for="slideInput02" class="lef3"></label><label
											for="slideInput04" class="right"></label> </a></li>
								</ul>

							</div>

							<div class="mySlides last4" style="display:none;">
								<ul class="slideList">
									<li><a
										href="#"><img
											src="https://lush.co.kr/data/skin/front/howling/img/banner/2af29a9f30fb145691145caaf403bd13_97181.jpg"
											alt="마스크오브 매그너민티_리뷰" title="마스크오브 매그너민티_리뷰"> <label
											for="slideInput03" class="left"></label><label
											for="slideInput05" class="right"></label> </a></li>
								</ul>

							</div>

							<div class="mySlides last5" style="display:none;">
								<ul class="slideList">
									<li><a
										href="#"><img
											src="https://lush.co.kr/data/skin/front/howling/img/banner/6b48a921b85b73941297a439f2ddadaf_81975.jpg"
											alt="라임 바운티_리뷰" title="라임 바운티_리뷰"> <label
											for="slideInput04" class="left"></label><label
											for="slideInput06" class="right"></label> </a></li>
								</ul>

							</div>

						
							
							
							<div class="slider_count slider2_count">
								<em class="slider2_inx">1</em> / <span class="slider2_cou">5</span>
							</div>


						</div>
					</div>
					
				</div>
				

			</div>

			<div class="  main_wrap03">
				<div class="left">
					<!-- 주석 <div><iframe width="610" height="560" src="https://www.youtube.com/embed/oggJtlwh2zk" frameborder="0" allowfullscreen></iframe></div> -->
					<!-- 튜닝 : 메인동영상 -->
					<a
						href="http://localhost/campaign/insert"><img
						src="https://lush.co.kr/data/skin/front/howling/img/banner/eae8e90bf1150cd84c0aa557cb3a2bd2_44710.jpg"
						alt="동물대체시험법 서명 캠페인" title="동물대체시험법 서명 캠페인"></a>
				</div>
				<div class="right">
					<div class="right1">
						<a
							href="https://www.lush.co.kr/goods/goods_list.php?cateCd=001003004&amp;utm_source=&amp;utm_medium=&amp;utm_campaign=PC_3bn_massagebar_211007"><img
							src="https://lush.co.kr/data/skin/front/howling/img/banner/d4685cfd5d41bff7e3f04449fd6c637a_82831.gif"
							alt="마사지바" title="마사지바"></a>
					</div>
					<div class="right2">
						<p>
							<a
								href="https://www.lush.co.kr/board/view.php?&amp;bdId=article&amp;sno=273&amp;utm_source=&amp;utm_medium=&amp;utm_campaign=PC_4bn_newface_211126"><img
								src="https://lush.co.kr/data/skin/front/howling/img/banner/a61e55c037ea830f82fdda39db94e034_97823.jpg"
								alt="소셜 중단" title="소셜 중단"></a>
						</p>
						<p>
							<a
								href="https://lush.co.kr/board/view.php?period=current&amp;bdId=event&amp;sno=327&amp;utm_source=&amp;utm_medium=&amp;utm_campaign=M_4bn_review_211102"><img
								src="https://lush.co.kr/data/skin/front/howling/img/banner/c000e1a190da092aaeda2ae68bf1f145_17171.jpg"
								alt="11월 포토 리뷰 이벤트" title="11월 포토 리뷰 이벤트"></a>
						</p>
					</div>
				</div>
			</div>

			<div class="contents main_wrap04">
				<div class="inner_wrap">
					<dl>
						<dt>NEW 탱글드 헤어 트리트먼트</dt>
						<dd>전통 악기에서 영감을 받은 두피 트리트먼트로, 기분 좋은 낮잠에 빠져들듯 부드럽고 편안한 시간을
							선사합니다.</dd>
					</dl>
					<div class="img spa-bn-slide slick-initialized slick-slider"
						data-1600="top: -90px;" data-2000="top: -160px;"
						style="margin-top: -50px;">
						<div aria-live="polite" class="slick-list draggable">
							<div class="slick-track" role="listbox"
								style="opacity: 1; width: 380px;">
								<a
									href="http://localhost/spa/selectOne?num=28"
									class="slick-slide slick-current slick-active"
									data-slick-index="0" aria-hidden="false" tabindex="-1"
									role="option" aria-describedby="slick-slide00"
									style="width: 380px; position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1;"><img
									src="https://lush.co.kr/data/skin/front/howling/img/banner/c0863a61bfc67520d308249058a1a993_21455.gif"
									alt="NEW 탱글드 헤어        트리트먼트" title="NEW 탱글드 헤어        트리트먼트"></a>
							</div>
						</div>


					</div>








				</div>
			</div>

		</div>
	</div>
	<script type="text/javascript">
		$('.sb1')
				.click(
						function () {
							$('.sb1').addClass('active');
							$('.sb2').removeClass('active');
							$('.sb3').removeClass('active');
							$('.sb4').removeClass('active');
							$('.slider-area')
									.css(
											{
												"background" : "url(https://lush.co.kr/data/skin/front/howling/img/banner/slider_3305991155/a4718ce4ff4a9a1a7d0dfda13cac6252_44894.jpg)"
											});

						});

		$(".sb2")
				.click(
						function () {
							$('.sb2').addClass('active');
							$('.sb1').removeClass('active');
							$('.sb3').removeClass('active');
							$('.sb4').removeClass('active');
							$('.slider-area')
									.css(
											{
												"background" : "url(https://lush.co.kr/data/skin/front/howling/img/banner/slider_3305991155/0ef7d43343f7acaab5f0070eb27da89a_72013.jpg)"
											});

						});

		$(".sb3")
				.click(
						function () {
							$('.sb3').addClass('active');
							$('.sb2').removeClass('active');
							$('.sb1').removeClass('active');
							$('.sb4').removeClass('active');
							$('.slider-area')
									.css(
											{
												"background" : "url(https://lush.co.kr/data/skin/front/howling/img/banner/slider_3305991155/d00fdc84e1ac64b1d113e0de7167addf_59738.jpg)"
											});

						});

		$(".sb4")
				.click(
						function () {
							$('.sb4').addClass('active');
							$('.sb2').removeClass('active');
							$('.sb3').removeClass('active');
							$('.sb1').removeClass('active');
							$('.slider-area')
									.css(
											{
												"background" : "url(https://lush.co.kr/data/skin/front/howling/img/banner/slider_3305991155/a32e8dffbd1fb8d891f3b2e06b36c5eb_54719.jpg)"
											});
						});
		
		let sb = "sb";
	      let check = 2;
	      
	      var play = setInterval(function() {
	         sb = sb + check;
	         
	         $('.'+sb).trigger('click');
	         
	         sb = "sb";
	         if(check < 4) {
	            check = check + 1;
	         } else {
	            check = 1;
	         }

	      }, 7000);
		
		$(".midbtn1").click(function() {
			$(".mid1").css("display","");
			$(".mid2").css("display","none");
			$(".mid3").css("display","none");
			$(".mid4").css("display","none");
			$(this).addClass('active');
			$(".midbtn2").removeClass('active');
			$(".midbtn3").removeClass('active');
			$(".midbtn4").removeClass('active');
		});
		
		$(".midbtn2").click(function() {
			$(".mid2").css("display","");
			$(".mid1").css("display","none");
			$(".mid3").css("display","none");
			$(".mid4").css("display","none");
			$(this).addClass('active');
			$(".midbtn1").removeClass('active');
			$(".midbtn3").removeClass('active');
			$(".midbtn4").removeClass('active');
		});
		
		$(".midbtn3").click(function() {
			$(".mid3").css("display","");
			$(".mid2").css("display","none");
			$(".mid1").css("display","none");
			$(".mid4").css("display","none");
			$(this).addClass('active');
			$(".midbtn2").removeClass('active');
			$(".midbtn1").removeClass('active');
			$(".midbtn4").removeClass('active');
		});
		
		$(".midbtn4").click(function() {
			$(".mid4").css("display","");
			$(".mid2").css("display","none");
			$(".mid3").css("display","none");
			$(".mid1").css("display","none");
			$(this).addClass('active');
			$(".midbtn2").removeClass('active');
			$(".midbtn3").removeClass('active');
			$(".midbtn1").removeClass('active');
		});
		
		let flag = 1;
		
		$(".left").click(function() {
			$(".last"+flag).css("display","none");
			flag = flag - 1;
			if(flag < 1) {
				flag = 5;
			}
			$(".last"+flag).css("display","");
			$(".slider2_inx").html(flag);
		});
		
		$(".right").click(function() {
			$(".last"+flag).css("display","none");
			flag = flag + 1;
			if(flag > 5) {
				flag = 1;
			}
			$(".last"+flag).css("display","");
			$(".slider2_inx").html(flag);
		});
	
		
		
	</script>

</body>
</html>