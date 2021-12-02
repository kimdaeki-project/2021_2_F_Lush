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
	margin-bottom : 100px;
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
		url("https://lush.co.kr/data/skin/front/howling/img/banner/slider_3305991155/a9b0408440b41d63085e798bc6842c2d_66784.jpg");
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

.bx-wrapper {
	position: relative;
	/* margin-bottom: 60px; */
	padding: 0; *:;
	zoom: 1;
	-ms-touch-action: pan-y;
	touch-action: pan-y;
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

.adpic_wideslide2 .review .bx-wrapper .bx-prev {
	top: auto;
	bottom: 20px;
	left: 194px;
	margin-top: 0;
	background:
		url("https://lush.co.kr/data/skin/front/howling/img/etc/review_prev.png")
		no-repeat;
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

.adpic_wideslide2 .review .bx-wrapper .bx-next {
	top: auto;
	bottom: 20px;
	right: 20;
	margin-top: 0;
	background:
		url("https://lush.co.kr/data/skin/front/howling/img/etc/review_next.png")
		no-repeat;
}

.bx-wrapper .bx-controls-direction a {
	position: absolute;
	top: 50%;
	margin-top: -16px;
	outline: 0;
	width: 32px;
	height: 32px;
	text-indent: -9999px;
	z-index: 99;
}

.bx-wrapper .bx-next {
	right: 10px;
	background: url(images/controls.png) no-repeat -43px -32px;
}

.bx-wrapper .bx-pager {
	text-align: center;
	font-size: .85em;
	font-family: Arial;
	font-weight: bold;
	color: #666;
	padding-top: 20px;
}

.bx-wrapper .bx-pager-item {
	font-size: 0;
	line-height: 0;
}

.bx-wrapper .bx-pager-item, .bx-wrapper .bx-controls-auto .bx-controls-auto-item
	{
	display: inline-block;
	vertical-align: bottom; *:;
	zoom: 1;
	*:;
}

.adpic_wideslide2 .bx-wrapper .bx-pager.bx-default-pager a.active {
	background:
		url("https://lush.co.kr/data/skin/front/howling/img/etc/main_dot_off.png")
		no-repeat;
}

.adpic_wideslide2 .bx-wrapper .bx-pager.bx-default-pager a {
	width: 12px;
	height: 12px;
	background:
		url("https://lush.co.kr/data/skin/front/howling/img/etc/main_dot_on.png")
		no-repeat;
}

.bx-wrapper .bx-pager.bx-default-pager a {
	background: #666;
	text-indent: -9999px;
	display: block;
	width: 10px;
	height: 10px;
	margin: 0 5px;
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

</style>

</head>
<body>
	<div id="container_main">
		<div id="content">
			<div class="contents main_wrap01 ee">
				<div class="slider-area"></div>
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
										aria-hidden="false">
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
									<div
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

									<div
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
														href="../goods/goods_view.php?goodsNo=246&amp;mtn=%5E%7C%5E%5E%7C%5E">
														<span class="prdimg"><img
															src="https://lush.co.kr/data/goods/17/08/16/246/246_main_022.jpg"></span>
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
														href="../goods/goods_view.php?goodsNo=88&amp;mtn=%5E%7C%5E%5E%7C%5E">
														<span class="prdimg"><img
															src="https://lush.co.kr/data/goods/11/01/25/88/88_main_058.jpg"></span>
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
										<a href="" data-slide-index="0" class="bx-pager-link active">1</a>
									</div>
									<div class="bx-pager-item">
										<a href="" data-slide-index="1" class="bx-pager-link">2</a>
									</div>
									<div class="bx-pager-item">
										<a href="" data-slide-index="2" class="bx-pager-link">3</a>
									</div>
									<div class="bx-pager-item">
										<a href="" data-slide-index="3" class="bx-pager-link">4</a>
									</div>
								</div>
							</div>

						</div>
					</div>
					<div class="review" data-500="top: -160px;" data-700="top: -111px;"
						style="margin-top: 22.5px;">

						<link rel="stylesheet"
							href="/data/skin/front/howling/css/jquery.bxslider.css">
						<script
							src="/data/skin/front/howling/js/jquery.bxslider.min.4.2.15.js"></script>
						<script type="text/javascript">
							$(document)
									.ready(
											function() {

												/* 롤링 아이템 1개일 때 disabled */
												if ($(".review .bxslider .slide").length == 1) {
													$('.review .bxslider')
															.addClass(
																	"disabled");
												}
												;
												/* //롤링 아이템 1개일 때 disabled */

												var slider2 = $(".bxslider")
														.bxSlider(
																{
																	mode : 'horizontal',
																	auto : true,
																	slideWidth : 280,
																	slideMargin : 0,
																	autoHover : false,
																	easing : 'easeInOutCubic',
																	pagerCustom : '#bx-pager',
																	onSliderLoad : function(
																			currentIndex) {
																		$(
																				'.slider2_count .slider2_inx')
																				.text(
																						currentIndex + 1);
																	},
																	onSlideBefore : function(
																			$slideElement,
																			oldIndex,
																			newIndex) {
																		$(
																				'.slider2_count .slider2_inx')
																				.text(
																						newIndex + 1);
																	}
																});
												$('.slider2_count .slider2_cou')
														.append(
																slider2
																		.getSlideCount() / 1);
												//asdf
											});
						</script>
						<div class="bx-wrapper" style="max-width: 280px;">
							<div class="bx-viewport" aria-live="polite"
								style="width: 100%; overflow: hidden; position: relative; height: 652px;">
								<div class="bxslider"
									style="width: 6215%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">
									<div class="slide bx-clone"
										style="float: left; list-style: none; position: relative; width: 280px;"
										aria-hidden="true">
										<a
											href="https://lush.co.kr/goods/goods_view.php?goodsNo=1000000893&amp;utm_source=&amp;utm_medium=&amp;utm_campaign=PC_2bn_review_pansy_211111"><img
											src="https://lush.co.kr/data/skin/front/howling/img/banner/6b48a921b85b73941297a439f2ddadaf_81975.jpg"
											alt="팬지 솔리드 퍼퓸 _ 리뷰" title="팬지 솔리드 퍼퓸 _ 리뷰"></a>
									</div>
									<div class="slide"
										style="float: left; list-style: none; position: relative; width: 280px;"
										aria-hidden="false">
										<a
											href="https://lush.co.kr/goods/goods_view.php?goodsNo=85&amp;utm_source=&amp;utm_medium=&amp;utm_campaign=PC_review_herbalism_210128"><img
											src="https://lush.co.kr/data/skin/front/howling/img/banner/989b90f38282fa8054dd6dfcd851b5b0_17526.jpg"
											alt="허벌리즘 리뷰" title="허벌리즘 리뷰"></a>
									</div>
									<div class="slide" aria-hidden="true"
										style="float: left; list-style: none; position: relative; width: 280px;">
										<a
											href="https://lush.co.kr/goods/goods_view.php?goodsNo=246&amp;utm_source=&amp;utm_medium=&amp;utm_campaign=PC_Review_dirtyspray_200623"><img
											src="https://lush.co.kr/data/skin/front/howling/img/banner/e75c8b20d4a0bbbfeef78f35b7e134e3_61468.jpg"
											alt="더티 보디 스프레이_리뷰" title="더티 보디 스프레이_리뷰"></a>
									</div>
									<div class="slide" aria-hidden="true"
										style="float: left; list-style: none; position: relative; width: 280px;">
										<a
											href="https://lush.co.kr/goods/goods_view.php?goodsNo=97&amp;utm_source=&amp;utm_medium=&amp;utm_campaign=PC_review_maskofmagnaminty_200824"><img
											src="https://lush.co.kr/data/skin/front/howling/img/banner/030f2710b1fd96a3713d8349a9a78252_40109.jpg"
											alt="마스크오브 매그너민티_리뷰" title="마스크오브 매그너민티_리뷰"></a>
									</div>
									<div class="slide" aria-hidden="true"
										style="float: left; list-style: none; position: relative; width: 280px;">
										<a
											href="https://lush.co.kr/goods/goods_view.php?goodsNo=1000001781&amp;utm_source=&amp;utm_medium=&amp;utm_campaign=PC_review_limebounty_211111"><img
											src="https://lush.co.kr/data/skin/front/howling/img/banner/d914d3b7fa14c180605388a7b7addb4f_62624.jpg"
											alt="라임 바운티_리뷰" title="라임 바운티_리뷰"></a>
									</div>
									<div class="slide" aria-hidden="true"
										style="float: left; list-style: none; position: relative; width: 280px;">
										<a
											href="https://lush.co.kr/goods/goods_view.php?goodsNo=220&amp;utm_source=&amp;utm_medium=&amp;utm_campaign=PC_2bn_review_sleepy_211111"><img
											src="https://lush.co.kr/data/skin/front/howling/img/banner/2af29a9f30fb145691145caaf403bd13_97181.jpg"
											alt="슬리피 보디 로션 _리뷰" title="슬리피 보디 로션 _리뷰"></a>
									</div>
									<div class="slide"
										style="float: left; list-style: none; position: relative; width: 280px;"
										aria-hidden="true">
										<a
											href="https://lush.co.kr/goods/goods_view.php?goodsNo=1000000893&amp;utm_source=&amp;utm_medium=&amp;utm_campaign=PC_2bn_review_pansy_211111"><img
											src="https://lush.co.kr/data/skin/front/howling/img/banner/6b48a921b85b73941297a439f2ddadaf_81975.jpg"
											alt="팬지 솔리드 퍼퓸 _ 리뷰" title="팬지 솔리드 퍼퓸 _ 리뷰"></a>
									</div>
									<div class="slide bx-clone"
										style="float: left; list-style: none; position: relative; width: 280px;"
										aria-hidden="true">
										<a
											href="https://lush.co.kr/goods/goods_view.php?goodsNo=85&amp;utm_source=&amp;utm_medium=&amp;utm_campaign=PC_review_herbalism_210128"><img
											src="https://lush.co.kr/data/skin/front/howling/img/banner/989b90f38282fa8054dd6dfcd851b5b0_17526.jpg"
											alt="허벌리즘 리뷰" title="허벌리즘 리뷰"></a>
									</div>
								</div>
							</div>
							<div class="bx-controls bx-has-controls-direction">
								<div class="bx-controls-direction">
									<a class="bx-prev" href="">Prev</a><a class="bx-next" href="">Next</a>
								</div>
							</div>
						</div>
						<div class="slider_count slider2_count">
							<em class="slider2_inx">1</em> / <span class="slider2_cou">6</span>
						</div>
					</div>
				</div>
			</div>

			<div class="  main_wrap03">
				<div class="left">
					<!-- 주석 <div><iframe width="610" height="560" src="https://www.youtube.com/embed/oggJtlwh2zk" frameborder="0" allowfullscreen></iframe></div> -->
					<!-- 튜닝 : 메인동영상 -->
					<a
						href="https://www.lush.co.kr/animalfreetesting.php?utm_source=&amp;utm_medium=&amp;utm_campaign=PC_article_FAT_210819"><img
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
									href="https://www.lush.co.kr/goods/goods_view.php?goodsNo=1000001808&amp;utm_source=&amp;utm_medium=&amp;utm_campaign=PC_spa_tangled_210716"
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
		
	</script>

</body>
</html>