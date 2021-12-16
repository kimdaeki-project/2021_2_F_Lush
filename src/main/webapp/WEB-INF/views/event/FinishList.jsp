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
	font-family: 'HelveticaNeue-Heavy';
	src: url('/resources/fonts/HelveticaNeue-Heavy.otf') format('opentype');
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

#wrap>#side, #wrap>#container {
	height: 100%;
	min-height: 100%;
}

#container {
	/* z-index: 9; */
	padding-top: 100px;
}

#container {
	display: block;
	width: 100%;
	min-width: 1000px;
	max-width: 1180px;
	min-height: 500px;
	margin: 0 auto;
	vertical-align: top;
}

#container #content {
	display: block;
	width: 100%;
	margin: 50px auto;
}

#content {
	padding-top: 100px;
}

#contents-inner {
	padding: 90px 0 100px !important;
}

.section-header-event {
	text-align: center;
	margin-top: -65px;
	padding-bottom: 60px;
}

.section-header-event h2 {
	color: #000;
	font-family: 'HelveticaNeue-Heavy', 'notokrB';
	font-size: 42px;
	font-weight: normal;
}

.search-box {
	padding: 26px;
	border-left: 0;
	border-right: 0;
	background: #f8f8f8;
}

.m3 {
	margin-top: 30px !important;
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

select {
	outline: none;
	vertical-align: top;
	/*  color: #717171; */
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

.search-box .item .boardlist-search {
	width: 144px;
	height: 40px;
	line-height: 1 !important;
	/* line-height: 36px; */
	margin-left: 25px;
	font-size: 16px;
	letter-spacing: 1px;
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
	cursor: pointer;
	background: none;
	border: none;
	outline: none;
}

button em {
	font-family: "notokrR";
}

.eventboard-sorting {
	padding: 45px 0 45px;
	text-align: center;
}

.eventboard-sorting li {
	position: relative;
	display: inline-block;
	font-size: 16px;
}

.eventboard-sorting li button {
	display: inline-block;
	padding: 0 40px;
	color: #8f8f8f;
	font-size: 16px;
	font-weight: bold;
}

.eventboard-sorting li .active {
    color: #333;
}

.eventboard-sorting li:after {
	position: absolute;
	top: 50%;
	left: 0;
	width: 1px;
	height: 18px;
	margin-top: -9px;
	/* display: inline-block; */
	background: #8f8f8f;
	content: '';
}

.eventboard-sorting li.all:after {
	display: none;
}

.list-event>ul {
	overflow: hidden;
	width: 100%;
}

.list-event .list-item {
	float: left;
	width: 372px;
	margin-right: 32px;
	padding-bottom: 75px;
}

.list-event .list-item .thumb {
	display: block;
	position: relative;
	width: 100%;
	height: 0;
	padding-bottom: 57%;
	overflow: hidden;
}

.list-event .list-item .thumb img {
	position: absolute;
	top: 0;
	right: 0;
	left: 0;
	bottom: 0;
	width: 100%;
}

.list-event .list-item-info {
	text-align: center;
	padding: 30px 10px 0 10px;
}

.list-event .list-item-info .text2 {
	font-size: 22px;
	font-family: "notokrB";
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
	color: #000000;
}

.list_info_t {
	color: #000000;
}

.list-event .se {
	margin-right: 0px;
}

.list-event .se .text3 {
	padding: 5px 0 0;
	color: #000;
	font-size: 16px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

.list-event .se .text4 {
	margin: 15px 0 0;
	color: #8f8f8f;
	font-size: 16px;
}

.list-event .list-item-info .text3 {
	padding: 5px 0 0;
	color: #000;
	font-size: 16px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

.list-event .list-item-info .text4 {
	margin: 15px 0 0;
	color: #8f8f8f;
	font-size: 16px;
}

.pagination {
	padding: 20px 0 0;
	text-align: center;
}

.pagination .pn {
	border: 1px solid #fff;
	text-decoration: underline;
	color: #3e3d3c;
}

.pagination li {
	display: inline-block;
	border: 1px solid #fff;
	margin: 0 2px;
	overflow: hidden;
	width: 100%;
}

#kind {
	width: 99px;
	height: 40px;
	padding: 5px;
	border: 1px solid #ccc;
	background:
		url('https://lush.co.kr/data/skin/front/howling/img/etc/select-arrow-down-11x7.png')
		no-repeat 95% 50%;
	border-radius: 3px;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	vertical-align: middle;
	color: #333;
	font-size: 16px;
	margin-right: 10px;
}

.ffff {
	display: none;
}

.fh{
	-webkit-filter: grayscale(80%);
	opacity: 0.6;
}

.fhtt .fht {
	color: #8f8f8f;
}

.table1 > table > tbody > tr > td {
    border-bottom: 1px solid #e7e7e7;
    vertical-align: middle;
}

.table1 > table > thead > tr > th {
    padding: 15px 0;
    border-bottom: 1px solid #e7e7e7;
    font-weight: normal;
    color: #8f8f8f;
    font-family: "notokrR",Malgun Gothic,"맑은 고딕",AppleGothic,Dotum,"돋움",sans-serif;
    font-size: 14px;
    line-height: 1.4;
    letter-spacing: -0.5px;
}

.body-board .table1.type2 td {
    padding: 15px 0;
    font-size: 14px;
    color: #333;
}

.ta-c {
    text-align: center;
    
}

.c-gray {
    color: #acacac !important;
    
}

.table1 > table {
    width: 100%;
    border-top: 1px solid #000;
}

.eventtd {
	margin: 0;
    padding: 0;
    border-spacing: 0;
    border: 0;
    border-collapse: collapse;
    vertical-align: middle;
}

.eventclass{
	margin: 0;
    padding: 0;
    border-spacing: 0;
    border: 0;
    border-collapse: collapse;
    vertical-align: middle;
    text-align: center;
}


.contents-inner {
    padding: 90px 0 100px !important;
}

.section-header-event {
    text-align: center;
    margin-top: -65px;
    padding-bottom: 60px;
}

.section-header-event h2 {
    color: #000;
    font-family: 'HelveticaNeue-Heavy', 'notokrB';
    font-size: 42px;
    font-weight: normal;
}

.eventboard-sorting {
    padding: 45px 0 45px;
    text-align: center;
}

.eventboard-sorting li {
    position: relative;
    display: inline-block;
    font-size: 16px;
}

.eventboard-sorting li a {
    display: inline-block;
    padding: 0 40px;
    color: #8f8f8f;
    font-family: "notokrR",Malgun Gothic,"맑은 고딕",AppleGothic,Dotum,"돋움",sans-serif;
    font-size: 16px;
    letter-spacing: -0.5px;
}

.eventboard-sorting li:after {
    position: absolute;
    top: 50%;
    left: 0;
    width: 1px;
    height: 18px;
    margin-top: -9px;
    /* display: inline-block; */
    background: #8f8f8f;
    content:'';
}

.eventboard-sorting li.all:after {
    display: none;
}

.board-paging02 .pagination {
    padding-top: 40px;
}

.pagination-sm{
	padding: 20px 0 0;
    text-align: center;
}

.pagination-sm li {
	display: inline-block;
    border: 1px solid #fff;
    margin: 0 2px;
}

.pagination-sm {
    padding-top: 40px;
}

.pagination-sm li a, .pagination-sm li span {
    height: 21px;
    padding: 4px 10px 1px;
    text-align: center;
    display: block;
}

</style>
</head>
<body>
	<c:import url="../main/mainHeader.jsp"></c:import>

	<div id="container">
		<div id="content">
			<div id="contents-inner cs-page">
				<div class="section" style="padding-top: 25px;">
					<div class="section-body m2">
						<div class=" section-header-event">
							<h2 class="h2">EVENT</h2>
						</div>
						<div class="search-box  ta-c shopsearch-box" id="searchBX">
							<div class="item">
								<div class="st-hs"></div>
							</div>
							<div class="item">
								<div class="st-hs">
									<form action="./FinishList" id="frm">
										<c:if test="${empty pager2.kind or pager2.kind eq 'title'}">
											<select data-board-keyword="${pager2.kind}" id="kind"
												name="kind" class="tune" aria-label="Default select example"
												style="width: 99px;">
												<option value="title" selected="selected">제목</option>
												<option value="contents">내용</option>
											</select>
										</c:if>
										<c:if test="${pager2.kind eq 'contents'}">
											<select data-board-keyword="${pager2.kind}" id="kind"
												name="kind" class="tune" aria-label="Default select example"
												style="width: 99px;">
												<option value="title">제목</option>
												<option value="contents" selected="selected">내용</option>
											</select>
										</c:if>
										<div class="item">
											<div class="txt-field hs" style="width: 320px;">
												<input value="${pager2.search}" type="text" class="text"
													name="search" id="search">
											</div>
										</div>
										<div class="item">
											<button type="submit"
												class="btnicon btn_bk  boardlist-search" style="">
												<em>검색하기</em>
											</button>
										</div>
									</form>
								</div>
							</div>
						</div>

						<div class=" eventboard-sorting">
							<ul>
								<li><button class="ing active">진행중 이벤트(5)</button></li>
								<li><button class="winner">선정자 발표</button></li>
								<li><button class="finished">종료된 이벤트(182)</button></li>
							</ul>
						</div>

						<div class="list-event" align="center" style="width: 100%">
							<ul class="ul-list" id="eventList" class="">
								<!--  list-area    -->
							</ul>
						</div>
						<div class="list-event" align="center" style="width: 100%">
							<ul class="ul-list" id="finishList" class="ffff">
								<!--  list-area    -->
							</ul>
						</div>
						<div class="ffff" id="winnerList">
							<!--  list-area    -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		start();

		function start() {
			let kind = $("#kind").attr('data-board-keyword');
			let search = $("#search").val();

			$.ajax({
				type : "GET",
				url : "./eventList",
				data : {
					search : search,
					kind : kind
				},
				success : function(result) {
					result = result.trim();
					$('#eventList').html(result);
				}

			});

		}
		
		$(".ing").on('click', function(){
			$('#eventList').removeClass("ffff");
			$('#finishList').addClass("ffff");
			$('#winnerList').addClass("ffff");
			$('.finished').removeClass("active");
			$('.winner').removeClass("active");
			$('.ing').addClass("active");
			$('#searchBX').css("display", "")
			

		});
		
		$(".winner").on('click', function(){
			$('#winnerList').removeClass("ffff");
			$('#eventList').addClass("ffff");
			$('#finishList').addClass("ffff");
			$('.ing').removeClass("active");
			$('.finished').removeClass("active");
			$('.winner').addClass("active");
			$('#searchBX').css("display", "none")
			winner();
		});
		
		

		$(".finished").on('click', function(){
			$('#finishList').removeClass("ffff");
			$('#eventList').addClass("ffff");
			$('#winnerList').addClass("ffff");
			$('.ing').removeClass("active");
			$('.winner').removeClass("active");
			$('.finished').addClass("active");
			$('#searchBX').css("display", "");
			$("#frm").attr("action", "./FinishList");
			finish();

		});
		
		
		function winner() {
			let kind = $("#kind").attr('data-board-keyword');
			let search = $("#search").val();

			$.ajax({
				type : "GET",
				url : "./winnerList",
				data : {
					search : search,
					kind : kind
				},
				success : function(result) {
					result = result.trim();
					$('#winnerList').html(result);
				}

			});

		}
		
		function finish() {
			let kind = $("#kind").attr('data-board-keyword');
			let search = $("#search").val();

			$.ajax({
				type : "GET",
				url : "./finishList",
				data : {
					search : search,
					kind : kind
				},
				success : function(result) {
					result = result.trim();
					$('#finishList').html(result);
				}

			});

		}

	</script>

	<c:import url="../main/mainFooter.jsp"></c:import>
</body>
</html>