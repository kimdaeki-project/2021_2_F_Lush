<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style type="text/css">

body {
    color: #333;
    font-family: "notokrR",Malgun Gothic,"맑은 고딕",AppleGothic,Dotum,"돋움",sans-serif;
    font-size: 14px;
    line-height: 1.4;
    letter-spacing: -0.5px;
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

@font-face {
	font-family: 'HelveticaNeue-Heavy';
	src: url('/resources/fonts/HelveticaNeue-Heavy.otf') format('opentype');
}


#wrap > #side, #wrap > #container {
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
    margin : 0 auto;
    vertical-align: top;
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

.eventboard-sorting li button{
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


colgroup {
    display: table-column-group;
}

thead {
    display: table-header-group;
    vertical-align: middle;
    border-color: inherit;
}

tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
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


.board-paging02 .pagination {
    padding-top: 40px;
}

.pagination {
    padding: 20px 0 0;
    text-align: center;
}

.pagination li {
    display: inline-block;
    margin: 0 2px;
}

.pagination li a, .pagination li span {
    height: 21px;
    padding: 4px 10px 1px;
    text-align: center;
    display: block;
    font-family: "notokrR",Malgun Gothic,"맑은 고딕",AppleGothic,Dotum,"돋움",sans-serif;
    font-size: 14px;
    line-height: 1.4;
    letter-spacing: -0.5px;
    color: #8f8f8f;
}

button {
    cursor: pointer;
    background: none;
    border: none;
    outline: none;
    font-family: "notokrR";
    padding: 0px 0px;
}


</style>
</head>
<body>
<c:import url="../main/mainHeader.jsp"></c:import>
	<div id="container">
		<div id="content">
			<div class="contents-inner cs-page">
				<div class="section" style="padding-top: 25px;">
					<div class=" section-header-event">
						<h2 class="h2">EVENT</h2>
					</div>
					<div class=" eventboard-sorting">
						<ul>
							<li><button class="ing active">진행중 이벤트(5)</button></li>
							<li><button class="winner">선정자 발표</button></li>
							<li><button class="finished">종료된 이벤트(182)</button></li>
						</ul>
					</div>
					<div id="changeArea">
						<div id="contents-inner cs-page">
							<div class="section">
								<div class="table1 type2" align="center">
									<table class="eventclass" style="width:100%">
								<colgroup>
				                    <col style="width:150px">
				                    <col>
				                    <!-- <col style="width:81px"/>
				                    <col style="width:86px"/> -->
				                    <col style="width:160px">
				                </colgroup>
								<thead>
									<tr>
										<th class="eventtd">번호</th>
										<th class="eventtd">제목</th>
										<th class="eventtd">날짜</th>
									</tr>
								</thead>
									<tbody>
									
										<c:forEach items="${winnerList}" var="eventVO" varStatus="i">
										<tr style="height:50px">
											<td class="ta-c">${fn:length(winnerList)-i.index}</td>
											<td class="tit"><a href="./selectOne?num=${eventVO.num}">${eventVO.title}</a></td>
											<td class="c-gray ta-c">${eventVO.regDate}</td>
										</tr>
										</c:forEach>
									
									
									</tbody>
									
								</table>
								</div>
								
								<div class="board-paging02">
								<ul class="pagination pagination-sm">
								<!-------------------------- pager ------------------------------>
				
				
								
						
								<c:forEach begin="${pager2.startNum}" end="${pager2.lastNum}" var="i">
									<li class="active"><a class="page-link"
								href="./WinnerList?pn=${i}"><span class="p" data-list-pn="${i}">${i}</span></a></li>
								</c:forEach>
						
						
								<c:if test="${!pager2.lastCheck}">
									<button class="p" data-list-pn="${pager2.lastNum+1}" type="button">NEXT</button>
								</c:if>
								<br>
								<!-------------------------- pager ------------------------------>
								</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	
	<c:import url="../main/mainFooter.jsp"></c:import>
	
	<script type="text/javascript">
	
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
				$('#changeArea').html(result);
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
		
		start();

	});
	
	</script>
</body>
</html>