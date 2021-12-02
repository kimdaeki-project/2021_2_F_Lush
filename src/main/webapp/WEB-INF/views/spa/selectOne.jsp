<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<style type="text/css">
		body #container {
			color: #333;
			font-family: "notokrR", Malgun Gothic, "맑은 고딕", AppleGothic, Dotum, "돋움",
				sans-serif;
			font-size: 14px;
			line-height: 1.4;
			letter-spacing: -0.5px;
		}
		
		img {
			vertical-align: top;
		}
		
		@font-face {
			font-family: 'notokrB';
			src: url('/resources/fonts/NotoSansKR-Bold.otf') format('opentype');
		}
		
		@font-face {
			font-family: 'notokrM';
			src: url('/resources/fonts/NotoSansKR-Medium.otf') format('opentype');
		}
		
		@font-face {
			font-family: 'notokrR';
			src: url('/resources/fonts/NotoSansKR-Regular.otf') format('opentype');
		}
		
		body > #wrap {
		    height: auto;
		    min-height: 100%;
		}
		
		#wrap {
		    display: block;
		    margin: 0 auto;
		    width: 100%;
    		min-width: 1180px;
		}
		
		#wrap > #side, #wrap > #container {
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
			padding-top: 100px;
			vertical-align: top;
			table-layout: fixed;
			position: relative;
			margin: 0 auto;
		}
		
		#container.goodsv_container #content {
			display: block;
			width: 100%;
		}
		
		#container #content {
			margin: 50px auto;
			padding: 0 0 50px;
		}
		
		#container>#content {
			vertical-align: top;
		}
		
		.goods-view {
			display: block;
			width: 1180px;
			margin: 0 auto;
		}
		
		.location {
			display: block;
			position: relative;
			padding: 20px 0 0;
			z-index: 1;
		}
		
		.location .path {
			display: block;
			float: right;
			width: 620px;
		}
		
		.dn {
			display: none !important;
		}
		
		.location .path span {
			float: left;
			line-height: 20px;
		}
		
		.location .navi {
			float: left;
			margin: 0 0 0 10px;
			padding: 0 0 0 14px;
			background: url(../../resources/img/etc/step_arrow.png) no-repeat left
				8px;
		}
		
		.location .navi .this {
			position: relative;
			z-index: 1;
			border: 1px solid #ccc;
			letter-spacing: -1px;
		}
		
		.location .navi .this>a {
			display: inline-block;
			min-width: 115px;
			height: 20px;
			padding: 1px 23px 0 8px;
			background: url(../../resources/img/etc/loc_hide.png) no-repeat right
				8px;
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
		
		.location .navi .this:hover div {
			display: block;
		}
		
		.location .navi .this div::selection {
		    background: #000000;
		    color: #fff;
		    text-shadow: none;
		}
		
		.location .navi .this div a {
			display: block;
			height: 20px;
			padding: 2px 0 0 8px;
		}
		
		.goods-view .goods {
			display: table;
			position: relative;
			width: 100%;
			margin: 0 auto;
			clear: both;
			margin-top: 20px;
			z-index: 0;
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
		
		.goods-view .goods .image .more-thumbnail {
			position: relative;
			width: 100%;
			margin: 22px auto 0;
		}
		
		.goods-view .goods .image .more-thumbnail .slide {
			overflow: hidden;
			width: 319px;
			height: 70px;
			margin: 0 auto;
		}
		
		.goods-view .goods .image .more-thumbnail .slide .cycle {
			position: relative;
			font-size: 0;
		}
		
		.goods-view .goods .image .slider-wrap .slick-track {
			position: relative;
			top: 0px;
			left: 0px;
			display: block;
			margin: 0 auto;
		}
		
		.goods-view .goods .image .more-thumbnail .slide .cycle a {
			display: inline-block;
			overflow: hidden;
			margin: 0 14px 0 0;
			vertical-align: top;
		}
		
		.goods-view .goods .image .more-thumbnail .slide .cycle a img {
			width: 63px;
			height: 63px;
			border: 1px solid #f2f2f2;
		}
		
		.goods-view .goods .image .more-thumbnail .prev {
			left: 0;
			background: url(../../resources/img/etc/prev.png) no-repeat left top;
		}
		
		.goods-view .goods .image .more-thumbnail .prev, .goods-view .goods .image .more-thumbnail .next
			{
			display: block;
			position: absolute;
			top: 28px;
			width: 10px;
			height: 17px;
		}
		
		.goods-view .goods .image .more-thumbnail .next {
			right: 0;
			background: url(../../resources/img/etc/next.png) no-repeat left top;
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
		
		.goods-view .goods .info .sns {
			position: absolute;
			top: 3px;
			right: 33px;
			font-size: 0px;
			z-index: 1;
		}
		
		.goods-view .goods .info .sns>a.target-sns-share {
			width: 20px;
			height: 20px;
			border: 0;
			padding: 0;
			margin: 0;
			font-size: 0;
			background: url(../../resources/img/etc/share.png) no-repeat;
		}
		
		.normal-btn {
			display: inline-block;
			padding: 0 10px !important;
			color: #333;
			text-align: center;
			vertical-align: top;
			box-sizing: border-box;
			cursor: pointer;
			font-family: "notokrR";
		}
		
		.goods-view .goods .info .sns>a.target-sns-share em {
			display: none;
		}
		
		.normal-btn img {
			margin: 0 0 0 5px;
			vertical-align: middle;
		}
		
		.sns-share-layer {
			position: absolute;
			top: 24px;
			right: 0px;
			z-index: 10;
			width: 350px;
			background: #fff;
		}
		
		.sns-share-layer .wrap {
			position: relative;
			width: 348px;
			border: 1px solid #555;
		}
		
		.sns-share-layer .wrap>strong {
			display: block;
			height: 30px;
			padding: 10px 0 0 17px;
			background: #f4f4f4;
			color: #000;
			font-size: 14px;
		}
		
		.sns-share-layer .wrap>div {
			overflow-x: hidden;
			overflow-y: auto;
			padding: 0 21px 20px;
		}
		
		.sns-share-layer .wrap>div ul {
			clear: both;
			overflow: hidden;
			margin: 0 0 15px;
		}
		
		.sns-share-layer .wrap>div ul li {
			float: left;
			width: 25%;
			padding: 20px 0 0;
			font-size: 12px;
			text-align: center;
		}
		
		.sns-share-layer .wrap>div ul li img {
			width: 35px;
			height: 35px;
		}
		
		.sns-share-layer .wrap > div ul li span {
		    display: inline-block;
		    padding: 5px 0 0;
		}
		
		.sns-share-layer .wrap>div .copyurl {
			clear: both;
		}
		
		input.text.field-b {
			height: 31px;
			padding: 0 10px;
			background: #fff;
			border: 1px solid #d0d0d0;
		}
		
		.sns-share-layer .gd_clipboard.gd_clipboard.skinbtn.point2 {
			width: 80px;
			height: 33px;
		}
		
		.skinbtn.point2 {
			background: #ffffff;
			border: 1px solid #000000;
			color: #000000;
			transition: all 0.10s ease-out;
			font-weight: bold;
		}
		
		.skinbtn {
			display: inline-block;
			padding: 0;
			text-align: center;
			vertical-align: top;
			box-sizing: border-box;
			cursor: pointer;
			font-size: 12px;
			border-radius: 0;
		}
		
		.skinbtn * {
			font-size: 100%;
		}
		
		button {
			cursor: pointer;
			border: none;
			outline: none;
			font-family: "notokrR";
		}
		
		button em {
			font-family: "notokrR";
		}
		
		.sns-share-layer .wrap .close {
			display: block;
			position: absolute;
			top: 11px;
			right: 12px;
			width: 18px;
			height: 18px;
			text-indent: -9999px;
			background: url(../../resources/img/etc/layer_close.png) no-repeat left
				top;
		}
		
		.goods-view .goods .info .top_zzim {
			position: absolute;
			top: 3px;
			right: 0px;
			z-index: 1;
			width: 20px;
			height: 20px;
			border: 0;
			padding: 0;
			margin: 0;
			font-size: 0;
			background: url(../../resources/img/etc/zzim.png) no-repeat;
		}
		
		.goods-view .goods .info .item {
			border-bottom: 0;
		}
		
		a {
		    color: #1e1e1e;
		}
		
		.review_underline {
			border-bottom: 1px solid #333;
		}
		
		/* Good to know */
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
		    display: none;
		    position: absolute;
		    top: -5px;
		    left: 20px;
		    width: 575px;
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
		    background: url(../../resources/img/etc/layer_close.png) no-repeat left top;
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
		
		table, th, td {
		    margin: 0;
		    padding: 0;
		    border-spacing: 0;
		    border: 0;
		    vertical-align: middle;
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
		
		goodToKnow>table>tbody>tr>td {
		    height: 60px;
		    font-size: 13px;
		    font-weight: 600;
		}
		
		.goodToKnowImg {
		    text-align: center;
		    width: 92px;
		}
		
		.goodToKnow>table>tbody>tr>td>span {
		    font-size: 12px;
		    font-weight: 500;
		}
		
		/* 판매가 */
		.goods-view .goods .info .item ul {
		    padding-top: 25px;
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
		
		/* 구매수량 */
		.order-goods {
		    background: #FFFFFF;
		    border: 0;
		}
		
		.order-goods .check {
		    display: table;
		    padding: 10px 0;
		}
		
		.order-goods .check .name {
		    display: table-cell;
		    width: 80px;
		    color: #333;
		    padding: 0;
		}
		
		.order-goods .check > * {
		    vertical-align: middle;
		}
		
		button {
		    cursor: pointer;
		    background: none;
		    border: none;
		    outline: none;
		}
		
		.order-goods .check .price {
		    display: table-cell;
		    width: auto;
		    padding: 0 10px 0 0;
		    text-align: right;
		}
		
		.order-goods .check .price .count {
		    display: inline-block;
		    float: left;
		    border: 1px solid #e7e7e7;
		}
		
		.goods-view .goods .info .order-goods .check .price .count button.down {
		    width: 50px;
		    height: 40px;
		}
		
		.order-goods .check .price .count button.down {
		    float: left;
		    border: 0;
		    background: url(../../resources/img/etc/icon_count_down.png) no-repeat 50% 50%;
		    font-size: 0;
		}
		
		.order-goods .check .price .count .goods-cnt, .order-goods .check .price .count .add-goods-cnt {
		    color: #8f8f8f;
		    line-height: 29px;
		    text-align: center;
		}		
		
		.goods-view .goods .info .order-goods .check .price .count .text {
		    width: 53px;
		    height: 40px;
		    line-height: 40px;
		    padding: 0;
		}		
		
		.order-goods .check .price .count .text {
		    border: 0;
		    font-size: 16px;
		    float: left;
		    color: #3f3f3f;
		    text-align: center;
		}	
		
		.goods-view .goods .info .order-goods .check .price .count button.up {
		    width: 50px;
		    height: 40px;
		}
		
		.order-goods .check .price .count button.up {
		    float: left;
		    border: 0;
		    background: url(../../resources/img/etc/icon_count_up.png) no-repeat 50% 50%;
		    font-size: 0;
		}
		
		.goods-view .goods .info .order-goods .check .price > em {
		    min-width: auto;
		    padding: 0 8px 0 20px;
		    color: #000;
		    line-height: 40px;
		    font-size: 14px;
		    font-weight: normal;
		}
		
		.order-goods .check .price em {
		    display: inline-block;
		    text-align: left;
		    vertical-align: middle;
		}
			
		.goods-view .goods .info .end-price {
		    overflow: hidden;
		    padding: 20px 0 0;
		    margin-top: 10px;
		    border-top: 1px solid #e7e7e7;
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
	        top: 5px;
    		padding: 0 0 0 3px;
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
		    font-weight: normal;
		}
		
		.goods-view .goods .info .end-price ul .discount strong {
		    color: #3e3d3c;
		}
		
		.goods-view .goods .info .end-price ul .total {
		    margin: 0;
		    padding: 0;
		    border: 0;
		}
		
		.goods-view .goods .info .end-price ul .total span {
		    color: #333;
		    font-size: 14px;
		}
		
		/* 장바구니, 주문하기 */
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
		    color: #000000;
		    font-size: 15px;
		    font-weight: normal;
		    background: #ffffff;
		    border: 1px solid #000;
		    border-radius: 0;
		}
		
		address, caption, cite, code, dfn, em, var {
		    font-style: normal;
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
		}
		
		.goods-view .goods .info .easy-payment {
		    display: block;
		    clear: both;
		    padding: 20px 0 0;
		    text-align: right;
		}
		
		.goods-view .goods .info .easy-payment > div {
		    margin: 0 0 10px;
		}
		
		.goods-view .goods .info .easy-payment #div-naverpay {
		    overflow: hidden;
		    height: 58px;
		    margin: 0;
		}
		
		.goods-view .goods .info .easy-payment > div {
		    display: inline-block;
		}
		
		/* 리뷰 */
		.plusreview-container {
		    width: 100%;
		}
		
		.plusreview-container .title-container {
		    margin-bottom: 15px;
		}
		
		.plusreview-container .title-container .text {
		    font-family: 'HelveticaNeue-Bold','notokrB';
		    font-size: 20px;
		    color: #222222;
		}
		
		.plusreview-container .summary_new .photoreview-container {
		    float: left;
		    width: 745px;
		    height: 190px;
		    border: 1px solid #f2f2f2;
		    box-sizing: border-box;
		}
		
		.plusreview-container .summary_new .photoreview-container .inner {
		    position: relative;
		    padding: 27px 20px 0;
		}
		
		.plusreview-container .summary_new .photoreview-container .title {
		    padding-bottom: 10px;
		    font-size: 18px;
		    color: #000;
		    font-family: 'notokrM';
		}
		
		.plusreview-container .summary_new .photoreview-container .photo_list {
		    overflow: hidden;
		    width: 660px;
		    height: 100px;
		}
		
		.plusreview-container .photoreview-container .photo-info {
		    padding-top: 20px;
		    text-align: center;
		}
		
		.plusreview-container .summary_new .photoreview-container .inner .more {
		    position: absolute;
		    bottom: 0;
		    right: 20px;
		    font-size: 12px;
		}
		
		.plusreview-container .summary_new .score-container {
		    float: right;
		    width: 428px;
		    height: 190px;
		    border: 1px solid #f2f2f2;
		    box-sizing: border-box;
		}
		
		.plusreview-container .summary_new .score-container .inner {
		    display: table;
		    width: 100%;
		    table-layout: fixed;
		}
		
		.plusreview-container .summary_new .score-container .average {
		    display: table-cell;
		    width: 215px;
		    height: 188px;
		    vertical-align: middle;
		    text-align: center;
		}
		
		.plusreview-container .summary_new .score-container .average .title {
		    font-size: 18px;
		    font-family: 'notokrM';
		    color: #333;
		}
		
		.plusreview-container .summary_new .score-container .average .score {
		    font-size: 45px;
		    font-family: 'HelveticaNeue-Bold';
		    color: #000;
		}
		
		.plusreview-container .summary_new .score-container .average .star {
		    font-size: 16px;
		}
		
		.plusreview-container .summary_new .score-container .counter {
		    display: table-cell;
		    width: 208px;
		    height: 188px;
		    vertical-align: middle;
		    font-size: 16px;
		}
		
		.plusreview-container .summary_new .score-container .counter > div {
		    position: relative;
		    padding: 12px 0;
		}
		
		.plusreview-container .summary_new .score-container .counter .title {
		    color: #808080;
		}
		
		.plusreview-container .summary_new .score-container .counter .content {
		    position: absolute;
		    top: 12px;
		    right: 64px;
		    color: #333;
		}
		
		.plusreview-container .reward {
		    display: none;
		}
		
		.plusreview-container .reward {
		    width: 100%;
		    margin-bottom: 10px;
		}
		
		.plusreview-container .reward .selectbox {
		    width: 700px;
		    height: 34px;
		    float: left;
		    margin-right: 10px;
		    padding: 0;
		}
		
		select {
		    outline: none;
		    vertical-align: top;
		    color: #717171;
		}
		
		option {
		    font-weight: normal;
		    display: block;
		    white-space: nowrap;
		    min-height: 1.2em;
		    padding: 0px 2px 1px;
		}
		
		.plusreview-container .chosen-container {
		    background-color: #ffffff;
		}
		
		.chosen-container {
		    position: relative;
		    display: inline-block;
		    vertical-align: middle;
		    font-size: 14px;
		    zoom: 1;
		    user-select: none;
		}
		
		.plusreview-container .chosen-single.chosen-sch {
		    height: 33px;
		}
		
		.chosen-container-single .chosen-sch {
		    height: 40px;
		    line-height: 38px;
		    margin: 0 !important;
		    background: none;
		}
		
		.chosen-container-single .chosen-sch {
		    border: 1px solid #ccc;
		}
		
		.chosen-container-single .chosen-single {
		    position: relative;
		    display: block;
		    overflow: hidden;
		    padding: 0 0 0 8px;
		    color: #333;
		    text-decoration: none;
		    white-space: nowrap;
		}
		
		.chosen-container a {
		    cursor: pointer;
		}
		
		.chosen-container * {
		    box-sizing: border-box;
		}
		
		.plusreview-container .reward .selectbox span {
		    font-size: 15px;
		    color: #ffcc00;
		}
		
		.chosen-container-single .chosen-single span {
		    display: block;
		    overflow: hidden;
		    margin-right: 26px;
		    text-overflow: ellipsis;
		    white-space: nowrap;
		}
		
		.chosen-container-single .chosen-single div {
		    position: absolute;
		    top: 0;
		    right: 0;
		    display: block;
		    width: 18px;
		    height: 100%;
		}
		
		.chosen-container-single .chosen-single div b {
			display: block;
		    width: 100%;
		    height: 100%;
		    background: url(../../resources/img/etc/select_arrow_down.png) no-repeat left 50%;
		}
		
		.chosen-container .chosen-drop {
			border: 1px solid #ccc;
		    overflow-y: auto;
		    max-height: 400px;
		    box-sizing: border-box;
    		box-shadow: none;
    		position: absolute;
		    top: 100%;
		    left: -9999px;
		    z-index: 1010;
		    width: 100%;
		    background: #fff;
		}
		
		.chosen-container-single .chosen-drop {
		    margin-top: -1px;
		    border-radius: 0;
		    padding: 5px 0;
		    background-clip: padding-box;
		}
		
		.chosen-container-single.chosen-container-single-nosearch .chosen-search {
		    position: absolute;
		    left: -9999px;
		}
		
		.chosen-container-single .chosen-search {
		    z-index: 1010;
		    margin: 0;
		    padding: 3px 4px;
		    white-space: nowrap;
		}
		
		.chosen-container-single .chosen-search input[type="text"] {
		    border: 1px solid #ccc;
		}
		
		.chosen-container-single .chosen-search input[type="text"] {
		    margin: 1px 0;
		    padding: 4px 20px 4px 5px;
		    width: 100%;
		    height: auto;
		    outline: 0;
		    background: url(../../resources/img/etc/chosen_sprite.png) no-repeat 100% -20px;
		    font-size: 1em;
		    font-family: sans-serif;
		    line-height: normal;
		    border-radius: 0;
		}
		
		.chosen-container .chosen-results {
		    margin: 0;
		    padding: 0;
		    color: #444;
		    position: relative;
		    overflow-x: hidden;
		    overflow-y: auto;
		    max-height: 240px;
		}
		
		.plusreview-container .reward .showreward {
		    height: 34px;
		    width: 290px;
		    border: #dbdbdb 1px solid;
		    background-color: #f8f8f8;
		    margin-bottom: 10px;
		    float: left;
		    vertical-align: middle;
		    text-align: center;
		}
		
		.plusreview-container .benefit-layer {
		    position: absolute;
		    top: 40px;
		    left: 648px;
		    z-index: 10;
		    width: 350px;
		    height: auto;
		    background: #fff;
		}
		
		.plusreview-container .benefit-layer .wrap {
		    position: relative;
		    width: 350px;
		    border: 1px solid #555;
		}
		
		.plusreview-container .benefit-layer strong {
		    display: block;
		    height: 27px;
		    padding: 13px 0 0 17px;
		    background: #f4f4f4;
		    color: #222;
		}
		
		.plusreview-container .benefit-layer .info {
		    padding: 10px;
		}
		
		.clear-both {
		    clear: both;
		}
		
		.plusreview-container .write-form {
		    display: none;
		}
		
		.plusreview-container .write-form {
		    margin-bottom: 10px;
		    border: #dbdbdb 1px solid;
		    width: 99.8%;
		}
		
		.plusreview-container .write-form .goods-info {
		    background-color: #f8f8f8;
		    border-bottom: #e8e8e8 solid 1px;
		    padding-top: 11px;
		    padding-bottom: 11px;
		    width: 100%;
		}
		
		.plusreview-container .write-form .goods-info .option {
		    width: 100%;
		}
		
		.plusreview-container .write-form .textarea {
		    height: 200px;
		    border-bottom: #dbdbdb solid 1px;
		    padding: 20px;
		}
		
		.plusreview-container .write-form .textarea .reviewText {
		    width: 100%;
		    height: 100%;
		    border: none;
		}
		
		.textarea textarea {
		    box-sizing: border-box;
		    padding: 5px;
		    color: #333;
		}
		
		textarea {
		    outline: none;
		    color: #717171;
		    font-size: 12px;
		    font-family: "notokrR",Malgun Gothic,'맑은 고딕',Helvetica,AppleGothic,dotum,'돋움',sans-serif;
		}
		
		.plusreview-container .write-form .private-container {
		    border-bottom: #dbdbdb solid 1px;
		    padding: 20px;
		}
		
		.plusreview-container .write-form .private-container .title {
		    margin-bottom: 12px;
		}
		
		.plusreview-container .write-form .private-container .showall {
		    font-size: 12px;
		    color: #484848;
		    text-decoration: underline;
		    margin-left: 20px;
		}
		
		.plusreview-container .write-form .private-container .agreement {
		    border: #dbdbdb 1px solid;
		    width: 100%;
		    height: 60px;
		    overflow-y: scroll;
		}
		
		.plusreview-container .write-form .private-container .personal-information {
		    margin-top: 10px;
		    float: left;
		    width: 810px;
		}
		
		.plusreview-container .write-form .private-container .username {
		    padding-left: 10px;
		    border: 1px solid #cecece;
		    width: 100px;
		    height: 28px;
		    margin-left: 10px;
		    margin-right: 30px;
		}
		
		.plusreview-container .write-form .private-container .agree {
		    float: right;
		    margin-top: 15px;
		}
		
		.plusreview-container .write-form .private-container .agree .checkbox {
		    position: absolute;
		    z-index: -1;
		}
		
		input.checkbox {
		    width: 13px;
		    height: 13px;
		    vertical-align: top;
		}
		
		.plusreview-container .write-form .attach-container {
		    padding: 0 0 0 10px;
		}
		
		.plusreview-container .write-form .attach-container .filelist {
		    float: left;
		}
		
		.plusreview-container .write-form .attach-container .filelist .file {
		    width: 40px;
		    height: 40px;
		    margin-right: 8px;
		    margin-top: 10px;
		    float: left;
		    cursor: pointer;
		    position: relative;
		}
		
		.plusreview-container .write-form .attach-container .filelist .image-upload-button {
		    position: absolute;
		    width: 40px;
		    height: 40px;
		    border-color: transparent;
		    cursor: pointer;
		    background-image: url(../../resources/img/etc/ico_camera.png);
		    background-position: center;
		    background-repeat: no-repeat;
		}
		
		.plusreview-container .write-form .attach-container .buttons {
		    float: right;
		    width: 140px;
		}
		
		.plusreview-container .write-form .attach-container .buttons .button {
		    background-color: #fff;
		    border: 1px solid #000;
		    font-weight: bold;
		    font-size: 15px;
		    color: #333;
		    width: 140px;
		    height: 60px;
		}
		
		.layer-wrap {
		    position: fixed;
		    left: 0;
		    top: 0;
		    z-index: 100;
		    overflow-y: auto;
		    width: 100%;
		    height: 100%;
		    background: rgba(0,0,0,0.3);
		}
		
		#zoom-layer {
			position: fixed;
			left: 0;
			top: 0;
			z-index: 100;
			overflow-y: auto;
			width: 100%;
			height: 100%;
			background: rgba(0,0,0,0.3);
		}
		
		#zoom-layer .wrap {
		    position: relative;
		    width: 920px;
		    height: 666px;
		    min-height: 662px;
		    padding: 0 19px;
		    background: #fff;
		    border: 3px solid #555;
		}
		
		#zoom-layer .wrap .ctt {
		    position: relative;
		}
		
		#zoom-layer .wrap .txt {
		    overflow: hidden;
		    padding: 13px 0;
		    border-bottom: 1px solid #717171;
		}
		
		#zoom-layer .wrap .txt h4 {
		    float: left;
		    padding: 0 0 0 4px;
		    color: #000;
		    font-size: 18px;
		}
		
		#zoom-layer .wrap .txt p {
		    float: left;
		    padding: 5px 0 0 10px;
		    color: #777;
		}
		
		#zoom-layer .wrap .view {
		    display: table;
		    padding: 30px 0 0 31px;
		}
		
		#zoom-layer .wrap .view .detail {
		    display: block;
		    float: left;
		    width: 560px;
		    height: 550px;
		    overflow: auto;
		    vertical-align: middle;
		    text-align: center;
		}
		
		#zoom-layer .wrap .view .detail img {
		    max-width: 560px;
		    vertical-align: middle;
		}
		
		#zoom-layer .wrap .view .list {
		    float: left;
		    position: relative;
		    width: 70px;
		    height: 550px;
		    margin: 0 0 0 117px;
		}
		
		#zoom-layer .wrap .view .list .slide {
		    overflow: hidden;
		    height: 485px;
		    margin: 33px 0 0;
		}
		
		#zoom-layer .wrap .view .list .prev {
		    top: 0;
		    background: url(../../resources/img/etc/vertical_prev.png) no-repeat left top;
		}
		
		#zoom-layer .wrap .view .list .prev, #zoom-layer .wrap .view .list .next {
		    display: block;
		    position: absolute;
		    left: 50%;
		    margin-left: -13px;
		    width: 26px;
		    height: 15px;
		}
		
		#zoom-layer .wrap .view .list .next {
		    bottom: 0;
		    background: url(../../resources/img/etc/vertical_next.png) no-repeat left top;
		}
		
		#zoom-layer .wrap .view .list .prev, #zoom-layer .wrap .view .list .next {
		    display: block;
		    position: absolute;
		    left: 50%;
		    margin-left: -13px;
		    width: 26px;
		    height: 15px;
		}
		
		#zoom-layer .wrap .close {
		    display: block;
		    position: absolute;
		    top: 18px;
		    right: 0;
		    width: 20px;
		    height: 20px;
		    text-indent: -9999px;
		    background: url(../resources/img/etc/zl_close.png) no-repeat left top;
		}
		
		button {
		    cursor: pointer;
		    background: none;
		    border: none;
		    outline: none;
		}
		
		
		
		
		
		
	</style>
	
</head>

<body>

	<div id="wrap">
		<%--------------- 헤더영역 ---------------%>
		<c:import url="../main/mainHeader.jsp"></c:import>

		<%--------------- 본문영역 ---------------%>
		<div id="container">
			<div id="content">

			<!-- 	<meta property="recopick:title" content="탱글드 헤어 트리트먼트">
				<meta property="recopick:image" content="../../resources/img/goods/tangled_hair_treatment_detail.jpg">
				<meta property="recopick:price" content="70000.00">
				<meta property="recopick:price:currency" content="KRW">
				<meta property="recopick:sale_price" content="70000.00">
				<meta property="recopick:sale_price:currency" content="KRW"> -->

				<%-- <div class="groobeeProductDetail" style="display: none;">
					<span class="groobeeProductName">"${spaVO.name}"</span> <span
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
				</div> --%>

				<%--------------- 상품 주문 ---------------%>
				<div class="goods-view">

						
					<%--------------- 상품 주문 : 카테고리 ---------------%>
					<div class="location">
						<div class="path">
							<h3 class="dn">현재 위치</h3>
							<span>홈</span>

							<!-- 토글1 -->
							<div class="navi">
								<div class="this">
									<a href="/spa/list">LUSH SPA</a>
									<div class="drop">
										<a href="../product/productList">러쉬</a>
										<a href="/spa/list">LUSH SPA</a>
									</div>
								</div>
							</div>
							<!-- 토글2 -->
							<div class="navi">
								<div class="this">
									<a href="/spa/list">SPA</a>
									<div class="drop">
										<a href="/spa/list">SPA</a>
									</div>
								</div>
							</div>
							<!-- 토글3 -->
							<div class="navi">
								<div class="this">
									<a href="/spa/list">TREATMENTS</a>
									<div>
										<a href="/spa/list">TREATMENTS</a>
									</div>
								</div>
							</div>
						</div>
						<%-- path end --%>
					</div>
					<%-- location end --%>
					
					<%--------------- 상품 주문 : 제품 ---------------%>
					<div class="goods">
						<%--------------- 상품 주문/제품  : 이미지 ---------------%>
						<div class="image">
							<!-- 큰썸네일 -->
							<div class="thumbnail">
								<a href="#zoom-layer" class="zoom-layer-open btn-open-layer"
									id="mainImage"> <img src="${spaVO.photo_detail_b}" width="380"
									alt="${spaVO.name}" title="${spaVO.name}" class="middle"></a>
							</div>
							<!-- 작은썸네일 -->
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
														src="${spaVO.photo_detail_s}"
														width="68" alt="${spaVO.name}" title="${spaVO.name}"
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

						<%--------------- 상품 주문/제품  : 제품정보 ---------------%>
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

							<div class="info">
								<div class="info_wrap">
									<div class="goods_icons" style="display: none;"></div>
									<%--------------- 상품 주문/제품/제품정보  : 제품명 ---------------%>
									<div class="goods-header">
										<div class="top">
											<div class="tit">
												<h2>${spaVO.name}</h2>
												<span></span>
											</div>
											<div class="hashtag">${spaVO.hashtag}</div>
										</div>
										
										<div class="sns">
											<a class="normal-btn small1 target-sns-share">
												<em>공유<img
													class="arrow" src="../../resources/img/etc/bl_arrow.png"
													alt="">
												</em>
											</a>
											
											<div class="sns-share-layer dn">
												<div class="wrap">
													<strong>SNS 공유하기</strong>
													<div>
														<ul>
															<li>
																<a href="https://www.facebook.com/sharer/sharer.php?display=popup&amp;redirect_uri=http%3A%2F%2Fwww.facebook.com&amp;u=https%3A%2F%2Fwww.lush.co.kr%3A443%2Fgoods%2Fgoods_view.php%3FgoodsNo%3D1000001808&amp;t=%ED%83%B1%EA%B8%80%EB%93%9C+%ED%97%A4%EC%96%B4+%ED%8A%B8%EB%A6%AC%ED%8A%B8%EB%A8%BC%ED%8A%B8%EC%95%88%EB%85%95%ED%95%98%EC%84%B8%EC%9A%94.+%ED%94%84%EB%A0%88%EC%89%AC+%ED%95%B8%EB%93%9C%EB%A9%94%EC%9D%B4%EB%93%9C+%EC%BD%94%EC%8A%A4%EB%A9%94%ED%8B%B1+%EB%9F%AC%EC%89%AC%EC%BD%94%EB%A6%AC%EC%95%84%EC%9E%85%EB%8B%88%EB%8B%A4." 
																	data-width="750" data-height="300" data-sns="facebook" class="btn-social-popup">
																	<img src="../../resources/img/etc/sns_facebook.png"><br>
																	<span>페이스북</span></a>
															</li>
															<li>
																<a href="https://twitter.com/intent/tweet?text=%ED%83%B1%EA%B8%80%EB%93%9C+%ED%97%A4%EC%96%B4+%ED%8A%B8%EB%A6%AC%ED%8A%B8%EB%A8%BC%ED%8A%B8%EC%95%88%EB%85%95%ED%95%98%EC%84%B8%EC%9A%94.+%ED%94%84%EB%A0%88%EC%89%AC+%ED%95%B8%EB%93%9C%EB%A9%94%EC%9D%B4%EB%93%9C+%EC%BD%94%EC%8A%A4%EB%A9%94%ED%8B%B1+%EB%9F%AC%EC%89%AC%EC%BD%94%EB%A6%AC%EC%95%84%EC%9E%85%EB%8B%88%EB%8B%A4.&amp;url=https%3A%2F%2Fwww.lush.co.kr%3A443%2Fgoods%2Fgoods_view.php%3FgoodsNo%3D1000001808" 
																	data-width="500" data-height="250" data-sns="twitter" class="btn-social-popup">
																	<img src="../../resources/img/etc/sns_twitter.png"><br>
																	<span>트위터</span></a>
															</li>
															<li>
																<a href="https://www.pinterest.com/pin/create/button/?url=https%3A%2F%2Fwww.lush.co.kr%3A443%2Fgoods%2Fgoods_view.php%3FgoodsNo%3D1000001808&amp;description=%5B%EB%9F%AC%EC%89%AC%EC%BD%94%EB%A6%AC%EC%95%84%5D+%ED%83%B1%EA%B8%80%EB%93%9C+%ED%97%A4%EC%96%B4+%ED%8A%B8%EB%A6%AC%ED%8A%B8%EB%A8%BC%ED%8A%B8FRESH+HANDMADE+COSMETIC+LUSH+KOREA&amp;media=https%3A%2F%2Flush.co.kr%3A443%2F%2Fdata%2Fgoods%2F21%2F06%2F26%2F1000001808%2F1000001808_detail_089.jpg" 
																	data-width="750" data-height="570" data-sns="pinterest" class="btn-social-popup">
																	<img src="../../resources/img/etc/sns_pinterest.png"><br>
																	<span>핀터레스트</span></a>
															</li>
															<li>
																<a href="javascript:shareStory();" 
																id="shareKakaoStoryBtn" data-sns="kakaostory">
																<img src="../../resources/img/etc/sns_kakaostory.png"><br>
																<span>카카오스토리</span></a>
															</li>
														</ul>
														
														<div class="copyurl">
															<input type="text" value="https://www.lush.co.kr:443/goods/goods_view.php?goodsNo=1000001808" 
																class="text field-b" style="width:196px;margin-right:8px;margin-left:0;">
															<button type="button" class="gd_clipboard skinbtn point2" 
																data-clipboard-text="https://www.lush.co.kr:443/goods/goods_view.php?goodsNo=1000001808" 
																title="상품주소">
																<em class="h28">URL복사</em>
															</button>	
														</div>
													</div>
													<button type="button" class="close target-sns-share" title="닫기">닫기</button>
												</div>
											</div>
											<script>
												$(document).ready(function(){
													$('.target-sns-share').click(function(){
														$('.sns-share-layer').toggleClass("dn");
													});
												});
											</script>
										</div>
										
										<a href="#option_display_area" id="wishBtn"
											class="top_zzim btn-add-wish"> <em>찜하기</em>
										</a>
									</div>
									
									<%--------------- 상품 주문/제품/제품정보  : 후기, good to know, 판매가 ---------------%>
									<div class="item">
										<div>
											<a href="#reviews">
												<span class="-moslow">
													<span class="review_underline">0</span> 
													개의 후기 보기
												</span>
											</a>
										</div>
										<div class="mt10">
											Good to Know
											<span class="toggle_w">
											<script>
												
											</script>
												<span class="toggle_btn"></span>
												<div class="toggle_content" style="width: 500px; display: none;">
													<a href="#;" class="toggle_close">닫기</a>
													<div class="inner">
														<div class="goodToKnow" style="width: 100%;">
															<table style="width: 100%; border-collapse: collapse;">
																<tbody>
																	<tr>
																		<td class="goodToKnowImg"><img
																			src="../../resources/img/goods/know/vegan.png"
																			alt="비건(Vegan)"></td>
																		<td>비건(Vegan)<br> 
																			<span>동물성 원료를 전혀 포함하지 않은 영국 비건협회 인증된 제품입니다.</span>
																		</td>
																	</tr>
																	<tr>
																		<td class="goodToKnowImg"><img
																			src="../../resources/img/goods/know/vegetarian.png"
																			alt="베지터리언(Vegetarian)"></td>
																		<td>베지테리언(Vegetarian)<br> 
																			<span>우유, 달걀, 꿀을 제외한 동물성 원료를 포함하지 않은 영국 베지테리언 협회 인증 제품입니다.</span>
																		</td>
																	</tr>
																	<tr>
																		<td class="goodToKnowImg"><img
																			src="../../resources/img/goods/know/suitable_vegan.png"
																			alt="비건/베지터리언에게 적합한 제품(Suitable for Vegans / Suitable for Vegetarian)">
																		</td>
																		<td>비건/베지테리언에게 적합한 제품(Suitable for Vegans / Suitable for Vegetarians)<br> 
																			<span>동물성 원료를 포함하지 않은 제품입니다.</span>
																		</td>
																	</tr>
																	<tr>
																		<td class="goodToKnowImg"><img
																			src="../../resources/img/goods/know/selfpreserving.png"
																			alt="셀프-프리저빙(Self-Preserving)"></td>
																		<td>셀프-프리저빙(Self-Preserving)<br>
																			<span>자연에서 얻은 원재료로 스스로 보존 가능한 제품입니다.</span>
																		</td>
																	</tr>
																</tbody>
															</table>
														</div>
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
										</div>

										<ul>
											<li class="price ">
												<strong> 판매가</strong>
												<div>
													<strong><fmt:formatNumber value="${spaVO.price}" pattern="￦ #,###"/></strong><span></span>
												</div>
											</li>
										</ul>
									</div> <%-- item end --%>
									
									<%--------------- 상품 주문/제품/제품정보  : 구매수량 ---------------%>
									<div class="order-goods option_display_area">
										<div id="option_display_item_0">
											<input type="hidden" name="goodsNo[]" value="1000001312">
											<input type="hidden" name="optionSno[]" value="2410">
											<input type="hidden" name="goodsPriceSum[]" value="120000">
											<input type="hidden" name="addGoodsPriceSum[]" value="0">
											<input type="hidden" name="couponApplyNo[]" value="">
											<input type="hidden" name="couponSalePriceSum[]" value="">
											<input type="hidden" name="couponAddPriceSum[]" value="">
											
											<div class="check optionKey_0">
												<span class="name">
													구매수량
													<button type="button" class="btn-alert-login" style="display:none;">
														<img src="/data/skin/front/howling/img/btn/coupon-apply.png" alt="쿠폰적용"></button>
													<span id="option_text_display_0"></span>
												</span>
												
												<div class="price">
													<span class="count">
														<button type="button" class="down goods-cnt" title="감소" value="dn^|^0" style="cursor: pointer">-</button>
														<input type="text" class="text goodsCnt_0 js-number" title="수량" data-key="0" name="goodsCnt[]" value="1" data-value="1" data-stock="0" onchange="goodsViewController.input_count_change(this,'1');  return false;">
														<button type="button" class="up goods-cnt" title="증가" value="up^|^0" style="cursor: pointer">+</button>
													</span>
				
													<em><input type="hidden" value="0" name="optionPriceSum[]"> <input type="hidden" value="0.00" name="option_price_0">￦<strong class="option_price_display_0"><fmt:formatNumber value="${spaVO.price}" pattern="#,###"/></strong></em>
												</div>
											</div>
										</div>
									</div> <%-- 구매수량 end --%>
									
									<%--------------- 상품 주문/제품/제품정보  : 최종가격 ---------------%>
									<div class="end-price">
										<ul>
											<li class="price">
												<span>총 제품 금액</span>
												<strong class="goods_total_price"> <fmt:formatNumber value="${spaVO.price}" pattern="￦ #,###"/><b></b></strong>
											</li>
											<li class="discount dn">
												<span>총 할인 금액</span>
												<strong class="total_benefit_price"></strong>
											</li>
											<li class="total">
												<span>총 합계 금액</span>
												<strong class="total_price"> <fmt:formatNumber value="${spaVO.price}" pattern="￦ #,###"/><b></b></strong>
											</li>
										</ul>
									</div>
									
									<%--------------- 상품 주문/제품/제품정보  : 장바구니, 구매하기 버튼 ---------------%>
									<div class="btn">
										<a href="#option_display_area" id="cartBtn" class="skinbtn point1 btn-add-cart" 
											onmousedown="AEC_F_D('1000001312','i',document.getElementsByName('goodsCnt[]')[0].value);_LA.EC.CI(['1000001312'], [1]);">
											<em>장바구니</em>
										</a>
				
										<a href="#option_display_area" class="skinbtn point2 btn-add-order" 
											onmousedown="AEC_F_D('1000001312','i',document.getElementsByName('goodsCnt[]')[0].value);">
											<em>주문하기</em>
										</a>
									</div>
									
									<div class="easy-payment">
										<div id="div-payco" style="display: none;">
										</div>
										<div id="div-naverpay">
										</div>
									</div>
									
								</div>
							</div>

						</form>
					</div> <%-- goods end --%>
					
					<%--------------- 상품 주문 : 리뷰 ---------------%>
					<div class="adpic_detail"></div>
					
					<div class="in_width_wrap">
						<div class="section m2">
							<div class="section-body">
								<form target="ifrmProcess" method="post" action="../board/plus_review_ps.php" enctype="multipart/form-data">
									<input type="hidden" name="mode" value="get_benefit">
									<input type="hidden" name="goodsNo" value="1000001808">
									<input type="hidden" name="orderGoodsNo" value="">
									
									<div class="plusreview-container">
										<div class="title-container">
											<span class="text">Plus Review<span style="display:none;">(0)</span></span>
											<span class="menu"><a href="../board/plus_review_article.php">전체리뷰</a></span>
											<span class="separator">|</span><span class="menu"><a href="../board/plus_review_goods.php">상품별리뷰</a></span>
										</div>
										
										<div class="summary_new">
						                    <div class="graph-container" style="display:none;">
						                        <div class="title">세부평가</div>
						                        <div class="star">★</div>
						                        <div class="number">5</div>
						                        <div class="graph-base">
						                            <div class="graph" style="width:0%;"></div>
						                        </div>
						                        <div class="score">0</div>
						                        <div class="star">★</div>
						                        <div class="number">4</div>
						                        <div class="graph-base">
						                            <div class="graph" style="width:0%;"></div>
						                        </div>
						                        <div class="score">0</div>
						                        <div class="star">★</div>
						                        <div class="number">3</div>
						                        <div class="graph-base">
						                            <div class="graph" style="width:0%;"></div>
						                        </div>
						                        <div class="score">0</div>
						                        <div class="star">★</div>
						                        <div class="number">2</div>
						                        <div class="graph-base">
						                            <div class="graph" style="width:0%;"></div>
						                        </div>
						                        <div class="score">0</div>
						                        <div class="star">★</div>
						                        <div class="number">1</div>
						                        <div class="graph-base">
						                            <div class="graph" style="width:0%;"></div>
						                        </div>
						                        <div class="score">0</div>
						                    </div>
						
						                    <div class="photoreview-container">
						                        <div class="inner">
													<div class="title">포토리뷰 모아보기</div>
						                        	<div class="photo_list">
						                        		<div class="photo-info">정성 가득 포토 후기를 남겨주시면 깜짝 선물을 드려요!</div>
													</div>
						             				<a href="../board/plus_review_photo.php?searchWord=탱글드 헤어 트리트먼트" target="_blank" class="more">더보기 &gt;</a>
												</div>
						                    </div>
						
											<div class="score-container">
						                        <div class="inner">
						                        	<div class="average">
						                        	    <div class="title">평가</div>
						                        	    <div class="score">0</div>
						                        	    <div class="star">
						                        	    </div>
						                        	</div>
						
						                        	<div class="counter">
						                        	    <div>
						                        	    	<div class="title">리뷰등록</div>
						                        	    	<div class="content">0 건</div>
						                        	    </div>
						                        	    <div>
						                        	    	<div class="title">포토리뷰</div>
						                        	    	<div class="content">0 건</div>
						                        	    </div>
						                        	    <div>
						                        	    	<div class="title">상품조회수</div>
						                        	    	<div class="content">14167 건</div>
						                        	    </div>
						                        	</div>
						                        </div>
						                    </div>
						                    <div class="clear-both"></div>
						                </div>
						                
						                <div class="reward" style="position:relative">
						                    <div class="selectbox js-pr-star-select">
						                        <select class="tune" name="goodsPt" style="width: 700px; display: none;" tabindex="-1">
						                            <option data-info="아주만족 " value="5">★★★★★</option>
						                            <option data-info="만족 " value="4">★★★★</option>
						                            <option data-info="보통 " value="3">★★★</option>
						                            <option data-info="미흡 " value="2">★★</option>
						                            <option data-info="불만족" value="1">★</option>
						                        </select><div class="chosen-container chosen-container-single chosen-container-single-nosearch" style="width: 0px;" title=""><a class="chosen-single chosen-sch" tabindex="-1"><span>★★★★★</span><div><b></b></div></a><div class="chosen-drop"><div class="chosen-search"><input type="text" autocomplete="off" readonly="" tabindex="-1"></div><ul class="chosen-results"></ul></div></div>
						                    </div>
						                    <button type="button" class="showreward js-pr-target-benefit">혜택안내</button>
						                    <div class="benefit-layer dn js-pr-benefit">
						                        <div class="wrap">
						                            <strong>구매혜택</strong>
						                            <div class="info"></div>
						                        </div>
						                    </div>
						                    <div class="clear-both"></div>
						                </div>
						                
						                <div class="write-form">
						                    <div class="goods-info">
						                        <div class="option">
						                        </div>
						                    </div>
						
						                    <div class="textarea"><textarea name="contents" class="reviewText" required="" placeholder=""></textarea></div>
						                    <div class="private-container">
						                        <div>
						                            <div class="title"><span><strong>비회원 개인정보 수집동의</strong></span><span class="showall"><a href="../service/private.php" target="_blank">전체보기</a></span></div>
						                            <div class="agreement">- 수집항목: 이름, 전화번호, 이메일주소
						                                - 수집/이용목적: 게시글 접수 및 결과 회신
						                                - 이용기간: 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다.
						                                단, 관계법령의 규정에 의하여 보전할 필요가 있는 경우 일정기간 동안 개인정보를 보관할 수 있습니다.
						                                그 밖의 사항은 (주)러쉬코리아 개인정보처리방침을 준수합니다.
						                            </div>
						                        </div>
						
						                        <div class="personal-information">
						                            <span>작성자</span>
						                            <span><input type="text" class="username" name="writerNm" required=""></span>
						                            <span>비밀번호</span>
						                            <span><input type="password" class="password" name="writerPw" required=""></span>
						                        </div>
						
						                        <div class="agree"><input type="checkbox" class="checkbox require" id="termsAgree" name="agreeFl"><label for="termsAgree">위 내용에 동의 합니다.</label></div>
						                        <div class="clear-both"></div>
						                    </div>
						                    <div class="attach-container">
						                        <div class="filelist">
						                            <div class="file">
						                                <button class="image-upload-button"></button>
						                                <input type="file" name="upfiles[]" class="image-upload"></div>
						                            <div class="js-pr-attach-list" style="float: left">
						                            </div>
						                            <div class="clear-both"></div>
						                        </div>
						                        <div class="buttons">
						                            <button class="button" type="submit">리뷰등록</button>
						                        </div>
						                        <div class="clear-both"></div>
						                    </div>
						                </div>
									</div>
								</form>
							</div>
						</div>
						
						<div id="plusReviewPhotoLayer" class="layer-wrap dn"></div>
						<div id="addPlusReviewOrderLayer" class="layer-wrap dn"></div>
					</div>
					
					<div id="recopick_widget_zi85jAca">
					</div>
					
					<%--------------- 상품 주문 : 상품 정보 ---------------%>
					<c:import url="./selectOneDetail.jsp"></c:import>
					
					<%--------------- 확대보기 ---------------%>
					<div id="zoom-layer" class="layer-wrap dn">
				        <div class="wrap" style="position: absolute; margin: 0px; top: 124px; left: 61px;">
				            <div class="ctt">
				                <div class="txt">
				                    <h4>이미지 확대보기</h4>
				                    <p>${spaVO.name}</p>
				                </div>
				                <div class="view">
				                    <div class="detail" id="magnifyImage">
				                        <img src="${spaVO.photo_detail_b}" width="500" alt="${spaVO.name}" title="${spaVO.name}" class="middle">
				                    </div>
				                    <div class="list">
				                        <div class="slide">
				                            <div class="slider-image-magnify slick-initialized slick-slider slick-vertical">
				                                <div aria-live="polite" class="slick-list" style="height: 500px;">
				                                	<div class="slick-track" role="listbox" style="opacity: 1; height: 100px; transform: translate3d(0px, 0px, 0px);">
				                                		<div class="swiper-slide slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide10" style="width: 0px;">
				                                			<a href="javascript:change_image('0','magnify');" tabindex="0">
				                                				<img src="${spaVO.photo_detail_s}" width="68" alt="${spaVO.name}" title="${spaVO.name}" class="middle">
                                			</a></div></div></div>
				                            </div>
				                        </div>
				                        <div class="prev slider-image-magnify-prev slick-arrow slick-hidden" title="이전 상품 이미지" aria-disabled="true" tabindex="-1"></div>
				                        <div class="next slider-image-magnify-next slick-arrow slick-hidden" title="다음 상품 이미지" aria-disabled="true" tabindex="-1"></div>
				                    </div>
				                </div>
				                <button type="button" class="close zoom-close" title="닫기">닫기</button>
				            </div>
				        </div>
				    </div>
				    <script>
				    	$(document).ready(function(){
				    		$('.thumbnail').click(function(){
				    			$('.layer-wrap').toggleClass("dn");
				    		});
				    		$('.zoom-close').click(function(){
				    			$('.layer-wrap').toggleClass("dn");
				    		})
				    	});
				    </script>
				    
				    
					
				</div> <%-- goods-view end --%>




			</div>

		</div>
		<c:import url="../main/mainFooter.jsp"></c:import>
	</div>
</body>

</html>