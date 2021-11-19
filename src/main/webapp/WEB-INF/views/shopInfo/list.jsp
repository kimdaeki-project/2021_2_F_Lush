<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@font-face {
	font-family: 'notokrB';
	src: url('/resources/fonts/NotoSansKR-Black.otf') format('opentype');
}

@font-face {
	font-family: 'HelveticaNeue-Heavy';
	src: url('/resources/fonts/HelveticaNeue-Heavy.otf') format('opentype');
}

#container {
    display: block;
    width: 100%;
    /* min-width: 1000px; */
    max-width: 1180px;
    min-height: 500px;
    vertical-align: top;
}

#container {
    display: table;
    table-layout: fixed;
    position: relative;
    /* width: 1000px; */
    width: 100% min-height:100%;
    margin: 0 auto;
    /* z-index: 1; */
}

#container #content {
    margin-top: 10px;
}

#container #content {
    display: block;
    width: 100%;
    margin: 50px auto;
    padding: 0 0 50px;
}

.contents-inner {
    padding: 90px 0 100px !important;
}

.shop-tit {
	font-family: 'HelveticaNeue-Heavy', 'notokrB';
	text-align: center;
	color: #000;
	font-size: 42px;
	line-height: 48px;
}

.shop-desc {
	padding: 25px 0 80px;
	font-size: 16px;
	color: #333;
	text-align: center;
}

.search-box {
    padding: 26px;
    border-left: 0;
    border-right: 0;
    background: #f8f8f8;
}

.ta-c {
    text-align: center;
}

.search-box .item {
    display: inline-block;
    vertical-align: middle;
}

.st-hs {
    text-align: left;
}

.chosen-container-single .chosen-single span {
    display: block;
    overflow: hidden;
    margin-right: 26px;
    text-overflow: ellipsis;
    white-space: nowrap;
}

.chosen-container-single .chosen-single {
    /* position: relative; */
    display: block;
    overflow: hidden;
    padding: 0 0 0 8px;
    height: 28px;
    border: 1px solid #ccc;
    background-color: #fff;
    color: #333;
    text-decoration: none;
    white-space: nowrap;
    line-height: 27px;
    margin: 0 !important;
}

.chosen-container-single .chosen-sch {
    height: 40px;
    line-height: 38px;
    margin: 0 !important;
    background: none;
    font-size: 16px;
}

.txt-field {
    position: relative;
    width: auto;
    height: 38px;
    padding: 0 10px;
    background: #fff;
    border: 1px solid #ccc;
    vertical-align: middle;
}

.txt-field.hs .text {
    width: 100%;
    height: 36px;
    padding: 0;
    border: 1px solid #fff;
    color: #333;
    line-height: 36px;
}


.boardlist-search {
    width: 144px;
    height: 40px;
    line-height: 1 !important;
    /* line-height: 36px; */
    margin-left: 25px;
    font-size: 16px;
    letter-spacing: 1px;
}

.search-box .item .chosen-container {
    margin: 0;
    margin-right: 10px;
    background: #fff;
}

.chosen-single div b {
    background: url('https://lush.co.kr/data/skin/front/howling/img/etc/select-arrow-down-11x7.png') no-repeat left 50%;
}

.chosen-container-single .chosen-single div b {
    display: block;
    width: 100%;
    height: 100%;
    background: url('https://lush.co.kr/data/skin/front/howling/js/jquery/chosen/chosen-sprite.png') no-repeat 0px 4px;
}

.btn_bk {
    border: 1px solid #000;
    background: #000;
    color: #fff;
}

.btnicon {
    display: inline-block;
    vertical-align: middle;
    text-align: center;
    box-sizing: border-box;
}

button {
    font-family: "notokrR";
}

.cs-page .type-gallery.shop_boad_list {
    margin-top: 20px;
}

.cs-page .type-gallery {
    padding: 13px 0 0;
}

.item-display .list {
    position: relative;
}

.shop_boad_list .list ul {
    overflow: hidden;
    width: 100%;
}

.item-display .list ul {
    padding-top: 10px;
    
	
}

.cs-page .item-display.type-gallery .list ul li {
    margin: 0 0 0px;
}

.shop_boad_list .list ul li {
    float: left;
    width: 275px;
    margin-right: 0px !important;
}

.item-display .list ul li {
    display: inline-block;
    padding: 0 0 60px;
    font-size: 12px;
    text-align: center;
    vertical-align: top;
}

.item-display .list .space {
    margin: 0 auto;
    padding: 0 10px;
}

.shop_boad_list .list ul li .space {
    padding: 0;
}


.item-display .list ul li .thumbnail {
    overflow: hidden;
    text-align: center;
    position: relative;
    height: 0;
    width: 100%;
    margin: 0;
    padding-bottom: 100%;
}

.cs-page .type-gallery.item-display .list ul li .thumbnail {
    padding-bottom: 70%;
}

.item-display .thumbnail a > img {
    /* border: 1px solid #E9E9E9; */
    position: absolute;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    width: 100%;
    /* height: 100%; */
}

.cs-page .item-display.type-gallery.shop_boad_list .list ul li .txt {
    padding-top: 15px;
    margin: 4px 0 0;
}

.cs-page .item-display.type-gallery.shop_boad_list .list ul li .txt a > strong {
    font-size: 20px;
    color: #333;
    font-weight: normal;
    font-family: 'notokrM';
}

.list-ul {
	display: flex;
	flex-wrap: wrap; 
	justify-content: space-between;
}



</style>

</head>
<body>

	<c:import url="../main/mainHeader.jsp"></c:import>
	<div id="container">
	<div class="content">
		<div class="contents-inner cs-page">
			<div class="admin-wrap">
				<div class="shop-tit">SHOP INFORMATION</div>
				<div class="shop-desc">가까운 러쉬 매장에서 느끼는 향기로운 경험!</div>
			</div>

			<div class="search-box  ta-c shopsearch-box">
				<div class="item">
					<div class="st-hs"></div>
				</div>
				<div class="item">
					<div class="st-hs">
						<select name="searchField" class="tune"
							style="width: 99px; display: none;">
							<option value="subject" selected="">매장명</option>
							<option value="contents">내용</option>
						</select>
						<div
							class="chosen-container chosen-container-single chosen-container-single-nosearch"
							style="width: 99px;" title="">
							<a class="chosen-single chosen-sch" tabindex="-1"><span>매장명</span>
							<div>
									<b></b>
								</div></a>
							<div class="chosen-drop">
								<!-- <div class="chosen-search">
									<input type="text" autocomplete="off" readonly="">
								</div> -->
								<ul class="chosen-results"></ul>
							</div>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="txt-field hs" style="width: 320px;">
						<input type="text" class="text" name="searchWord" value="">
					</div>
				</div>
				<div class="item">
					<button class="btnicon btn_bk  boardlist-search" style="submit">
						<em>검색하기</em>
					</button>
				</div>
			</div>

			<form action="./list" id="frm">
				

					<div class="item-display type-gallery shop_boad_list">
					<div class="list">
					<ul class="list-ul">
					<c:forEach items="${shopInfo}" var="shopInfo" varStatus="i">
					<li class="list-li">
						
						<div class="thumbnail">	
						<img src="${shopInfo.photo}" width="275" height="230" class="js-image-load">
						</div>
						<div class="txt"><a href="./select?num=${shopInfo.num}"><strong>${shopInfo.name}</strong></a></div>
						
						
					
					</li>
					</c:forEach>
					
					</ul>
					</div>
					</div>


				
			</form>
		</div>
	</div>
	</div>

	<c:import url="../main/mainFooter.jsp"></c:import>
</body>
</html>