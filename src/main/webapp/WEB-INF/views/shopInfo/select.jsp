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
	height: 100%;
	min-height: 100%;
	margin: 0px auto;
}

#container #content {
	display: block;
	width: 100%;
	margin: 50px auto;
	padding: 0 0 50px;
}

#container #content {
	margin-top: 10px;
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

.board-view-body .textfield {
	padding: 60px 0;
	line-height: 1.8;
}

.board-view-head .board-view-title h2 {
	font-size: 32px;
	font-weight: normal;
	color: #000;
	font-family: "notokrB";
}

.board-view-head .board-view-title {
	overflow: hidden;
	border-bottom: 1px solid #000;
	border-top: 0;
	padding: 0 70px 25px 0;
	position: relative;
}

.board-view-body {
	border-bottom: 1px solid #ddd;
}

.skinbtn.default.boardview-del, .skinbtn.default.boardview-modify, .skinbtn.default.boadview-reply, .skinbtn.default.boardview-list{
    height: 40px;
    line-height: 38px;
    width: 120px;
    font-size: 14px;
}

.board-ctrl-btn .skinbtn {
    margin: 0 0 0 10px;    
    padding: 0 12px;
}

.skinbtn.default {
    border: 1px solid #000;
    color: #000;
}

.m3 {
    margin-top: 30px !important;
}

.ta-r {
    text-align: right;
}

.skinbtn {
    display: inline-block;
    width: 128px;
    height: 50px;
    padding: 0;
    text-align: center;
    vertical-align: top;
    box-sizing: border-box;
    cursor: pointer;
    font-size: 12px;
    border: 0px solid #000000;
    border-radius: 0;
}

</style>
</head>
<body>
	<c:import url="../main/mainHeader.jsp"></c:import>
	<div id="container">
		<div id="content">
			<div class="contents-inner cs-page">
				<div class="admin-wrap">
					<div class="shop-tit">SHOP INFORMATION</div>
				</div>
				<div class="shop-desc">가까운 러쉬 매장에서 느끼는 향기로운 경험!</div>
				<div class="section">
					<div class="section-body section-body-this">
						<div class="board-view">
							<div class="board-view-head">
								<div class="board-view-title">
									<h2>${shopInfo.name}</h2>
								</div>
								<div class="board-view-info" style="display: none;">
									<div class="author">
										<span class="text1"><strong><img src=""></strong>
										</span> <span class="divide-bar">&nbsp;</span> <span class="text2">2019.03.05
											17:00:56</span>
									</div>
									<div class="value">
										<span class="text4"> <!--<span class="divide-bar"></span>-->
											<strong>조회수</strong> 13,367
										</span>
									</div>
								</div>
								<div class="board-view-info" style="display: none;">
									<img
										src="https://rlzr1ac8g.toastcdn.net/data/skin/front/howling/board/skin/gallery_shop/img/etc/icon-clip.png"
										alt="" class="va-m"> <strong>첨부파일</strong> <a
										href="https://lush.co.kr/data/board/upload/shop/be3acd21fabafca6"
										class="filename fz11">롯데인천터미널.jpg</a>&nbsp;&nbsp;
								</div>
							</div>
							<div class="board-view-body">
								<!--상품.주문연동-->

								<!--상품.주문연동-->
								<div class="textfield shop_textfield">
									<div style="margin: 10px 0 10px 0">
										<img
											src="https://lush.co.kr/data/board/upload/shop/650a374c015777f6"
											style="max-width: 980px">
									</div>
									<b> <strong><span
											style="font-weight: bold; color: rgb(37, 37, 37); font-size: 12pt;">${shopInfo.name}</span></strong>
									</b>
									<p>
										<span style="color: rgb(37, 37, 37); font-size: 11pt;">&nbsp;</span>
									</p>
									<p>
										<span
											style="font-weight: bold; color: rgb(37, 37, 37); font-size: 11pt;"><b>Time</b></span>
									</p>
									<p
										style="box-sizing: border-box; color: rgb(51, 51, 51); font-family:"
										malgun="" gothic",="" "맑은="" 고딕",="" applegothic,="" dotum,=""
										돋움,="" "helvetica="" neue",="" helvetica,="" arial,=""
										sans-serif;="" background-color:="" rgb(255,=""
										255,="" 255);"="">
										<span
											style="box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(37, 37, 37); font-family: 돋움, dotum; font-size: 11pt;">평일
											10:30 -&nbsp;20:00</span>
									</p>
									<p
										style="box-sizing: border-box; color: rgb(51, 51, 51); font-family:"
										malgun="" gothic",="" "맑은="" 고딕",="" applegothic,="" dotum,=""
										돋움,="" "helvetica="" neue",="" helvetica,="" arial,=""
										sans-serif;="" background-color:="" rgb(255,=""
										255,="" 255);"="">
										<span
											style="box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(37, 37, 37); font-family: 돋움, dotum; font-size: 11pt;">주말&nbsp;</span><span
											style="box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(37, 37, 37); font-family: 돋움, dotum; font-size: 11pt;">10:30
											-&nbsp;20:30</span>
									</p>
									<p>
										<span style="color: rgb(37, 37, 37); font-size: 11pt;">&nbsp;</span>
									</p>
									<p>
										<span
											style="font-weight: bold; color: rgb(37, 37, 37); font-size: 11pt;"><b>Phone</b></span>
									</p>
									<p>
										<span style="color: rgb(37, 37, 37); font-size: 11pt;">${shopInfo.phone}</span>
									</p>
									<p>
										<span style="color: rgb(37, 37, 37); font-size: 11pt;">&nbsp;</span>
									</p>
									<p>
										<span
											style="font-weight: bold; color: rgb(37, 37, 37); font-size: 11pt;"><b>Address</b></span>
									</p>
									<p>
										<span style="color: rgb(37, 37, 37); font-size: 11pt;">${shopInfo.address}</span>
									</p>
									<p>
										<span style="color: rgb(37, 37, 37); font-size: 11pt;">&nbsp;</span>
									</p>
									<p>
										<span
											style="font-weight: bold; color: rgb(37, 37, 37); font-size: 11pt;"><b>Announce</b></span>
									</p>
									<p>
										<span style="color: rgb(37, 37, 37); font-size: 11pt;">${shopInfo.announce}</span>
									</p>
									<p>
										<span style="color: rgb(37, 37, 37); font-size: 11pt;">&nbsp;</span>
									</p>
									<div id="gtx-trans"
										style="left: -230px; top: 373px; position: absolute;">
										<div class="gtx-trans-icon"></div>
									</div>
									<iframe width="1080" height="720" src="${shopInfo.youtube}"
										title="YouTube video player" frameborder="0"
										allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
										allowfullscreen=""></iframe>

									<div align="center" style="text-align: center;">
										<br>
									</div>


									<div align="center" style="text-align: center;">
										<img title="common notice"
											src="https://rlzr1ac8g.toastcdn.net/data/noti/noti_shop.jpg">
									</div>
								</div>
							</div>

						</div>

						<div class="ta-r m3 board-ctrl-btn">
							<a class="skinbtn default boardview-list" href="./list"><em>목록</em></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%-- <a href="./delete?num=${noticeVO.num}">Delete</a>
	<a href="./update?num=${noticeVO.num}">Update</a> --%>
	<c:import url="../main/mainFooter.jsp"></c:import>
</body>
</html>