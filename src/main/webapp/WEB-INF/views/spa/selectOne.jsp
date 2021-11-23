<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
	
		.goods-view {display:block; width:1180px;margin:0 auto;}
		.goods-view .goods {  padding:0;}
		.goods-view .goods{display:table;position:relative;width:100%;margin:0 auto;clear:both;margin-top:20px;z-index:0;border:1px solid #ddd;padding:30px 0 30px 0px;}
		.goods-view .goods .image {display:inline-block;position: relative;float: left;width: 380px;margin:0 auto;padding:0 0;text-align:center;margin-left:40px;}
		.goods-view .goods .image .thumbnail { display:block; width:100%; height: auto; margin:0 auto; border: none; text-align: center !important; vertical-align: middle; border:0px solid #ddd !important;}
		#mainImage img { width: 100%; max-width: 100%;  margin:0 auto;}
		
		
		.goods-view .goods .image .more-thumbnail { position: relative; width:100%; margin: 22px auto 0; }
		.goods-view .goods .image .more-thumbnail .slide { overflow: hidden; width: 319px; height: 70px; margin: 0 auto; }
		
		
		.goods-view .goods .image .slider-wrap .slick-track { position: relative; top: 0px; left: 0px; display: block; margin: 0 auto; }
		
		.goods-view .goods .info2{display:inline-block; float:left; width:310px; margin-right:60px; white-space:initial}
		.goods-view .goods .info2:after{content:''; display:block; clear:both;}
		
		.goods-view .goods .info { display:inline-block; position: relative; float: right; width: 580px; min-height:600px; padding:0; margin-right:40px;   }
		.goods-view .goods .info .info_wrap{display:block;position:relative;width:100%;margin:0 auto;}
		.goods-view .goods .info .item {border-bottom:0;}
		.goods-view .goods .info .item ul{ padding-top:25px; }
		.goods-view .goods .info .item ul li:first-child { display: block; border-top: none;  }
		.goods-view .goods .info .item ul li { display: table; position:relative; padding: 10px 0;  color:#333333;   line-height:25px; }
		.goods-view .goods .info .item ul li > div { display: table-cell; position: relative; width: 100%; vertical-align: middle; }
		
		.goods-view .goods .info .item ul li .dc_rate{ display:block; position:absolute; right:0; top:0; width:40px; height:40px; line-height:40px; background:#555555; color:#FFFFFF; font-size:15px; text-align:center;}
		
		.goods-view .goods .info .choice.add { border-top: none; }
		.goods-view .goods .info .choice { display: table; width:100%; padding: 5px 0; }
		.goods-view .goods .info .choice .list { display:table; width:100%; }
		.goods-view .goods .info .choice .list > strong { display: table-cell; float:left; width: 80px !important; line-height:30px; color: #111111; padding: 0 0 0 0; vertical-align: middle; font-weight:normal; }
		.goods-view .goods .info .choice .list > div {display: table-cell; width: 100% !important;}
		.goods-view .goods .info .choice .list > div select,
		.goods-view .goods .info .choice .list > div .chosen-container{ float:left; width:314px !important;}
		
		.order-goods {background: #FFFFFF;border: 0;}
		.order-goods .check { display: table; padding:10px 0; }
		
		
		
		.goods-view .goods .info .goods_icons{padding-bottom:10px;}
		.goods-view .goods .info .goods_icons img{padding:0 4px 0 0;}
		.goods-view .goods .info .goods_icons span{display:inline-block;margin-right:5px;padding:5px 10px;font-size:12px;line-height:14px;border:1px solid #00a24d;color:#00a24d;text-transform:uppercase}
		.goods-view .goods .info .goods-header {position: relative;margin-bottom:20px;padding-bottom:20px;border-bottom: 1px solid #e7e7e7;}
		.goods-view .goods .info .top .tit { display: block;  float: none;  width: auto;  }
		.goods-view .goods .info .top .tit h2 { padding-right:60px; line-height:34px; color: #000000; font-weight:normal; font-size: 28px; font-family : "notokrM";}
		.goods-view .goods .info .top .hashtag{padding-top:8px;font-size:16px;color:#808080;}
		.goods-view .goods .info .sns { position: absolute; top: 3px; right: 33px; font-size: 0px; z-index:1; }
		.goods-view .goods .info .sns > a.target-sns-share{width:20px;height:20px;border:0;padding:0;margin:0;font-size:0;background: url('../../img/etc/icon_share.png') no-repeat;}
		.goods-view .goods .info .sns > a.target-sns-share em{display:none;}
		.goods-view .goods .info .top_zzim { position: absolute; top: 3px; right: 0px;  z-index:1;width:20px;height:20px;border:0;padding:0;margin:0;font-size:0;background: url('../../img/etc/icon_zzim.png') no-repeat; }
		.goods-view .goods .info .item ul li > strong { display: table-cell; float: left;  line-height:25px; width: 80px; color: #333; font-weight: normal; vertical-align: top; }
		.goods-view .goods .info .item ul li.delivery a{ top:0px;}
		
		.goods-view .goods .info .item ul li.price > div strong { color: #000;  font-size: 16px;font-weight:normal;font-family : "notokrM"; }
		.goods-view .goods .info .item ul li.price > div span { position: relative; top: -1px; font-size: 14px; }
		.goods-view .goods .info .end-price {overflow: hidden;padding: 20px 0 0;margin-top:10px;border-top:1px solid #e7e7e7;}
		.goods-view .goods .info .end-price .price{font-size:18px;}
		
		.goods-view .goods .info .end-price ul li span { position: relative; float: left; width: 85px;  color: #333; line-height:30px; font-size: 14px; }
		.goods-view .goods .info .end-price ul li strong {float: right;color: #000;line-height:38px;font-size: 24px;font-weight:normal;font-family : "notokrM";}
		.goods-view .goods .info .end-price ul li strong b { position: relative; top: 0px;  font-size:24px; }
		.goods-view .goods .info .end-price ul .total {margin:0;padding:0;border:0;}
		/* .goods-view .goods .info .end-price ul .total { display:block; margin: 0 0 0; padding: 7px 0 0; border-top: none; }
		.goods-view .goods .info .end-price ul .total span { top: 0; color: #000000; line-height:24px; font-size: 13px; font-weight: normal; }
		.goods-view .goods .info .end-price ul .total strong { line-height:26px; font-size: 24px; font-weight:normal;  } */
		.goods-view .goods .info .btn-open-layer{display:none;}
		
		.option_total_display_area{margin-top:15px;}
		.detialbanner {float:left; width:230px; border-right:1px solid #fff; min-height:630px; padding:0 0px 0 0px;}
		
		.order-goods .check .name { display: table-cell; width: 80px; color: #333; padding:0; }
		.order-goods .check .price { display: table-cell; width: auto; padding: 0 10px 0 0; text-align: right; }
		.order-goods .check .price .count{display:inline-block; float:left;border: 1px solid #e7e7e7;}
		.order-goods .check .price .count .text{border:0;font-size:16px; }
		.order-goods .check .price .count .goods-cnt,
		.order-goods .check .price .count .add-goods-cnt{width: 31px; height: 33px; border: 1px solid #ccc; color: #8f8f8f; font-size:18px; line-height: 29px; text-align: center; background:#f8f8f8; }
		.order-goods .check .price .count .add-goods-cnt,
		.order-goods .check .price .count .goods-cnt:hover{ color:#000000;}
		
		.order-goods .check .price .count button.down { float: left;  border :0; background:url('../images/common/icon_count_down.png') no-repeat 50% 50% ; font-size:0; }
		.order-goods .check .price .count button.up { float: left; border:0; background:url('../images/common/icon_count_up.png') no-repeat 50% 50% ; font-size:0; }
		
		
		
		.order-goods .check .price em { display: inline-block; min-width: 150px; line-height:33px; padding: 0 0 0 30px;text-align:left; color: #333; font-size: 16px; vertical-align: middle; }
		
		.skinbtn.point1 {-webkit-transition: all 0.10s ease-out;-moz-transition: all 0.10s ease-out;-o-transition: all 0.10s ease-out;transition: all 0.10s ease-out;}
		.skinbtn.point2 { -webkit-transition: all 0.10s ease-out; -moz-transition: all 0.10s ease-out; -o-transition: all 0.10s ease-out; transition: all 0.10s ease-out;}
		.skinbtn {display: inline-block; *display: inline; *zoom: 1;width:128px;height: 50px;padding: 0;text-align: center;vertical-align: top;box-sizing: border-box;cursor: pointer;font-size: 12px;border: 0px solid #000000;border-radius:0;}
		
		.skinbtn.point2.btn-add-order {float:right;width:285px;height: 50px;line-height: 50px;margin:0 !important;color:#fff;font-size: 15px !important;background:#000;border: 1px solid #000;border-radius:0;}
		.skinbtn.point2.btn-add-order:hover{background: #333 !important;border-color: #333 !important;}
		.skinbtn.point1.btn-add-cart {width:285px;height: 50px;line-height: 50px;margin:0;color:#000000;font-size: 15px;font-weight: normal;background:#ffffff;border: 1px solid #000;border-radius:0;}
		.skinbtn.point1.btn-add-cart:hover {text-decoration:none !important;}
		.skinbtn.point1.btn-add-wish { width:33%; height: 50px; line-height: 50px; margin:0; color:#000000;  font-size: 14px; font-weight: normal; background:#ffffff;  border: 1px solid #d9d9d9; border-radius:0; }
		
		.skinbtn.point2:hover { background: #222222; border: 1px solid #222222; color:#FFFFFF; }
		.skinbtn.point1:hover { background: #FFFFFF; border: 1px solid #000000; color:#000000; text-decoration:none; }
		.skinbtn.point2.btn-add-order:hover { background-color:#7599b4; border:1px solid #7599b4; color:#ffffff; }
		.skinbtn.point1.btn-add-cart:hover,
		.skinbtn.point1.btn-add-wish:hover { background-color:transparent; border: 1px solid #000000; text-decoration:underline; }
		
		.skinbtn.point2.gv-notorderpossible.soldout { width: 285px; height: 50px; line-height: 50px; font-size: 15px; background: #666666; border: none; cursor: default; color:#ffffff; font-weight:normal; }
		.skinbtn.point2.gv-notorderpossible.soldout:hover{background:#000000;}
		
		.member .inbox .nomember{display:block; text-align:center;}
		.skinbtn.point2.l-nonmembersbuy { display: inline-block; width: 470px; height: 62px; margin: 0 auto; font-size: 15px; font-weight: normal; }
		.skinbtn.point3.inquiry{ background: #ffffff; width:130px; height:27px; margin:5px 0; line-height:25px; font-size:12px;
								border: 1px solid #000000; color: #FFFFFF; background:#000000; font-weight: bold;
								-webkit-transition: all 0.10s ease-out; -moz-transition: all 0.10s ease-out; -o-transition: all 0.10s ease-out; transition: all 0.10s ease-out;}
		.skinbtn.point3.inquiry:hover{ background:#68a4d8; }
		
		.goods-view .goods .info .btn {display:block;width:100%;float:left;margin: 40px 0 0;padding:0;font-size: 0px;}
		.goods-view .goods .info .btn > * { margin: 0 0.5% 0  0;}
		.goods-view .goods .info .btn > * + * {margin: 0 0.5% 0 0;}
		.goods-view .goods .info .btn > * + * + * { margin: 0;}
		
		.goods-view .goods .info .easy-payment {
			display:block;
			clear:both;
		    padding: 20px 0 0;
		    text-align: right;
		}
		
		a {
			color: #1e1e1e; text-decoration : none;
			outline: none;
			text-decoration: none;
		}
		
		body {
			-webkit-font-smoothing: antialiased;
			color: #333;
			font-family: "notokrR", Malgun Gothic, "맑은 고딕", AppleGothic, Dotum, "돋움",
				sans-serif;
			font-size: 14px;
			line-height: 1.4;
			letter-spacing: -0.5px;
		}
		
		h1, h2, h3, h4, h5, h6 {
			color: #717171;
		}
		
		h3 {
			display: block;
			font-size: 1.17em; margin-block-start : 1em; margin-block-end : 1em;
			margin-inline-start : 0px; margin-inline-end : 0px;
			font-weight: bold;
			margin-block-start: 1em;
			margin-block-end: 1em;
			margin-inline-start: 0px;
			margin-inline-end: 0px;
		}
		
		.location {
			display: block;
			position: relative;
			padding: 20px 0 0;
			z-index: 1;
		}
		
		.location:after {
			content: "";
			display: block;
			claer: both;
		}
		
		.location .path {
			display: block;
			float: right;
			width: 620px;
		}
		
		.location .navi .span {
			float: left;
			line-height: 20px;
		}
		
		.location .navi {
			float: left;
			margin: 0 0 0 10px;
			padding: 0 0 0 14px;
			background: url(../../resources/img/step_arrow.png) no-repeat left 8px;
		}
		
		.location .navi .this {
			position: relative;
			z-index: 1;
			border: 1px solid #ccc;
			left-spacing: -1px;
		}
		
		.location .navi .this>a {
			display: inline-block;
			min-width: 115px;
			height: 20px;
			padding: 1px 23px 0 8px;
			background: url(../../resources/img/loc_hide.png) no-repeat right 8px;
			color: #535353;
		}
		
		.location .navi .this div {
			display: none;
			position: absolute;
			left: -1px;
			top: 21px;
			width: 100%;
			min-width: 146px;
			padding: 6px 0;
			background: #fff;
			border: 1px solid #3e3d3c;
		}
		
		.location .navi .this div a {
			display: block;
			height: 20px;
			padding: 2px 0 0 8px;
		}
		
		a:-webkit-any-link {
			color: -webkit-link;
			cursor: pointer;
			text-decoration: underline;
		}
		
		.goods-view .goods {
			display: table;
			position: relative;
			width: 100%;
			margin: 0 auto;
			clear: both;
			margin-top: 20px;
			z-index: 0;
			border: 1px solid #ddd;
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
		
		input, select {
			outline: none;
		    font-family: "notokrR",Malgun Gothic,'맑은 고딕',Helvetica,AppleGothic,dotum,'돋움',sans-serif;
		    color: #717171;
		}
		
		input[type="hidden" i] {
		    appearance: none;
		    background-color: initial;
		    cursor: default;
		    display: none !important;
		    padding: initial;
		    border: initial;
		}
		
		input {
		    -webkit-writing-mode: horizontal-tb !important;
		    text-rendering: auto;
		    color: -internal-light-dark(black, white);
		    letter-spacing: normal;
		    word-spacing: normal;
		    line-height: normal;
		    text-transform: none;
		    text-indent: 0px;
		    text-shadow: none;
		    display: inline-block;
		    text-align: start;
		    appearance: auto;
		    -webkit-rtl-ordering: logical;
		    cursor: text;
		    background-color: -internal-light-dark(rgb(255, 255, 255), rgb(59, 59, 59));
		    margin: 0em;
		    padding: 1px 2px;
		    border-width: 2px;
		    border-style: inset;
		    border-color: -internal-light-dark(rgb(118, 118, 118), rgb(133, 133, 133));
		    border-image: initial;
		}
		
		.goods-view .goods .info {
			display: inline-block;
		    position: relative;
		    float: right;
		    width: 580px;
		    min-height: 600px;
		    padding: 0;
		    margin-right: 40px;
		}
		
		.goods-view .goods .info .info_wrap {
			display: block;
			position: relative;
			width: 100%;
			margin: 0 auto;
		}
		
		.goods-view .goods .info .goods_icons {
			padding-bottom: 10px;
		}
		
		.goods-view .goods .info .goods_header {
			position: relative;
			margin-bottom: 20px;
			padding-bottom: 20px;
			border-bottom: 1px solid #e7e7e7;
		}
		
		.goods-view .goods .info .item {
			border-bottom: 0;
		}
		
		.order-goods {
			background: #FFFFFF;
			border: 0;
		}
		
		.goods-view .goods .info .end-price {
			overview: hidden;
			padding: 20px 0 0;
			margin-top: 10px;
			border-top: 1px solid #e7e7e7;
		}
		
		.goods-view .goods .info .btn {
			display: block;
			width: 100%;
			float: left;
			margin: 40px 0 0;
			padding: 0;
			font-size: 0px;
		}
		
		.goods-view .goods .info .btn > * {
		    margin: 0 0.5% 0 0;
		}
		
		.skinbtn.point1.btn-add-cart {
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
		
		.skinbtn {
		    display: inline-block;
		    padding: 0;
		    text-align: center;
		    vertical-align: top;
		    box-sizing: border-box;
		    cursor: pointer;
		    font-size: 12px;
		}
		
		.skinbtn * {
		    font-size: 100%;
		}
		
		.skinbtn.point2.btn-add-order {
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
		    font-weight: bold;
		}
		
		.mt10 {
			margin-top: 10px;
		}
		
		.toggle_w {
			position: relative;
		}
		
		.toggle_btn {
			display: inline-block;
		    margin: 0;
		    width: 14px;
		    height: 14px;
		    vertical-align: middle;
		    background: url(../../resources/img/etc/icon_tooltip_off.png) no-repeat;
		    cursor: pointer;
		    position: relative;
		}
		
		.toggle_content {
		    position: absolute;
		    top: -5px;
		    left: 20px;
		    border: 1px solid #e7e7e7;
		    background: #fff;
		    z-index: 1;
		}
		
		.toggle_content .toggle_close {
		    position: absolute;
		    top: 10px;
		    right: 10px;
		    width: 19px;
		    height: 18px;
		    background: url(../../resources/img/etc/layer-close.png) no-repeat left top;
		    font-size: 0;
		}
		
		.toggle_content .inner {
		    padding: 10px 30px 10px 10px;
		    font-size: 12px;
		    color: #808080;
		}
		
		.inner {
		    margin: 0 auto;
		}
		
		table, th, td {
		    margin: 0;
		    padding: 0;
		    border-spacing: 0;
		    border: 0;
		    vertical-align: middle;
		}
		
		table {
		    display: table;
		    box-sizing: border-box;
		    text-indent: initial;
		}
		
		.toggle_content .inner {
		    padding: 10px 30px 10px 10px;
		    font-size: 12px;
		    color: #808080;
		}
		
		tbody {
		    display: table-row-group;
		    vertical-align: middle;
		    border-color: inherit;
		}
		
		tr {
		    display: table-row;
		    vertical-align: inherit;
		    border-color: inherit;
		}
		
		.goods-view .goods .info .item ul {
		    padding-top: 25px;
		}
		
		ul {
		    display: block;
		    margin-block-start: 1em;
		    margin-block-end: 1em;
		    margin-inline-start: 0px;
		    margin-inline-end: 0px;
		    padding-inline-start: 40px;
		}
		
		.goods-view .goods .info .item ul li:first-child {
		    display: block;
		    border-top: none;
		}
		
		.goods-view .goods .info .item ul li {
		    position: relative;
		    padding: 10px 0;
		    color: #333333;
		    line-height: 25px;
		}
		
		.goods-view .goods .info .item ul li.price > strong {
		    vertical-align: middle;
		}
		
		.goods-view .goods .info .item ul li > strong {
		    display: table-cell;
		    float: left;
		    line-height: 25px;
		    width: 80px;
		    color: #333;
		    font-weight: normal;
		}
		
		.goods-view .goods .info .item ul li > div {
		    display: table-cell;
		    position: relative;
		    width: 100%;
		    vertical-align: middle;
		}
		
		.goods-view .goods .info .item ul li.price > div strong {
		    color: #000;
		    font-size: 16px;
		    font-weight: normal;
		    font-family: "notokrM";
		}
		
		.goods-view .goods .info .item ul li.price > div span {
		    position: relative;
		    top: -1px;
		    font-size: 14px;
		}
		
		.goods-view .goods .info .item ul li > div > span {
		    color: #555;
		}
		
		.goods-view .goods .info .end-price ul {
		    float: right;
		}

		.goods-view .goods .info .end-price .price {
		    font-size: 18px;
		}
		
		.goods-view .goods .info .end-price ul li {
		    overflow: hidden;
		}
		
		.goods-view .goods .info .end-price ul li span {
		    position: relative;
		    float: left;
		    width: 85px;
		    color: #333;
		    line-height: 30px;
		    font-size: 14px;
		}
		
		.goods-view .goods .info .end-price ul li span {
		    top: 5px;
		    padding: 0 0 0 3px;
		    position: relative;
		    float: left;
		    width: 85px;
		    color: #333;
		    line-height: 30px;
		    font-size: 14px;
		}
		
		.goods-view .goods .info .end-price ul li strong {
		    float: right;
		    color: #000;
		    line-height: 38px;
		    font-size: 24px;
		    font-weight: normal;
		    font-family: "notokrM";
		}
		
		.goods-view .goods .info .end-price ul li strong b {
		    position: relative;
		    top: 0px;
		    font-size: 24px;
		}
		
		.goods-view .goods .info .end-price ul li strong {
		    float: right;
		    color: #000;
		    line-height: 38px;
		    font-family: "notokrM";
		}
		
		.dn {
		    display: none !important;
		}
		
		.goods-view .goods .info .end-price ul .discount strong {
		    color: #3e3d3c;
		}
		
		.goods-view .goods .info .end-price ul .total {
		    margin: 0;
		    padding: 0;
		    border: 0;
		}
		
		.goods-view .goods .info .btn {
		    display: block;
		    width: 100%;
		    float: left;
		    margin: 40px 0 0;
		    padding: 0;
		    font-size: 0px;
		}
		
		.goods-view .goods .info .btn > * {
		    margin: 0 0.5% 0 0;
		}
		
		em, var {
		    font-style: normal;
		}
		
	</style>
</head>

<body>

	<div id="remainsGoodsLayer" style="display: none;">
		<div class="box add-cart-layer"
			style="margin: auto; margin-top: 16%; padding-top: 1px; background-color: #ffffff; text-align: center;">
			<div class="view" style="position: relative; margin: 28px 20px;">
				<!-- <h2>장바구니 담기</h2> -->
				<div class="scroll-box">
					<p class="success">
						<strong id="remainsGoods1"></strong> <span id="remainsGoods2"></span>
					</p>
				</div>
				<div class="btn">
					<button class="btnicon btn_bk btn_m w160 layer-cart-btn"
						onclick="closeGoodsCntClose();">
						<em>확인하기</em>
					</button>
				</div>
				<button title="닫기" class="closeGoodsCntClose" type="button"
					onclick="closeGoodsCntClose();">닫기</button>
			</div>
		</div>
	</div>

	<div id="wrap">
		<%--------------- 헤더영역 ---------------%>
		<%-- <c:import url="../main/mainHeader.jsp"></c:import> --%>

		<%--------------- 본문영역 ---------------%>
		<div id="container" class>
			<div id="content">

				<%-- JS 2개 추가하기 --%>
				<meta property="recopick:title" content="탱글드 헤어 트리트먼트">
				<meta property="recopick:image"
					content="../../resources/img/goods/tangled_hair_treatment_detail.jpg">
				<meta property="recopick:price" content="70000.00">
				<meta property="recopick:price:currency" content="KRW">
				<meta property="recopick:sale_price" content="70000.00">
				<meta property="recopick:sale_price:currency" content="KRW">

				<%-- JS 3개, html 2개 추가 --%>

				<div class="groobeeProductDetail" style="display: none;">
					<span class="groobeeProductName">탱글드 헤어 트리트먼트</span> <span
						class="groobeeProductPrice">70000.00</span> <span
						class="groobeeProductSalePrice">70000.00</span> <span
						class="groobeeProductCode">1000001808</span> <span
						class="groobeeProductImage"><img
						src="../../resources/img/goods/tangled_hair_treatment_detail.jpg"
						width="380" alt="탱글드 헤어 트리트먼트" title="탱글드 헤어 트리트먼트" class="middle"></span>
					<span class="groobeeProductCategory">002001001</span> <span
						class="groobeeProductCategoryName">LUSH SPA</span> <span
						class="groobeeProductCategoryName">SPA</span> <span
						class="groobeeProductCategoryName">TREATMENTS</span> <span
						class="groobeeProductStatus">n</span>
				</div>

				<%--------------- 상품페이지 ---------------%>
				<div class="goods-view">

					<%--------------- 카테고리 ---------------%>
					<div class="location">
						<div class="path">
							<h3 class="dn">현재 위치</h3>
							<span>홈</span>

							<!-- 토글1 -->
							<div class="navi">
								<div class="this">
									<a href="#">LUSH SPA</a>
									<div>
										<a href="#">러쉬</a> <a href="#">LUSH SPA</a>
									</div>
								</div>
							</div>
							<!-- 토글2 -->
							<div class="navi">
								<div class="this">
									<a href="#">SPA</a>
									<div>
										<a href="#">SPA</a>
									</div>
								</div>
							</div>
							<!-- 토글3 -->
							<div class="navi">
								<div class="this">
									<a href="#">TREATMENTS</a>
									<div>
										<a href="#">TREATMENTS</a>
									</div>
								</div>
							</div>
						</div>
						<%-- path end --%>
					</div>
					<%-- location end --%>

					<%--------------- 상품주문 영역 ---------------%>
					<div class="goods">
						<%--------------- 주문영역 이미지 ---------------%>
						<div class="image">
							<div class="thumbnail">
								<a href="#zoom-layer" class="zoom-layer-open btn-open-layer"
									id="mainImage"> <img
									src="../../resources/img/goods/tangled_hair_treatment.jpg"
									width="380" alt="탱글드 헤어 트리트먼트" title="탱글드 헤어 트리트먼트"
									class="middle"></a>
							</div>
							<div class="more-thumbnail">
								<div class="slide">
									<div
										class="slider-wrap cycle slider-image-thumbnail slick-initialized slick-slider">
										<div aria-live="polite" class="slick-list">
											<div class="slick-track" role="listbox"
												style="opacity: 1; width: 80px; transform: translate3d(0px, 0px, 0px);">
												<span
													class="swiper-slide slick-slide slick-current slick-active"
													data-slick-index="0" aria-hidden="false" tabindex="-1"
													role="option" aria-describedby="slick-slide20"
													style="width: 80px;"> <a
													href="javascript:change_image('0','detail');" tabindex="0">
														<img
														src="../../resources/img/goods/tangled_hair_treatment_detail.jpg"
														width="68" alt="탱글드 헤어 트리트먼트" title="탱글드 헤어 트리트먼트"
														class="middle">
												</a>
												</span>
											</div>
										</div>
									</div>
								</div>
								<div
									class="prev slider-image-thumbnail-prev slick-arrow slick-hidden"
									title="이전 상품 이미지" aria-disabled="true" tabindex="-1"></div>
								<div
									class="next slider-image-thumbnail-next slick-arrow slick-hidden"
									title="다음 상품 이미지" aria-disabled="true" tabindex="-1"></div>
							</div>
						</div>

						<%--------------- 주문영역 주문 ---------------%>
						<form name="frmView" id="frmView" method="post">
							<input type="hidden" name="mode" value="get_benefit"> <input
								type="hidden" name="scmNo" value="1"> <input
								type="hidden" name="cartMode" value=""> <input
								type="hidden" name="set_goods_price" value="70000"> <input
								type="hidden" name="set_goods_fixedPrice"
								id="set_goods_fixedPrice" value="0.00"> <input
								type="hidden" name="set_goods_mileage" value="0"> <input
								type="hidden" name="set_goods_stock" value="∞"> <input
								type="hidden" name="set_coupon_dc_price" value="70000.00">
							<input type="hidden" name="set_goods_total_price"
								id="set_goods_total_price" value="0"> <input
								type="hidden" name="set_option_price" id="set_option_price"
								value="0"> <input type="hidden"
								name="set_option_text_price" id="set_option_text_price"
								value="0"> <input type="hidden"
								name="set_add_goods_price" id="set_add_goods_price" value="0">
							<input type="hidden" name="set_total_price" value="70000">
							<input type="hidden" name="mileageFl" value="c"> <input
								type="hidden" name="mileageGoods" value="0.00"> <input
								type="hidden" name="mileageGoodsUnit" value="percent"> <input
								type="hidden" name="goodsDiscountFl" value="n"> <input
								type="hidden" name="goodsDiscount" value="0.00"> <input
								type="hidden" name="goodsDiscountUnit" value="percent">
							<input type="hidden" name="taxFreeFl" value="t"> <input
								type="hidden" name="taxPercent" value="10.0"> <input
								type="hidden" name="scmNo" value="1"> <input
								type="hidden" name="brandCd" value="001"> <input
								type="hidden" name="cateCd" value="002001001"> <input
								type="hidden" id="set_dc_price" value="0"> <input
								type="hidden" name="spaPreNo" value="130"> <input
								type="hidden" id="goodsOptionCnt" value="1">

							<%--------------- 주문영역 전체 ---------------%>
							<div class="info">
								<div class="info_wrap">
									<div class="goods_icons" style="display: none;"></div>
									
									<%--------------- 주문영역 제품명, 공유, 찜하기 ---------------%>
									<div goods-header>
										<div class="top">
											<div class="tit">
												<h2>탱글드 헤어 트리트먼트</h2>
												<span></span>
											</div>
											<div class="hashtag">#두피트리트먼트 #기분좋은낮잠처럼</div>
										</div>
										<div class="sns">
											<a class="normal-btn small1 target-sns-share"> <em>공유<img
													class="arrow" src="../../resources/img/etc/bl_arrow.png"
													alt=""></em>
											</a>
											<div class="sns-share-layer dn">
												<div class="wrap">
													<strong>SNS 공유하기</strong>
													
													<div>
														<ul>
															<li><a href="https://www.facebook.com/sharer/sharer.php?display=popup&amp;redirect_uri=http%3A%2F%2Fwww.facebook.com&amp;u=https%3A%2F%2Fwww.lush.co.kr%3A443%2Fgoods%2Fgoods_view.php%3FgoodsNo%3D1000001808&amp;t=%ED%83%B1%EA%B8%80%EB%93%9C+%ED%97%A4%EC%96%B4+%ED%8A%B8%EB%A6%AC%ED%8A%B8%EB%A8%BC%ED%8A%B8%EC%95%88%EB%85%95%ED%95%98%EC%84%B8%EC%9A%94.+%ED%94%84%EB%A0%88%EC%89%AC+%ED%95%B8%EB%93%9C%EB%A9%94%EC%9D%B4%EB%93%9C+%EC%BD%94%EC%8A%A4%EB%A9%94%ED%8B%B1+%EB%9F%AC%EC%89%AC%EC%BD%94%EB%A6%AC%EC%95%84%EC%9E%85%EB%8B%88%EB%8B%A4." data-width="750" data-height="300" data-sns="facebook" class="btn-social-popup"><img src="/data/skin/front/howling/img/btn/sns-facebook.png"><br><span>페이스북</span></a></li>
															<li><a href="https://twitter.com/intent/tweet?text=%ED%83%B1%EA%B8%80%EB%93%9C+%ED%97%A4%EC%96%B4+%ED%8A%B8%EB%A6%AC%ED%8A%B8%EB%A8%BC%ED%8A%B8%EC%95%88%EB%85%95%ED%95%98%EC%84%B8%EC%9A%94.+%ED%94%84%EB%A0%88%EC%89%AC+%ED%95%B8%EB%93%9C%EB%A9%94%EC%9D%B4%EB%93%9C+%EC%BD%94%EC%8A%A4%EB%A9%94%ED%8B%B1+%EB%9F%AC%EC%89%AC%EC%BD%94%EB%A6%AC%EC%95%84%EC%9E%85%EB%8B%88%EB%8B%A4.&amp;url=https%3A%2F%2Fwww.lush.co.kr%3A443%2Fgoods%2Fgoods_view.php%3FgoodsNo%3D1000001808" data-width="500" data-height="250" data-sns="twitter" class="btn-social-popup"><img src="/data/skin/front/howling/img/btn/sns-twitter.png"><br><span>트위터</span></a></li>
															<li><a href="https://www.pinterest.com/pin/create/button/?url=https%3A%2F%2Fwww.lush.co.kr%3A443%2Fgoods%2Fgoods_view.php%3FgoodsNo%3D1000001808&amp;description=%5B%EB%9F%AC%EC%89%AC%EC%BD%94%EB%A6%AC%EC%95%84%5D+%ED%83%B1%EA%B8%80%EB%93%9C+%ED%97%A4%EC%96%B4+%ED%8A%B8%EB%A6%AC%ED%8A%B8%EB%A8%BC%ED%8A%B8FRESH+HANDMADE+COSMETIC+LUSH+KOREA&amp;media=https%3A%2F%2Flush.co.kr%3A443%2F%2Fdata%2Fgoods%2F21%2F06%2F26%2F1000001808%2F1000001808_detail_089.jpg" data-width="750" data-height="570" data-sns="pinterest" class="btn-social-popup"><img src="/data/skin/front/howling/img/btn/sns-pinterest.png"><br><span>핀터레스트</span></a></li>
											
											                <script type="text/javascript">
											                $(function () {
											                    $(".btn-social-popup").click(function(e){
											                    e.preventDefault();
											                    
											                var sns = $(this).data("sns");
											                var ments = "";
											                switch(sns) {
											                    case "facebook" :
											                        ments = "페이스북";
											                    break;
											                    case "twitter" :
											                        ments = "트위터";
											                    break;
											                    case "pinterest" :
											                        ments = "핀터레스트";
											                    break;
											                    case "kakaolink" :
											                        ments = "카카오링크";
											                    break;
											                    case "kakaostory" :
											                        ments = "카카오스토리";
											                    break;
											                    default:
											                        ments = "카카오스토리";
											                    break;
											                }
											                if(ments != "") _AceTM.SNS(ments);
											                console.log("_AceTM.SNS("+ments+");");
											                
											                    popup({
											                        url: $(this).prop("href"),
											                        target: "_blank",
											                        width: $(this).data("width"),
											                        height: $(this).data("height"),
											                        resizable: "no",
											                        scrollbars: "no"
											                    });
											                });
											                });
											                </script>
            
											
										                    <li><a href="javascript:shareStory();" id="shareKakaoStoryBtn" data-sns="kakaostory"><img src="/data/skin/front/howling/img/btn/sns-kakaostory.png"><br><span>카카오스토리</span></a></li>
										                    <script type="text/javascript" src="/data/skin/front/howling/js/kakao/kakao.min.js"></script>
										                    <script type="text/javascript">
										                        //<![CDATA[
										                        Kakao.init("");
										                        function shareStory() {
										                            
												                var sns = $(this).data("sns");
												                var ments = "";
												                switch(sns) {
												                    case "facebook" :
												                        ments = "페이스북";
												                    break;
												                    case "twitter" :
												                        ments = "트위터";
												                    break;
												                    case "pinterest" :
												                        ments = "핀터레스트";
												                    break;
												                    case "kakaolink" :
												                        ments = "카카오링크";
												                    break;
												                    case "kakaostory" :
												                        ments = "카카오스토리";
												                    break;
												                    default:
												                        ments = "카카오스토리";
												                    break;
												                }
												                if(ments != "") _AceTM.SNS(ments);
												                console.log("_AceTM.SNS("+ments+");");
												                
												                            Kakao.Story.share({
												                                text: "안녕하세요. 프레쉬 핸드메이드 코스메틱 러쉬코리아입니다.",
												                                url: "https://www.lush.co.kr:443/goods/goods_view.php?goodsNo=1000001808"
												                            });
												                        }
												                        //]]>
									                    	</script>
                
														</ul>
														<div class="copyurl">
															<input type="text" value="https://www.lush.co.kr:443/goods/goods_view.php?goodsNo=1000001808" class="text field-b" style="width:196px;margin-right:8px;margin-left:0;">
															<button type="button" class="gd_clipboard skinbtn point2" data-clipboard-text="https://www.lush.co.kr:443/goods/goods_view.php?goodsNo=1000001808" title="상품주소"><em class="h28">URL복사</em></button>
														</div>
													</div>
													<button type="button" class="close target-sns-share" title="닫기">닫기</button>
												</div>
											</div>
										</div>
										<a href="#option_display_area" id="wishBtn" class="top_zzim btn-add-wish"><em>찜하기</em></a>
										
									</div>
									
									<%--------------- 후기, good to know, 판매가 영역 ---------------%>
									<div class="item">
										<%--------------- 후기영역 ---------------%>
										<div>
											<a href="#reviews"><span class="-moslow"><span class="review_underline">0</span>개의 후기 보기</span></a>
										</div>
										
										<%--------------- good to know 영역 ---------------%>
										<div class="mt10">
				                            <!-- 튜닝 : vegan,sp start -->
			                                Good to Know
				                            <!-- 튜닝 : vegan,sp end -->
											<span class="toggle_w">
												<span class="toggle_btn"></span>
												<div class="toggle_content" style="width: 500px; display: none;">
													<a href="#;" class="toggle_close">닫기</a>
													<div class="inner">
														<style>
															.goodToKnow>table>tbody>tr>td{
																height: 60px;
																font-size: 13px;
																font-weight: 600;
															}
															.goodToKnow>table>tbody>tr>td>span{
																font-size: 12px;
																font-weight: 500;
															}
															.goodToKnowImg{
																text-align: center;
																width: 92px;
															}
															.goodToKnowImg>img{
																/*width: 55px;*/
															}
														</style>
														<div class="goodToKnow" style="width: 100%;">
															<table style="width: 100%; border-collapse: collapse;">
																<tbody>
																	<tr>
																		<td class="goodToKnowImg">
																			<img src="/data/skin/front/howling/img/lush/vegan_92x60.png" alt="비건(Vegan)">
																		</td>
																		<td>
																			비건(Vegan)<br>
																			<span>동물성 원료를 전혀 포함하지 않은 영국 비건협회 인증된 제품입니다.</span>
																		</td>
																	</tr>
																	<tr>
																		<td class="goodToKnowImg">
																			<img src="/data/skin/front/howling/img/lush/vegetarian2_92x60.png" alt="베지터리언(Vegetarian)">
																		</td>
																		<td>
																			베지테리언(Vegetarian)<br>
																			<span>우유, 달걀, 꿀을 제외한 동물성 원료를 포함하지 않은 영국 베지테리언 협회 인증 제품입니다.</span>
																		</td>
																	</tr>
																	<tr>
																		<td class="goodToKnowImg">
																			<img src="/data/skin/front/howling/img/lush/special-suitable_vegan_92x60.png" alt="비건/베지터리언에게 적합한 제품(Suitable for Vegans / Suitable for Vegetarian)">
																		</td>
																		<td>
																			비건/베지테리언에게 적합한 제품(Suitable for Vegans / Suitable for Vegetarians)<br>
																			<span>동물성 원료를 포함하지 않은 제품입니다.</span>
																		</td>
																	</tr>
																	<tr>
																		<td class="goodToKnowImg">
																			<img src="/data/skin/front/howling/img/lush/selfpreserving_92x60.png" alt="셀프-프리저빙(Self-Preserving)">
																		</td>
																		<td>
																			셀프-프리저빙(Self-Preserving)<br>
																			<span>자연에서 얻은 원재료로 스스로 보존 가능한 제품입니다.</span>
																		</td>
																	</tr>
																</tbody>
															</table>
														</div>
														<!--
														Vegan - 동물성 원재료를 전혀 포함하지 않은 제품<br><br>
														Vegetarian - 우유, 달걀, 꿀 등 동물에게서 고통 없이 얻은 원재료를 포함한 제품<br><br>
														Suitable for Vegans<br>
														Suitable for Vegetarians - 베지테리언 소사이어티(Vegetarian Society) 인증을 앞둔 제품<br><br>
														Self-Preserving - 화학 합성 보존제 없이도 신선함을 유지하는 제품
														-->
													</div>
												</div>
											</span>
											<script>
												$(document).ready(function(){
													$('.toggle_btn').click(function(){
															$('.toggle_content').toggle();
													});
													$('.toggle_close').click(function(){
															$('.toggle_content').hide();
													});
													$('.sns > a').click(function(){
															$('.toggle_content').hide();
													});
												});
											</script>
											<!-- <span class="tooltip_btn">
												<span class="tooltip_con">
													<span>
													Vegan - 동물성 원료 (육류, 생선류, 조개류, dairy product, 달걀, 꿀 등) 가 배제된 것을 의미합니다.<br><br>
													Vegetarian -  달걀, 꿀 등을 포함/포함하지 않고, 살아있거나 죽은 동물의 어떠한 부분도 취하지 않은 것입니다.<br><br>
													Suitable for Vegans<br>
													Suitable for Vegetarians - Vegan 혹은 Vegetarian에 적합하지만, 제품 출시일 기준 아직 Vegan,  Vegetarian 로고 사용에 대한 승인이 나지 않아 라벨에 로고를 사용하지 못 할 시에  소비자에게 정보를 알리기위해 사용하는 임시표시 입니다.<br><br>
													Self-Preserving - 자연에서 얻은 원재료로 스스로 보존이 가능한 제품을 뜻합니다.
													</span>
												</span>
											</span> -->
										</div>
										
										<%--------------- 판매가 영역 ---------------%>
										<ul>
											<li class="price ">
												<strong> 판매가</strong>
												<div>
													<strong>￦70,000</strong><span></span>
												</div>
											</li>
										</ul>
									</div> <%-- item end --%>
									
									<%--------------- 구매수량 영역 ---------------%>
									<div class="order-goods option_display_area">
										<div id="option_display_item_0">
											<input type="hidden" name="goodsNo[]" value="1000001808">
											<input type="hidden" name="optionSno[]" value="3162">
											<input type="hidden" name="goodsPriceSum[]" value="70000">
											<input type="hidden" name="addGoodsPriceSum[]" value="0">
											<input type="hidden" name="couponApplyNo[]" value="">
											<input type="hidden" name="couponSalePriceSum[]" value="">
											<input type="hidden" name="couponAddPriceSum[]" value="">
											<div class="check optionKey_0">
												<span class="name"><!--<strong>탱글드 헤어 트리트먼트</strong>-->구매수량
													<button type="button" class="btn-alert-login" style="display:none;"><img src="/data/skin/front/howling/img/btn/coupon-apply.png" alt="쿠폰적용"></button>
													<span id="option_text_display_0"></span>
												</span>

												<div class="price">
													<span class="count">
														<button type="button" class="down goods-cnt" title="감소" value="dn^|^0" style="cursor: pointer">-</button>
														<input type="text" class="text goodsCnt_0 js-number" title="수량" data-key="0" name="goodsCnt[]" value="1" data-value="1" data-stock="0" onchange="goodsViewController.input_count_change(this,'1');  return false;">
														<button type="button" class="up goods-cnt" title="증가" value="up^|^0" style="cursor: pointer">+</button>
													</span>
													<em><input type="hidden" value="0" name="optionPriceSum[]"> <input type="hidden" value="0.00" name="option_price_0">￦<strong class="option_price_display_0">70,000</strong></em>
												</div>
											</div>
										</div>
									</div> <%-- 구매수량 역역 end --%>
									
									<%--------------- 금액 영역 ---------------%>
									<div class="end-price">
										<ul>
											<li class="price">
												<span>총 제품 금액</span>
												<strong class="goods_total_price"> ￦ 70,000<b></b></strong>
											</li>
											<li class="discount dn">
												<span>총 할인 금액</span>
												<strong class="total_benefit_price"></strong>
											</li>
											<li class="total">
												<span>총 합계 금액</span>
												<strong class="total_price"> ￦ 70,000<b></b></strong>
											</li>
										</ul>
									</div> <%-- 금액 영역 end --%>
									
									<%-- script 추가 --%>
									<%--------------- 장바구니, 구매하기 버튼 ---------------%>
									<div class="btn">
										<a href="#option_display_area" id="cartBtn" class="skinbtn point1 btn-add-cart" onmousedown="AEC_F_D('1000001808','i',document.getElementsByName('goodsCnt[]')[0].value);_LA.EC.CI(['1000001808'], [1]);"><em>장바구니</em></a>
										<a href="#option_display_area" class="skinbtn point2 btn-add-order" onmousedown="AEC_F_D('1000001808','i',document.getElementsByName('goodsCnt[]')[0].value);"><em>주문하기</em></a>
									</div>
									
									<%-- 결제 API --%>
									<div class="easy-payment">
										<div id="div-payco" style="display: none;">
										</div>
										<div id="div-naverpay">
										</div>
									</div>
									
								</div> <%-- info_wrap end --%>
							</div> <%-- info end --%>
						</form>
					</div><%-- goods end --%>
					
					<%--------------- Plus Review 영역 ---------------%>
					<div class="adpic_detail"></div>
					<script type="text/javascript"></script>

				</div>
				<%-- goods-view end --%>




			</div>

		</div>
	</div>
	
</body>

</html>