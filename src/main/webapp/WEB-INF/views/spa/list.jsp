<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<!DOCTYPE html>

<html>

<head>
	<meta charset="UTF-8">
	<title>러쉬 </title>
	<style type="text/css" rel="stylesheet">
		
		#wrap { display: block; /* width: 100%; min-width:100%; */ margin: 0 auto; }
		#container { display: block; width:100%; /* min-width:1000px; */ max-width:1180px; min-height: 500px;  vertical-align: top; }
		#container.goodsv_container { display: block; width:100%; min-width:100%; max-width:100%; }
		#container #content{ display:block; width:100%; margin:50px auto;/*   */ padding:0 0 50px;}
		#container.goodsv_container #content{ display: block; width:100%;}
		#content { display:block; }
		#content .contents{ display:block; min-width:1000px; margin:0px auto 0; }
		#content .contents:after,
		#content .view:after{content:''; display:block; clear:both;}
		
		.mt70{ margin-top:70px; }
		
		.cg-main > h3 { display:block; float:left; width:100%; padding: 30px 0; color: #000; font-size: 11px; text-align: center; }
		.cg-main .weekly-best { margin: 0 auto; padding: 0 0; border: 0; }
		
		.cg-main{display:block; max-width:1180px; margin:0 auto;}
		.cg-main > h2{display:block; text-align:left; padding: 50px 0 10px 5px; color: #111; font-size: 16px; letter-spacing:2px; border-bottom: 1px solid #dddddd; }
		
		.cg-main .lower-category {padding: 10px 0; border: none; border-top: none; font-size: 0; text-align:left; }
		.cg-main .lower-category li { display: inline-block; width: auto; padding:0; text-align: center; vertical-align: middle; }
		.cg-main .lower-category li span { display: block;   padding:0 16px; margin:0;font-size: 14px; }
		.cg-main .lower-category li:first-child span{padding-left:0;}
		.cg-main .lower-category li span a { display: inline-block; padding:10px 0; font-size: 14px; color: #8f8f8f; }
		.cg-main .lower-category li span a img { max-width: 100%; max-height: 20px; }
		.cg-main .lower-category li span:hover {  color:#000; }
		.cg-main .lower-category li span:hover a{ color:#000; text-decoration:none;}
		.cg-main .lower-category li span.on{  color:#000; }
		.cg-main .lower-category li span.on a{ color:#000; }
		.cg-main .lower-category li span em { }
		.cg-main .lower-category li span:hover em,
		.cg-main .lower-category li span.on em{ color:#000;  }
		
		.cg-main {}
		.cg-main > h2 {
		    padding:22px 0 17px;
		    color:#111;
		    font-size:20px;
		}
		.cg-main .lower-category {
		    padding:3px 0;
		    border:1px solid #d8d8d8;
		    border-top:1px solid #717171;
		    font-size:0;
		}
		.cg-main .lower-category li {
		    display:inline-block;
		    width:20%;
		    padding:11px 0;
		    text-align:center;
		    vertical-align:middle;
		}
		.cg-main .lower-category li span {
		    display:inline-block;
		    margin:0 25px;
		    font-size:12px;
		}
		.cg-main .lower-category li span a {
		    color:#414141;
		}
		.cg-main .lower-category li span a img {
		    max-width:100%;
		    max-height:20px;
		}
		.cg-main .lower-category li span a:hover {
		    text-decoration:underline;
		}
		.cg-main .lower-category li span em {
		    color:#777;
		}
		.cg-main .user-tune {
		    margin:30px 0 0;
		}
		.cg-main > h3 {
		    padding:32px 0 0;
		    color:#000;
		    font-size:18px;
		    text-align:center;
		}
		.cg-main .weekly-best {
		    margin:17px 0 0;
		    padding:30px 0 0;
		    border:2px solid #d7d7d7;
		}
		.cg-main .weekly-best .item-display {
		    margin:0 0 -20px;
		}
		.item-display-wrap {
		position:relative;
		}
		.item-display {}
		.item-display-wrap > h2  , .item-display h2 {
		    margin:0 0 35px;
		    padding:40px 0 11px 4px;
		    border-bottom:1px solid #dadada;
		    color:#000;
		    font-size:22px;
		}
		.item-display-wrap > h2 strong , .item-display h2 strong {
		    color:#3e3d3c;
		}
		.item-display-wrap h3  , .item-display h3 {
		    margin:0 0 35px;
		    padding:50px 0 11px 4px;
		    border-bottom:1px solid #dadada;
		    color:#222;
		    font-size:15px;
		}
		
		.item-display-wrap  .btn-main-top-more {
		    position:absolute;
		    right:10px;
		    display:inline-block;
		    vertical-align:top;
		    font-size:0;
		}
		
		.item-display-wrap h2 div {
		    display:inline-block;
		    width:80%;
		}
		
		.item-display-wrap  .btn-main-top-more em {
		    padding-right: 10px;
		    background:url('../img/etc/icon-arr2-r.png') no-repeat right 50%;
		}
		
		.item-display-wrap  .btn-main-bottom-more {
		    border-top:1px solid #dbdbdb;
		    bottom:15px;
		    right:10px;
		    width:100%;
		    display:block;
		    cursor:pointer;
		    color:#6c6c6c;
		    font-size:12px;
		    font-weight:normal;
		}
		
		.item-display-wrap  .btn-main-bottom-more:hover {
		    font-size:12px;
		    color:#222;
		    font-weight:bold;
		}
		
		
		.item-display-wrap  .btn-main-bottom-more em {
		    position: relative;
		    top: -1px;
		    margin:0 auto;
		    display:block;
		    height:20px;
		    padding-top:4px;
		    width:100px;
		    background:url('../img/etc/bl_arrow.png') no-repeat 70% 50%;
		    border:1px solid #dbdbdb;
		    text-align:center;
		    text-indent:-10px;
		    border-top: 1px solid #fff;
		}
		
		
		.item-display-wrap  .btn-main-bottom-more em:hover {
		    background:url('../img/etc/bl_arrow_over.png') no-repeat 70% 50%;
		}
		
		.item-display .contents {
		    position:relative;
		    padding:10px 0 30px;
		}
		
		.item-display .list {
		    position:relative;
		}
		.item-display .list .space {
		    margin:0 auto;
		    padding:0 10px;
		}
		.item-display .list ul {
			padding-top:10px;
		    font-size:0;
		}
		.item-display .list ul li {
		    display:inline-block;
		    padding:0 0 60px;
		    font-size:12px;
		    text-align:center;
		    vertical-align:top;
		}
		.item-display .list ul li .thumbnail {
		    overflow:hidden;
		    text-align:center;
			position: relative;
			height: 0;
			width: 100%;
			margin: 0;
			padding-bottom: 100%;
		}
		.item-display .list ul li .thumbnail > a {
		    /* display:inline-block;
		    position:relative;
		    vertical-align:top; */
			position: absolute;
			left: 0;
			width: 100%;
			height: 100%;
			text-align: center;
		}
		.item-display ul li .thumbnail a .soldout-img {
		    display:block;
		    position:absolute;
		    top:0;
		    left:0;
		    z-index:10;
		    width:100%;
		    height:100%;
		    background-color: rgba(255, 255, 255, 0.6);
		    background-position:center;
		    background-repeat:no-repeat;
		    text-indent:-9999px;
		} 
		.item-display .thumbnail a > img {
		    /* border:1px solid #E9E9E9; */
			position:absolute;
			top:0;
			left:0;
			bottom:0;
			right:0;
			width:100%;
			/* height:100%;  */
		}
		.item-display .thumbnail a > img.blur {
		    filter:alpha(opacity=30);
		    opacity:0.3;
		}
		.item-display ul li .thumbnail a .hot {
		    position:absolute;
		    top:0;
		    left:0;
		    text-align:left;
		}
		.item-display ul li .thumbnail a .hot img {
		    display:inline-block;
		    margin:0 0 4px;
		}
		.item-display .list ul li .txt {
		    padding:15px 6px 0;
		    /* text-align:center; */
		}
		.item-display .list ul li .txt .soldout-ico {
		    display:block;
		    margin:6px 0 7px;
		}
		.item-display .list ul li .txt .brand {
		    color:#888;
		    font-size:11px;
		    line-height:14px;
		}
		.item-display .list ul li .txt a {
		    display:inline-block;
		    margin:4px 0 0;
		}
		.item-display .list ul li .txt a:hover { 
		}
		.item-display .list ul li .txt a span {
		    color:#888;
		    font-size:11px;
		    line-height:14px;
		}
		.item-display .list ul li .txt a > strong {
		    color:#333;
		    font-size:18px;
		    line-height:20px;
		}
		.item-display .list ul li .txt a em {
		    display:block;
			margin-top:10px;
			color:#8f8f8f;
		    font-size:14px; 
		    line-height:17px;
		
		}
		.item-display .list ul li .price {
		    padding:30px 6px 0;
		    /* text-align:left; */
		}
		.item-display ul li .price del {
		    color:#999;
		}
		.item-display .list ul li .price .cost {}
		.item-display .list ul li .price .cost strong {
		    color:#333;
		    /* font-family:arial; */
		    font-size:16px;
		}
		
		.item-display .list ul li .price .cost strong.time_sale_cost {
		    padding: 0 0 0 20px;
		    background: url(../img/icon/time.png) no-repeat left 4px;
		    font-size:20px;
		    color: #3e3d3c;
		    font-family: arial;
		}
		
		.item-display .list ul li .price .sale {}
		.item-display ul li .price .sale strong {
		    color:#3e3d3c;
		    font-family:arial;
		    font-size:16px;
		}
		.item-display .list ul li .price .mileage {
		    color:#888;
		    font-size:11px;
		}
		.item-display .list ul li .price img {
		    vertical-align:-4px;
		}
	</style>
</head>

<body>
	<!-- <style>
		.closeGoodsCntClose{
	    display: block;
	    position: absolute;
	    top: 6px;
	    right: 0;
	    width: 18px;
	    height: 18px;
	    text-indent: -9999px;
	    background: url(/data/skin/front/howling/img/btn/layer-close.png) no-repeat left top;
		}
	
		#remainsGoodsLayer{
	    position: fixed;
	    left: 0;
	    top: 0;
	    z-index: 100;
	    overflow-y: auto;
	    width: 100%;
	    height: 100%;
	    background: rgba(0,0,0,0.3);
		}
	</style>
	<script>
		function remainsGoodsLayer(count){
		    $("#remainsGoods1").text("잔여 재고 : " + count + "개");
		    $("#remainsGoods2").text("현재 " + count + "개 이상 주문이 어렵습니다.");
	
		    $("#remainsGoodsLayer").show();
		}
	
		function closeGoodsCntClose(){
		    $("#remainsGoodsLayer").hide();
		}
	</script> -->
	
	<%--------------- 장바구니 기능 영역 ---------------%>
	<div id="remainsGoodsLayer">
		<!-- ***장바구니 기능 추가하기*** -->
	</div>

	<div id="wrap">
		<%--------------- 헤더영역 ---------------%>
		<c:import url="../main/mainHeader.jsp"></c:import>
		
		<%--------------- 본문영역 ---------------%>
		<div id="container" class>
			<div id="content">
			
				<script type="text/javascript">
					<%-- JS추가하기 --%>
				</script>
				
				<!-- 메인배너, 보기영역 위치조정 css -->
				<style>
					#container{min-width:100%;max-width:100%;}
					#container #content{margin-top:0;}
				
					.spa_visual {position:relative;z-index:1;}
					.spa_visual .slick-arrow{display:none;}
					.spa_visual .slider-wrap{height:500px !important;}
					.spa_visual .item{height:500px !important;}
					.spa_visual .slick-dots{position:absolute ;width:12px;bottom:auto;top:40%;left:50%;margin-left:580px;z-index:1000;}
					.spa_visual .slick-dots li{display:block;height:12px;margin: 0 0 10px 0;}
					.spa_visual .slick-dots li button{font-size:0;}
				
					.spa_main_container{width:1180px;margin:0 auto;padding:;}
					.spa_sub_banners{position:relative;}
					.spa_sub_banners .banner_spa_use{position:absolute;top:0;left:0;width:280px;height:340px;display:table;border-collapse:collapse;box-sizing:border-box;}
					.spa_sub_banners .banner_spa_use a{display:table-cell;padding:0;}
					.spa_sub_banners .banner_spa_use dt span{display:block;font-size:17px;color:#bfbfbf;}
					.spa_sub_banners .banner_spa_use dt em{display:block;font-size:40px;line-height:50px;font-family : "notokrB";color:#333;}
					.spa_sub_banners .banner_spa_use dd{padding-top:15px;font-size:16px;line-height:24px;color:#333;}
					.spa_sub_banners .banner_spa_use dd span{display:block;padding-top:50px;font-size:14px;color:#333;}
					.spa_sub_banners ul{ text-align:right;}
					.spa_sub_banners ul li{display:inline-block;margin-left:20px;}
				</style>
				
				<%--------------- 메인 배너 영역 ---------------%>
				<div class="spa_visual">
					
					<style>
						*:focus{outline:none !important;}
					
					    .slider-banner-3919499068  {
					        margin: 0 auto;
					        width: 100%;
					        overflow:hidden;
						    visibility: hidden;
					    }
					
						.slider-banner-3919499068 .slick-slide{ display:inline-block; width:auto; }
					
						.slider-banner-3919499068 .slick-slide a{display:block; height:100%;}
					    .slider-banner-3919499068 .slick-slide img {
							display:block;
					        /*width: 100%;*/
					        position:static !important;
					        top:0px  !important;
					    }
					
					    .slider-banner-3919499068 .slick-prev{ 
					       background-image: url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M0%2C22L22%2C0l2.1%2C2.1L4.2%2C22l19.9%2C19.9L22%2C44L0%2C22L0%2C22L0%2C22z'%20fill%3D'%23ffffff'%2F%3E%3C%2Fsvg%3E");
					       background:#ffffff\0/IE8;
					    }
					    .slider-banner-3919499068 .slick-next{ 
					        background-image: url("data:image/svg+xml;charset=utf-8,%3Csvg%20xmlns%3D'http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg'%20viewBox%3D'0%200%2027%2044'%3E%3Cpath%20d%3D'M27%2C22L27%2C22L5%2C44l-2.1-2.1L22.8%2C22L2.9%2C2.1L5%2C0L27%2C22L27%2C22z'%20fill%3D'%23ffffff'%2F%3E%3C%2Fsvg%3E");
					        background:#ffffff\0/IE8;
					    }
					
						
						.slider-banner-3919499068 .slick-prev,
						.slider-banner-3919499068 .slick-next{ position: absolute; top: 50%; width: 27px; height: 44px;  z-index: 3; cursor: pointer; 
											background-size: 27px 44px; background-position: center; background-repeat: no-repeat; 
											filter:alpha(opacity=0); opacity:0; -webkit-opacity:0;
											-webkit-transition: all 200ms ease-in-out; -moz-transition: all 200ms ease-in-out; -o-transition: all 200ms ease-in-out; -khtml-transition: all 200ms ease-in-out; -ms-transition: all 200ms ease-in-out; transition: all 200ms ease-in-out;
						}
					
						.slider-banner-3919499068 .slick-prev{ left:50%; margin-left:-550px; }
						.slider-banner-3919499068 .slick-next{ right:50%;margin-right:-550px; }
					
						.slider-banner-3919499068:hover .slick-prev { margin-left: -600px; filter: alpha(opacity=50); opacity: 0.5; -webkit-opacity: 0.5; }
						.slider-banner-3919499068:hover .slick-next { margin-right:-600px; filter: alpha(opacity=50); opacity: 0.5; -webkit-opacity: 0.5; }
						.slider-banner-3919499068 .slick-prev:hover { filter: alpha(opacity=100); opacity: 1; -webkit-opacity: 1; }
						.slider-banner-3919499068 .slick-next:hover { filter: alpha(opacity=100); opacity: 1; -webkit-opacity: 1; }
						
						@media screen and (max-width: 1200px) {
							
							.slider-banner-3919499068 .slick-prev { left:50%; margin-left:-400px; }
							.slider-banner-3919499068 .slick-next { right:50%; margin-right:-400px;}
							.slider-banner-3919499068:hover .slick-prev { margin-left:-450px; }
							.slider-banner-3919499068:hover .slick-next { margin-right:-450px;}
						}
					
					
					    .slider-banner-3919499068  .slick-dots li button{
							border:2px solid #fff;
					
					        width:8px;
					        height:8px;
					        border-radius:100%;
					        background:#ffffff;
							-webkit-transition: all 200ms ease-in-out; -moz-transition: all 200ms ease-in-out; -o-transition: all 200ms ease-in-out; -khtml-transition: all 200ms ease-in-out; -ms-transition: all 200ms ease-in-out; transition: all 200ms ease-in-out;
							background:none;
					    }
					    .slider-banner-3919499068 .slick-dots li.slick-active button{
							/* background:#ffffff; */
							background:#fff;
							
					    }
					</style>
					
					<div class="adpic_slider adpicslide3919499068">
						<div class="slider-wrap slider-banner-3919499068 slick-initialized slick-slider" style="visibility: visible; height: 500px;">
							<div aria-live="polite" class="slick-list draggable" style="height: 500px;">
								<div class="slick-track" role="listbox" style="opacity: 1; width: 1250px; transform: translate3d(0px, 0px, 0px);">
									<div class="item slick-slide slick-current slick-active" data-slick-index="0" 
										aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide10" 
										style="width: 1250px; height: 500px; 
										background: url(&quot;../../resources/img/banner/slider/slider_1.jpg&quot;) center top no-repeat;"></div>
								</div>
							</div>
						</div>						
					</div>
					
					<script src="" type="text/javascript" charset="utf-8"></script>
					<script type="text/javascript"></script>
				</div> <%-- spa_visual --%>
				
				
				<%--------------- 자세히보기, 매장 정보보기 영역 ---------------%>
				<div class="spa_main_container">
					
					<div class="spa_sub_banners mt70">
						<div class="banner_spa_use">
							<a href="#"><img alt="" 
								src="../../resources/img/sub/banner_spa_about.jpg"></a>
						</div>
						
						<ul>
							<li><a href="../shopInfo/list"><img alt="러쉬 스파 압구정점" 
									src="../../resources/img/banner/banner_2.jpg" title="러쉬 스파 압구정점"></a></li>
							<li><a href="../shopInfo/list"><img alt="러쉬 스파 경리단길점" 
									src="../../resources/img/banner/banner_1.jpg" title="러쉬 스파 경리단길점"></a></li>
						</ul>
					</div>
					<div class="mt70"></div>
					
				</div> <%-- spa_main_container end --%>
				
				
				<%--------------- 스파트리트먼트 (제품영역) ---------------%>
				<div class="contents">
					
					<div class="view">
						<div class="cg-main">
						
							<style>
								.list_hd_bx{position:relative;border-bottom:2px solid #000;}
								.list_hd_bx h2{padding-bottom:15px;color:#333;line-height:30px;font-size:28px;font-family : "notokrB"; font-weight:normal;}
								.view .list_hd_bx .goods-list{float:none; position:absolute;right:0;top:0;margin:0; padding:0;width:300px;display:table;}
								.view .list_hd_bx .goods-list .tc{display:none;/* display:table-cell; */ vertical-align:middle;width:290px;padding-right:18px; float:none; font-size:14px;text-align:right;}
								.view .list_hd_bx .goods-list .tc strong{padding:0;font-size:12px;}
								.view .list_hd_bx .goods-list .align{display:table-cell; vertical-align:middle; width:110px; float:none; }
								.list_hd_bx .chosen-container-single .chosen-sch{border:1px solid #dcdcdc;}
								.view .list_hd_bx .goods-list .align .choice div .chosen-container .chosen-single{height:32px;line-height:30px;font-size:14px;}
								.view .list_hd_bx .chosen-container{font-size:14px;}
							</style>
						
							<div class="list_hd_bx mt77">
								<h2>스파 트리트먼트</h2>
								<div class="goods-list">
									<span class="tc">총<strong>13</strong>개상품</span>
									<form name="frmList" action="">
										<input type="hidden" name="cateCd" value="002">
										<fieldset>
											<legend>상품 정렬 폼</legend>
											<div class="align">
												<div class="choice">
													<div>
														<select name="sort" class="tune" style="width: 110px; display: none;">
															<option value="">추천순</option>
															<option value="orderCnt desc,g.regDt desc">판매인기순</option>
															<option value="goodsPrice asc,g.regDt desc">낮은가격순</option>
															<option value="goodsPrice desc,g.regDt desc">높은가격순</option>
															<option value="reviewCnt desc,g.regDt desc">상품평순</option>
															<option value="g.regDt desc">등록일순</option>
														</select><div class="chosen-container chosen-container-single chosen-container-single-nosearch" style="width: 110px;" title=""><a class="chosen-single chosen-sch" tabindex="-1"><span>추천순</span><div><b></b></div></a><div class="chosen-drop"><div class="chosen-search"><input type="text" autocomplete="off" readonly=""></div><ul class="chosen-results"><li class="active-result result-selected" data-option-array-index="0" style="">추천순</li><li class="active-result" data-option-array-index="1" style="">판매인기순</li><li class="active-result" data-option-array-index="2" style="">낮은가격순</li><li class="active-result" data-option-array-index="3" style="">높은가격순</li><li class="active-result" data-option-array-index="4" style="">상품평순</li><li class="active-result" data-option-array-index="5" style="">등록일순</li></ul></div></div>
													</div>
												</div>
											</div>
										</fieldset>
									</form>
								</div>
							</div>
							
							<div class="spa_list_wrap">
								<style type="text/css">
									.item-display .list ul.prdList li { padding:0 0;}
									.item-display .list ul.prdList li .space{ display: block; position:relative; padding:0 5px 30px 5px;}
									.item-display .list ul.prdList li .box{ display: block; position:relative;}
									.item-display .list ul.prdList li .thumbnail{ position:relative; }
									.item-display .list ul.prdList li .thumbnail .soldout-img{ display:inline-block; position:absolute; bottom:0; right:0;  }
								
									.item-display .list ul.prdList li .thumbnail .soldout-img { display:block; position:absolute; top:0; left:0; z-index:1; width:100%; height:100%; background-color: rgba(255, 255, 255, 0.6); background-position:0 0; background-repeat:no-repeat; text-indent:-9999px; }
								
									.item-display .list ul.prdList li .prdinfo{position:relative;display:block; padding:30px 0 0 0; text-align:center;}
									.item-display .list ul.prdList li .conditions {position:absolute;top:0;left:0;width:100%;  text-align:center; }
									.item-display .list ul.prdList li .hot {vertical-align:top; }
									.item-display .list ul.prdList li .hot img{padding:2px;vertical-align:top; }
									.item-display .list ul.prdList li .soldout-img{vertical-align:top;display:inline-block; font-size:0;width:42px;height:23px;background-repeat:no-repeat ;margin:2px;}
									.item-display .list ul.prdList li .txt { display:block; padding:0 0 0 0; color:#1e1e1e; text-align:center; line-height:20px; }
									.item-display .list ul.prdList li .txt a { display: block; margin: 0; text-decoration:none; }
									.item-display .list ul.prdList li .txt .prdName{ display:block; padding: 0;  color:#333; line-height:22px;font-size:16px; max-height:40px; text-overflow:ellipsis; overflow:hidden;}
									.item-display .list ul.prdList li .txt .shotdesc{ display:block; padding: 0; color:#8f8f8f; line-height:20px;  max-height:20px; font-size:14px; text-overflow:ellipsis; overflow:hidden; }
								
									.item-display .list ul.prdList li .price { display:block; line-height:30px; margin-top:10px; padding: 0; text-align:center; color:#333;font-size:16px; }
									.item-display .list ul.prdList li .price del { color: #999999; }
									.item-display .list ul.prdList li .price .cost strong {  font-weight:normal; }
								
								
									.item-display .list ul.prdList li .dc_rate{display:block; position:absolute; left:5px; top:5px; width:40px; height:40px; background:#bebebe; border-radius:100%; }
									.item-display .list ul.prdList li .dc_rate span{ display:block; width:100%; height:100%; line-height:40px; color:#FFFFFF; font-size:14px; text-align:center;}
								
									.item-display .list ul.prdList li .box.soldout .thumbnail .prdimg{position:relative;}
									.item-display .list ul.prdList li .box.soldout .thumbnail .prdimg:after{width:100%;height:100%;background: #fff;opacity:0.5;content:'';display:block;position:absolute;top:0;bottom:0;left:0;right:0;  }
									.item-display .list ul.prdList li .box.soldout .conditions .hot{display:none;}
								
									@media screen and (max-width: 1217px) {
										.item-display .list ul.prdList li .thumbnail .prdimg img{ width:100%;}
									}
								</style>
								<div class="item-display type-gallery type-gallery_">
									
									<div class="list">
										<ul class="prdList">
											
											<%--------------- 제품나열선 ---------------%>
        									<li style="width:25%">
									            <div class="space">
													<div class="box ">
														<div class="thumbnail" 
															data-image-add1="/data/goods/21/06/26/1000001808/1000001808_add1_062.jpg" 
															data-image-add2="/data/goods/21/06/26/1000001808/1000001808_add2_031.jpg" 
															data-image-list="/data/goods/21/06/26/1000001808/1000001808_list_099.jpg" 
															data-image-main="/data/goods/21/06/26/1000001808/1000001808_main_028.jpg" 
															data-image-detail="/data/goods/21/06/26/1000001808/1000001808_detail_089.jpg" 
															data-image-magnify="/data/goods/21/06/26/1000001808/1000001808_magnify_041.jpg">
															<%-- 제품썸네일 --%>
															<a href="./selectOne?num=1">
																<span class="prdimg"><img 
																	data-original="../../resources/img/goods/tangled_hair_treatment.jpg" 
																	width="280" alt="탱글드 헤어 트리트먼트" title="탱글드 헤어 트리트먼트" class="middle gd_image_lazy" 
																	src="../../resources/img/goods/tangled_hair_treatment.jpg" style="display: inline;"></span>
															</a>
															<%-- 제품 찜, 장바구니 --%>
															<span class="choice -moslow">
																<a href="#" target="_blank" class="btn-open-win -moslow" type="button" data-goods-no="1000001808">
																	<span class="ti ti-layout-media-center-alt -moslow"></span>
																	<span class="hand icon-name">새창열기</span></a>
																<a class="wish btn-add-wish -moslow" data-goods-no="1000001808">
																	<span class="ti ti-heart -moslow">
																	</span><span class="icon-name">찜하기</span></a>
																<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart -moslow" 
																	data-mode="cartIn" data-goods-no="1000001808">
																	<span class="ti ti-bag -moslow"></span>
																	<span class="icon-name">장바구니</span></a>
															</span>
														</div>
														<%-- 제품명, 설명, 가격 --%>
														<div class="prdinfo">
															<div class="conditions">
																<span class="hot"></span>
															</div>
															<div class="txt">
																<a href="#">
																	<span class="prdName">탱글드 헤어 트리트먼트</span>
																	<span class="shotdesc">#두피트리트먼트 #기분좋은낮잠처럼</span></a>
															</div>
															<div class="price gd-default">
																<span class="cost">
																	<strong>￦ 70,000</strong></span>
															</div>
															<div class="display-field">
															</div>
									
														</div>
													</div>
									            </div>
       										</li>

									        <li style="width:25%">
									            <div class="space">
													<div class="box ">
														<div class="thumbnail" 
															data-image-add1="/data/goods/20/08/36/1000001312/1000001312_add1_047.jpg" 
															data-image-add2="/data/goods/20/08/36/1000001312/1000001312_add2_015.jpg" 
															data-image-list="/data/goods/20/08/36/1000001312/1000001312_list_06.jpg" 
															data-image-main="/data/goods/20/08/36/1000001312/1000001312_main_040.jpg" 
															data-image-detail="/data/goods/20/08/36/1000001312/1000001312_detail_078.jpg" 
															data-image-magnify="/data/goods/20/08/36/1000001312/1000001312_magnify_023.jpg">
															<a href="#">
																<span class="prdimg"><img 
																	data-original="/data/goods/20/08/36/1000001312/1000001312_main_040.jpg" 
																	width="280" alt="르네상스" title="르네상스" class="middle gd_image_lazy" 
																	src="../../resources/img/goods/renaissance.jpg" style="display: inline;"></span>
															</a>
															<span class="choice -moslow">
																<a href="../goods/goods_view.php?goodsNo=1000001312" target="_blank" class="btn-open-win -moslow" type="button" data-goods-no="1000001312">
																	<span class="ti ti-layout-media-center-alt -moslow">
																	</span><span class="hand icon-name">새창열기</span></a>
																<a class="wish btn-add-wish -moslow" data-goods-no="1000001312">
																	<span class="ti ti-heart -moslow"></span>
																	<span class="icon-name">찜하기</span></a>
																<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart -moslow" 
																	data-mode="cartIn" data-goods-no="1000001312">
																	<span class="ti ti-bag -moslow"></span>
																	<span class="icon-name">장바구니</span></a>
															</span>
														</div>
														<div class="prdinfo">
															<div class="conditions">
																<span class="hot"></span>
															</div>
															<div class="txt">
																<a href="../goods/goods_view.php?goodsNo=1000001312">
									 								<span class="prdName">르네상스</span>
									 								<span class="shotdesc">#스파트리트먼트 #평화로운명상의시간</span></a>
															</div>
															<div class="price gd-default">
																<span class="cost">
																	<strong>￦ 120,000</strong></span>
															</div>
															<div class="display-field">
															</div>
									
														</div>
													</div>
									            </div>
									        </li>

									        <li style="width:25%">
									            <div class="space">
													<div class="box ">
														<div class="thumbnail" 
															data-image-magnify="/data/goods/18/11/48/1000000087/1000000087_magnify_083.jpg" 
															data-image-detail="/data/goods/18/11/48/1000000087/1000000087_detail_035.jpg" 
															data-image-list="/data/goods/18/11/48/1000000087/1000000087_list_033.jpg" 
															data-image-main="/data/goods/18/11/48/1000000087/1000000087_main_010.jpg" 
															data-image-add1="/data/goods/18/11/48/1000000087/1000000087_add1_045.jpg" 
															data-image-add2="/data/goods/18/11/48/1000000087/1000000087_add2_082.jpg">
															<a href="../goods/goods_view.php?goodsNo=1000000087">
																<span class="prdimg"><img 
																	data-original="/data/goods/18/11/48/1000000087/1000000087_main_010.jpg" 
																	width="280" alt="하드 데이즈 나이트 트리트먼트" title="하드 데이즈 나이트 트리트먼트" class="middle gd_image_lazy" 
																	src="../../resources/img/goods/night_treatment.jpg" style="display: inline;"></span>
															</a>
															<span class="choice -moslow">
																<a href="../goods/goods_view.php?goodsNo=1000000087" target="_blank" class="btn-open-win -moslow" type="button" data-goods-no="1000000087">
																	<span class="ti ti-layout-media-center-alt -moslow"></span>
																	<span class="hand icon-name">새창열기</span></a>
																<a class="wish btn-add-wish -moslow" data-goods-no="1000000087">
																	<span class="ti ti-heart -moslow"></span>
																	<span class="icon-name">찜하기</span></a>
																<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart -moslow" data-mode="cartIn" data-goods-no="1000000087">
																	<span class="ti ti-bag -moslow">
																	</span><span class="icon-name">장바구니</span></a>
															</span>
														</div>
														<div class="prdinfo">
															<div class="conditions">
																<span class="hot"></span>
															</div>
															<div class="txt">
																<a href="../goods/goods_view.php?goodsNo=1000000087">
									 								<span class="prdName">하드 데이즈 나이트 트리트먼트</span>
									 								<span class="shotdesc">#스파트리트먼트 #비틀즈음악 #스트레칭 #지압</span></a>
															</div>
															<div class="price gd-default">
																<span class="cost">
																	<strong>￦ 200,000</strong></span>
															</div>
															<div class="display-field">
															</div>
									
														</div>
													</div>
									            </div>
									        </li>

									        <li style="width:25%">
									            <div class="space">
													<div class="box ">
														<div class="thumbnail" 
															data-image-magnify="/data/goods/18/11/48/1000000086/1000000086_magnify_06.jpg" 
															data-image-detail="/data/goods/18/11/48/1000000086/1000000086_detail_016.jpg" 
															data-image-list="/data/goods/18/11/48/1000000086/1000000086_list_039.jpg" 
															data-image-main="/data/goods/18/11/48/1000000086/1000000086_main_029.jpg" 
															data-image-add1="/data/goods/18/11/48/1000000086/1000000086_add1_035.jpg" 
															data-image-add2="/data/goods/18/11/48/1000000086/1000000086_add2_052.jpg">
															<a href="../goods/goods_view.php?goodsNo=1000000086">
																<span class="prdimg"><img 
																	data-original="/data/goods/18/11/48/1000000086/1000000086_main_029.jpg" 
																	width="280" alt="테일러 메이드" title="테일러 메이드" class="middle gd_image_lazy" 
																	src="../../resources/img/goods/taylor_made.jpg" style="display: inline;"></span>
															</a>
															<span class="choice -moslow">
																<a href="../goods/goods_view.php?goodsNo=1000000086" target="_blank" class="btn-open-win -moslow" type="button" data-goods-no="1000000086">
																	<span class="ti ti-layout-media-center-alt -moslow">
																	</span><span class="hand icon-name">새창열기</span></a>
																<a class="wish btn-add-wish -moslow" data-goods-no="1000000086">
																	<span class="ti ti-heart -moslow"></span>
																	<span class="icon-name">찜하기</span></a>
																<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart -moslow" data-mode="cartIn" data-goods-no="1000000086">
																	<span class="ti ti-bag -moslow"></span>
																	<span class="icon-name">장바구니</span></a>
															</span>
														</div>
														<div class="prdinfo">
															<div class="conditions">
																<span class="hot"></span>
															</div>
															<div class="txt">
																<a href="../goods/goods_view.php?goodsNo=1000000086">
																	<span class="prdName">테일러 메이드</span>
																	<span class="shotdesc">#스파트리트먼트 #감성릴렉싱 #아로마</span></a>
															</div>
															<div class="price gd-default">
																<span class="cost">
																	<strong>￦ 130,000</strong></span>
															</div>
															<div class="display-field">
															</div>
									
														</div>
													</div>
									            </div>
									        </li>
									
									        <li style="width:25%">
									            <div class="space">
													<div class="box ">
														<div class="thumbnail" 
															data-image-magnify="/data/goods/18/11/48/1000000085/1000000085_magnify_036.jpg" 
															data-image-detail="/data/goods/18/11/48/1000000085/1000000085_detail_077.jpg" 
															data-image-list="/data/goods/18/11/48/1000000085/1000000085_list_052.jpg" 
															data-image-main="/data/goods/18/11/48/1000000085/1000000085_main_03.jpg" 
															data-image-add1="/data/goods/18/11/48/1000000085/1000000085_add1_028.jpg" 
															data-image-add2="/data/goods/18/11/48/1000000085/1000000085_add2_074.jpg">
															<a href="../goods/goods_view.php?goodsNo=1000000085">
																<span class="prdimg"><img 
																	data-original="/data/goods/18/11/48/1000000085/1000000085_main_03.jpg" 
																	width="280" alt="발리데이션 페이셜" title="발리데이션 페이셜" class="middle gd_image_lazy" 
																	src="../../resources/img/goods/validation.jpg" style="display: inline;"></span>
															</a>
															<span class="choice -moslow">
																<a href="../goods/goods_view.php?goodsNo=1000000085" target="_blank" class="btn-open-win -moslow" type="button" data-goods-no="1000000085">
																	<span class="ti ti-layout-media-center-alt -moslow"></span>
																	<span class="hand icon-name">새창열기</span></a>
																<a class="wish btn-add-wish -moslow" data-goods-no="1000000085">
																	<span class="ti ti-heart -moslow"></span>
																	<span class="icon-name">찜하기</span></a>
																<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart -moslow" data-mode="cartIn" data-goods-no="1000000085">
																	<span class="ti ti-bag -moslow"></span>
																	<span class="icon-name">장바구니</span></a>
															</span>
														</div>
														<div class="prdinfo">
															<div class="conditions">
																<span class="hot"></span>
															</div>
															<div class="txt">
																<a href="../goods/goods_view.php?goodsNo=1000000085">
									 								<span class="prdName">발리데이션 페이셜</span>
									 								<span class="shotdesc">#스파트리트먼트 #페이셜마사지 #스킨케어</span>							</a>
															</div>
															<div class="price gd-default">
																<span class="cost">
																	<strong>￦ 180,000</strong></span>
															</div>
															<div class="display-field">
															</div>
									
														</div>
													</div>
									            </div>
									        </li>
									
									        <li style="width:25%">
									            <div class="space">
													<div class="box ">
														<div class="thumbnail" 
															data-image-magnify="/data/goods/18/11/48/1000000084/1000000084_magnify_064.jpg" 
															data-image-detail="/data/goods/18/11/48/1000000084/1000000084_detail_035.jpg" 
															data-image-list="/data/goods/18/11/48/1000000084/1000000084_list_093.jpg" 
															data-image-main="/data/goods/18/11/48/1000000084/1000000084_main_046.jpg" 
															data-image-add1="/data/goods/18/11/48/1000000084/1000000084_add1_093.jpg" 
															data-image-add2="/data/goods/18/11/48/1000000084/1000000084_add2_062.jpg">
															<a href="../goods/goods_view.php?goodsNo=1000000084">
																<span class="prdimg"><img 
																	data-original="/data/goods/18/11/48/1000000084/1000000084_main_046.jpg" 
																	width="280" alt="더 스펠" title="더 스펠" class="middle gd_image_lazy" 
																	src="../../resources/img/goods/spell.jpg" style="display: inline;"></span>
															</a>
															<span class="choice -moslow">
																<a href="../goods/goods_view.php?goodsNo=1000000084" target="_blank" class="btn-open-win -moslow" type="button" data-goods-no="1000000084">
																	<span class="ti ti-layout-media-center-alt -moslow"></span>
																	<span class="hand icon-name">새창열기</span></a>
																<a class="wish btn-add-wish -moslow" data-goods-no="1000000084">
																	<span class="ti ti-heart -moslow"></span>
																	<span class="icon-name">찜하기</span></a>
																<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart -moslow" data-mode="cartIn" data-goods-no="1000000084">
																	<span class="ti ti-bag -moslow"></span>
																	<span class="icon-name">장바구니</span></a>
															</span>
														</div>
														<div class="prdinfo">
															<div class="conditions">
																<span class="hot"></span>
															</div>
															<div class="txt">
																<a href="../goods/goods_view.php?goodsNo=1000000084">
									 								<span class="prdName">더 스펠</span>
									 								<span class="shotdesc">#스파트리트먼트 #발마사지 #반사요법</span></a>
															</div>
															<div class="price gd-default">
																<span class="cost">
																	<strong>￦ 130,000</strong></span>
															</div>
															<div class="display-field">
															</div>
									
														</div>
													</div>
									            </div>
									        </li>
									
									        <li style="width:25%">
									            <div class="space">
													<div class="box ">
														<div class="thumbnail" 
															data-image-magnify="/data/goods/18/11/48/1000000083/1000000083_magnify_045.jpg" 
															data-image-detail="/data/goods/18/11/48/1000000083/1000000083_detail_045.jpg" 
															data-image-list="/data/goods/18/11/48/1000000083/1000000083_list_042.jpg" 
															data-image-main="/data/goods/18/11/48/1000000083/1000000083_main_093.jpg" 
															data-image-add1="/data/goods/18/11/48/1000000083/1000000083_add1_057.jpg" 
															data-image-add2="/data/goods/18/11/48/1000000083/1000000083_add2_033.jpg">
															<a href="../goods/goods_view.php?goodsNo=1000000083">
																<span class="prdimg"><img data-original="/data/goods/18/11/48/1000000083/1000000083_main_093.jpg" 
																	width="280" alt="더 컴포터?" title="더 컴포터" class="middle gd_image_lazy" 
																	src="../../resources/img/goods/comforter.jpg" style="display: inline;"></span>
															</a>
															<span class="choice -moslow">
																<a href="../goods/goods_view.php?goodsNo=1000000083" target="_blank" class="btn-open-win -moslow" type="button" data-goods-no="1000000083">
																	<span class="ti ti-layout-media-center-alt -moslow"></span>
																	<span class="hand icon-name">새창열기</span></a>
																<a class="wish btn-add-wish -moslow" data-goods-no="1000000083">
																	<span class="ti ti-heart -moslow"></span>
																	<span class="icon-name">찜하기</span></a>
																<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart -moslow" data-mode="cartIn" data-goods-no="1000000083">
																	<span class="ti ti-bag -moslow"></span>
																	<span class="icon-name">장바구니</span></a>
															</span>
														</div>
														<div class="prdinfo">
															<div class="conditions">
																<span class="hot"></span>
															</div>
															<div class="txt">
																<a href="../goods/goods_view.php?goodsNo=1000000083">
									 								<span class="prdName">더 컴포터?</span>
									 								<span class="shotdesc">#스파트리트먼트 #초콜릿스크럽 #매끈한피부</span>							</a>
															</div>
															<div class="price gd-default">
																<span class="cost">
																	<strong>￦ 180,000</strong></span>
															</div>
															<div class="display-field">
															</div>
									
														</div>
													</div>
									            </div>
									        </li>
									
									        <li style="width:25%">
									            <div class="space">
													<div class="box ">
														<div class="thumbnail" 
															data-image-magnify="/data/goods/18/11/48/1000000082/1000000082_magnify_065.jpg" 
															data-image-detail="/data/goods/18/11/48/1000000082/1000000082_detail_034.jpg" 
															data-image-list="/data/goods/18/11/48/1000000082/1000000082_list_043.jpg" 
															data-image-main="/data/goods/18/11/48/1000000082/1000000082_main_036.jpg" 
															data-image-add1="/data/goods/18/11/48/1000000082/1000000082_add1_052.jpg" 
															data-image-add2="/data/goods/18/11/48/1000000082/1000000082_add2_046.jpg">
															<a href="../goods/goods_view.php?goodsNo=1000000082">
																<span class="prdimg"><img data-original="/data/goods/18/11/48/1000000082/1000000082_main_036.jpg" 
																	width="280" alt="더 굿 아워" title="더 굿 아워" class="middle gd_image_lazy" 
																	src="../../resources/img/goods/good_hour.jpg" style="display: inline;"></span>
															</a>
															<span class="choice -moslow">
																<a href="../goods/goods_view.php?goodsNo=1000000082" target="_blank" class="btn-open-win -moslow" type="button" data-goods-no="1000000082">
																	<span class="ti ti-layout-media-center-alt -moslow"></span>
																	<span class="hand icon-name">새창열기</span></a>
																<a class="wish btn-add-wish -moslow" data-goods-no="1000000082">
																	<span class="ti ti-heart -moslow"></span>
																	<span class="icon-name">찜하기</span></a>
																<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart -moslow" data-mode="cartIn" data-goods-no="1000000082">
																	<span class="ti ti-bag -moslow"></span>
																	<span class="icon-name">장바구니</span></a>
															</span>
														</div>
														<div class="prdinfo">
															<div class="conditions">
																<span class="hot"></span>
															</div>
															<div class="txt">
																<a href="../goods/goods_view.php?goodsNo=1000000082">
									 								<span class="prdName">더 굿 아워</span>
									 								<span class="shotdesc">#스파트리트먼트 #딥티슈마사지</span></a>
															</div>
															<div class="price gd-default">
																<span class="cost">
																	<strong>￦ 200,000</strong></span>
															</div>
															<div class="display-field">
															</div>
									
														</div>
													</div>
									            </div>
									        </li>
									
									        <li style="width:25%">
									            <div class="space">
													<div class="box ">
														<div class="thumbnail" 
															data-image-magnify="/data/goods/18/11/48/1000000081/1000000081_magnify_030.jpg" 
															data-image-detail="/data/goods/18/11/48/1000000081/1000000081_detail_051.jpg" 
															data-image-list="/data/goods/18/11/48/1000000081/1000000081_list_078.jpg" 
															data-image-main="/data/goods/18/11/48/1000000081/1000000081_main_072.jpg" 
															data-image-add1="/data/goods/18/11/48/1000000081/1000000081_add1_039.jpg" 
															data-image-add2="/data/goods/18/11/48/1000000081/1000000081_add2_031.jpg">
															<a href="../goods/goods_view.php?goodsNo=1000000081">
																<span class="prdimg"><img 
																	data-original="/data/goods/18/11/48/1000000081/1000000081_main_072.jpg" 
																	width="280" alt="더 사운드 배쓰" title="더 사운드 배쓰" class="middle gd_image_lazy" 
																	src="../../resources/img/goods/sound_bath.jpg" style="display: inline;"></span>
															</a>
															<span class="choice -moslow">
																<a href="../goods/goods_view.php?goodsNo=1000000081" target="_blank" class="btn-open-win -moslow" type="button" data-goods-no="1000000081">
																	<span class="ti ti-layout-media-center-alt -moslow"></span>
																	<span class="hand icon-name">새창열기</span></a>
																<a class="wish btn-add-wish -moslow" data-goods-no="1000000081">
																	<span class="ti ti-heart -moslow"></span>
																	<span class="icon-name">찜하기</span></a>
																<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart -moslow" data-mode="cartIn" data-goods-no="1000000081">
																	<span class="ti ti-bag -moslow"></span>
																	<span class="icon-name">장바구니</span></a>
															</span>
														</div>
														<div class="prdinfo">
															<div class="conditions">
																<span class="hot"></span>
															</div>
															<div class="txt">
																<a href="../goods/goods_view.php?goodsNo=1000000081">
									 								<span class="prdName">더 사운드 배쓰</span>
									 								<span class="shotdesc">#스파트리트먼트 #사운드테라피 #페이셜마사지</span>	</a>
															</div>
															<div class="price gd-default">
																<span class="cost">
																	<strong>￦ 150,000</strong></span>
															</div>
															<div class="display-field">
															</div>
									
														</div>
													</div>
									            </div>
									        </li>
									
									        <li style="width:25%">
									            <div class="space">
													<div class="box ">
														<div class="thumbnail" 
															data-image-magnify="/data/goods/18/11/48/1000000080/1000000080_magnify_022.jpg" 
															data-image-detail="/data/goods/18/11/48/1000000080/1000000080_detail_05.jpg" 
															data-image-list="/data/goods/18/11/48/1000000080/1000000080_list_074.jpg" 
															data-image-main="/data/goods/18/11/48/1000000080/1000000080_main_019.jpg" 
															data-image-add1="/data/goods/18/11/48/1000000080/1000000080_add1_076.jpg" 
															data-image-add2="/data/goods/18/11/48/1000000080/1000000080_add2_066.jpg">
															<a href="../goods/goods_view.php?goodsNo=1000000080">
																<span class="prdimg"><img 
																	data-original="/data/goods/18/11/48/1000000080/1000000080_main_019.jpg" 
																	width="280" alt="시네스티지아" title="시네스티지아" class="middle gd_image_lazy" 
																	src="../../resources/img/goods/sinest.jpg" style="display: inline;"></span>
															</a>
															<span class="choice -moslow">
																<a href="../goods/goods_view.php?goodsNo=1000000080" target="_blank" class="btn-open-win -moslow" type="button" data-goods-no="1000000080">
																	<span class="ti ti-layout-media-center-alt -moslow"></span>
																	<span class="hand icon-name">새창열기</span></a>
																<a class="wish btn-add-wish -moslow" data-goods-no="1000000080">
																	<span class="ti ti-heart -moslow"></span>
																	<span class="icon-name">찜하기</span></a>
																<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart -moslow" data-mode="cartIn" data-goods-no="1000000080">
																	<span class="ti ti-bag -moslow"></span>
																	<span class="icon-name">장바구니</span></a>
															</span>
														</div>
														<div class="prdinfo">
															<div class="conditions">
																<span class="hot"></span>
															</div>
															<div class="txt">
																<a href="../goods/goods_view.php?goodsNo=1000000080">
									 								<span class="prdName">시네스티지아</span>
									 								<span class="shotdesc">#스파트리트먼트 #에센셜오일 #아로마트리트먼트</span>							</a>
															</div>
															<div class="price gd-default">
																<span class="cost">
																	<strong>￦ 280,000</strong></span>
															</div>
															<div class="display-field">
															</div>
									
														</div>
													</div>
									            </div>
									        </li>
									
									        <li style="width:25%">
									            <div class="space">
													<div class="box ">
														<div class="thumbnail" 
															data-image-magnify="/data/goods/18/11/48/1000000079/1000000079_magnify_051.jpg" 
															data-image-detail="/data/goods/18/11/48/1000000079/1000000079_detail_074.jpg" 
															data-image-list="/data/goods/18/11/48/1000000079/1000000079_list_078.jpg" 
															data-image-main="/data/goods/18/11/48/1000000079/1000000079_main_03.jpg" 
															data-image-add1="/data/goods/18/11/48/1000000079/1000000079_add1_052.jpg" 
															data-image-add2="/data/goods/18/11/48/1000000079/1000000079_add2_089.jpg">
															<a href="../goods/goods_view.php?goodsNo=1000000079">
																<span class="prdimg"><img 
																	data-original="/data/goods/18/11/48/1000000079/1000000079_main_03.jpg" 
																	width="280" alt="더 플래니츠" title="더 플래니츠" class="middle gd_image_lazy" 
																	src="../../resources/img/goods/planet.jpg" style="display: inline;"></span>
															</a>
															<span class="choice -moslow">
																<a href="../goods/goods_view.php?goodsNo=1000000079" target="_blank" class="btn-open-win -moslow" type="button" data-goods-no="1000000079">
																	<span class="ti ti-layout-media-center-alt -moslow"></span>
																	<span class="hand icon-name">새창열기</span></a>
																<a class="wish btn-add-wish -moslow" data-goods-no="1000000079">
																	<span class="ti ti-heart -moslow"></span>
																	<span class="icon-name">찜하기</span></a>
																<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart -moslow" data-mode="cartIn" data-goods-no="1000000079">
																	<span class="ti ti-bag -moslow"></span>
																	<span class="icon-name">장바구니</span></a>
															</span>
														</div>
														<div class="prdinfo">
															<div class="conditions">
																<span class="hot"></span>
															</div>
															<div class="txt">
																<a href="../goods/goods_view.php?goodsNo=1000000079">
									 								<span class="prdName">더 플래니츠</span>
									 								<span class="shotdesc">#스파트리트먼트 #7가지행성 #새로운차원</span></a>
															</div>
															<div class="price gd-default">
																<span class="cost">
																	<strong>￦ 520,000</strong></span>
															</div>
															<div class="display-field">
															</div>
									
														</div>
													</div>
									            </div>
									        </li>
									
									        <li style="width:25%">
									            <div class="space">
													<div class="box ">
														<div class="thumbnail" 
															data-image-list="/data/goods/18/07/31/434/434_list_06.jpg" 
															data-image-main="/data/goods/18/07/31/434/434_main_039.jpg" 
															data-image-add1="/data/goods/18/07/31/434/434_add1_089.jpg" 
															data-image-add2="/data/goods/18/07/31/434/434_add2_053.jpg" 
															data-image-detail="/data/goods/18/07/31/434/434_detail_050.jpg" 
															data-image-magnify="/data/goods/18/07/31/434/434_magnify_034.jpg">
															<a href="../goods/goods_view.php?goodsNo=434">
																<span class="prdimg"><img 
																	data-original="/data/goods/18/07/31/434/434_main_039.jpg" 
																	width="280" alt="카마" title="카마" class="middle gd_image_lazy" 
																	src="../../resources/img/goods/kama.jpg" style="display: inline;"></span>
															</a>
															<span class="choice -moslow">
																<a href="../goods/goods_view.php?goodsNo=434" target="_blank" class="btn-open-win -moslow" type="button" data-goods-no="434">
																	<span class="ti ti-layout-media-center-alt -moslow"></span>
																	<span class="hand icon-name">새창열기</span></a>
																<a class="wish btn-add-wish -moslow" data-goods-no="434">
																	<span class="ti ti-heart -moslow"></span>
																	<span class="icon-name">찜하기</span></a>
																<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart -moslow" data-mode="cartIn" data-goods-no="434">
																	<span class="ti ti-bag -moslow"></span>
																	<span class="icon-name">장바구니</span></a>
															</span>
														</div>
														<div class="prdinfo">
															<div class="conditions">
																<span class="hot"></span>
															</div>
															<div class="txt">
																<a href="../goods/goods_view.php?goodsNo=434">
									 								<span class="prdName">카마</span>
									 								<span class="shotdesc">#스파트리트먼트 #아유르베다 #보디마사지</span></a>
															</div>
															<div class="price gd-default">
																<span class="cost">
																	<strong>￦ 380,000</strong></span>
															</div>
															<div class="display-field">
															</div>
									
														</div>
													</div>
									            </div>
									        </li>
									
									        <li style="width:25%">
									            <div class="space">
													<div class="box ">
														<div class="thumbnail" 
															data-image-magnify="/data/goods/17/01/05/222/222_magnify_085.jpg" 
															data-image-detail="/data/goods/17/01/05/222/222_detail_045.jpg" 
															data-image-list="/data/goods/17/01/05/222/222_list_040.jpg" 
															data-image-main="/data/goods/17/01/05/222/222_main_03.jpg" 
															data-image-add1="/data/goods/17/01/05/222/222_add1_021.jpg" 
															data-image-add2="/data/goods/17/01/05/222/222_add2_062.jpg">
															<a href="../goods/goods_view.php?goodsNo=222">
																<span class="prdimg"><img 
																	data-original="/data/goods/17/01/05/222/222_main_03.jpg" 
																	width="280" alt="테일즈 오브 배쓰" title="테일즈 오브 배쓰" class="middle gd_image_lazy" 
																	src="../../resources/img/goods/tales_bath.jpg" style="display: inline;"></span>
															</a>
															<span class="choice -moslow">
																<a href="../goods/goods_view.php?goodsNo=222" target="_blank" class="btn-open-win -moslow" type="button" data-goods-no="222">
																	<span class="ti ti-layout-media-center-alt -moslow"></span>
																	<span class="hand icon-name">새창열기</span></a>
																<a class="wish btn-add-wish -moslow" data-goods-no="222">
																	<span class="ti ti-heart -moslow"></span>
																	<span class="icon-name">찜하기</span></a>
																<a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart -moslow" data-mode="cartIn" data-goods-no="222">
																	<span class="ti ti-bag -moslow"></span>
																	<span class="icon-name">장바구니</span></a>
															</span>
														</div>
														<div class="prdinfo">
															<div class="conditions">
																<span class="hot"></span>
															</div>
															<div class="txt">
																<a href="../goods/goods_view.php?goodsNo=222">
									 								<span class="prdName">테일즈 오브 배쓰</span>
									 								<span class="shotdesc">#스파트리트먼트 #사이드마사지 #편안한입욕</span></a>
															</div>
															<div class="price gd-default">
																<span class="cost">
																	<strong>￦ 230,000</strong></span>
															</div>
															<div class="display-field">
															</div>
									
														</div>
													</div>
									            </div>
									        </li>
    									</ul> <%-- prdlist end --%>
									</div> <%-- list end --%>
								</div> <%-- item-display end --%>
							</div> <%-- spa_list_wrap --%>
							
							<div class="board-paging02">
								<nav>
									<ul class="pagination pagination-sm">
										<li class="active">
											<span>1</span>
										</li>
									</ul>
								</nav>
							</div>
							
						</div> <%-- cg-main end --%>
					</div> <%-- view end --%>
				</div> <%-- contents end --%>
			</div> <%-- content end --%>
		</div> <%-- container end --%>
		
		<c:import url="../main/mainFooter.jsp"></c:import>
	</div> <%-- wrap end --%>
</body>

</html>