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
    margin-top: 0;
}

#container #content {
    display: block;
    width: 100%;
    margin: 50px auto;
    padding: 0 0 50px;
}

.cs-page {
    padding-top: 0 !important;
}

.contents-inner {
    padding: 90px 0 100px !important;
}

.section-view-header {
    padding: 90px 0;
    text-align: center;
    font-family: "HelveticaNeue-Heavy","notokrB";
}

.section-view-header h2 {
    color: #000;
    font-size: 42px;
}

.board-view-head .board-view-title .date {
    padding-bottom: 10px;
    color: #8f8f8f;
    font-size: 16px;
}

.board-view-head .board-view-title h2 {
    font-size: 32px;
    font-weight: normal;
    color: #000;
    font-family: "notokrB";
}

.board-view-head .board-view-title .desc {
    color: #000;
    font-size: 16px;
}

.board-view-head .board-view-title {
    overflow: hidden;
    border-bottom: 1px solid #000;
    border-top: 0;
    padding: 0 70px 25px 0;
    position: relative;
}

.section-body-this {
    width: 980px !important;
    margin-left: auto;
    margin-right: auto;
}



.board-view-body {
    border-bottom: 1px solid #ddd;
}

.board-view-body .textfield {
    padding: 60px 0;
    line-height: 1.8;
}

.textfield {
    position: relative;
}

#evt-wrap {
    width: 828px;
    margin: 0 auto;
}

#evt-wrap .evt-section {
    position: relative;
}

.evt-noti {
    margin-top: 40px;
}

.evt-noti .noti-tit {
    margin-bottom: 5px;
    font-size: 14px;
    font-weight: normal;
    color: #444;
}

.mt20 {
    margin-top: 20px;
}

.ta-r {
    text-align: right;
}

.skinbtn.default.boardview-list {
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

.skinbtn {
    display: inline-block;
    *display: inline;
    *zoom: 1;
    /* width: 128px; */
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

.board-view-comment {
    margin-top: 58px;
    margin-left: -100px;
    margin-right: -100px;
}

.comment-wrap .head {
    overflow: hidden;
    padding: 0 0 15px 0;
    border-bottom: 1px solid #dbdbdb; 
}

.comment-wrap .head .comment-count {
    float: left;
}

.board-view-comment .comment-wrap .comment-write {
    padding: 50px 0 20px;
    position: relative;
    border-bottom: 1px solid #dbdbdb; 
}

.comment-wrap .comment-write {
    overflow: hidden;
    padding: 18px 0;
    border-top: 1px solid #000;
}

.comment-wrap .head .comment-count span {
    float: left;
    padding: 0 20px 0 0px;
    font-size: 16px;
    background: url('https://lush.co.kr/data/skin/front/howling/img/etc/bar-1x11-db.png') no-repeat left 5px;
}

.board-view-comment .comment-wrap > ul {
    border-bottom: 1px solid #e7e7e7;
}

.cs-page .other_list {
    margin-top: 40px;
}

.cs-page .other_list .other_list_tit {
    padding-bottom: 25px;
    text-align: center;
    font-size: 32px;
    color: #000;
    font-family: "notokrB";
}

.list-event > ul {
    overflow: hidden;
    width: 100%;
}

.list-event .list-item {
    float: left;
    width: 372px;
    margin-right: 32px;
    padding-bottom: 75px;
}

.list-event .list-item .thumb{
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

.list_info_t{
	color: #000000;
}

.list-event .se{
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

</style>
</head>
<body>
	<c:import url="../main/mainHeader.jsp"></c:import>
	<div id="container">
		<div id="content">
			<div class="contents-inner cs-page">
				<div class="section" style="padding-top:25px;">
					<div class="section-view-header">
				        <h2 class="h2">EVENT</h2>
				    </div>
					<div class="section-body section-body-this">
						<div class="board-view">
							<div class="board-view-head">
								<div class="board-view-title">
									<div class="date">${eventVO.regDate}</div>
									<h2>${eventVO.title}</h2>
									<div class="desc">${eventVO.text3}</div>
								</div>
							</div>
							<div class="board-view-body">
								<div class="textfield">
									<div id="evt-wrap">
										<div class="evt-section">
										<img src="${eventVO.evtSection1}" alt="">
										</div>
										<div class="evt-section">
										<img src="${eventVO.evtSection2}" alt="">
										</div>
										<div class="evt-noti">
										<h4 class="noti-tit">${eventVO.contents}</h4>
										</div>
									</div>
								</div>
							</div>
							<div class="ta-r mt20 board-ctrl-btn"><a class="skinbtn default boardview-list" href="./EventList"><em>목록</em></a></div>
							<div id="commentArea" class="board-view-comment">
                <div class="comment-wrap js-comment-area" data-bdid="event" data-sno="331">
                    <div class="head">
                        <div class="comment-count">
                            <span>댓글<strong>(0)</strong> </span>
                        </div>
                    </div>


                    <div class="comment-write js-form-write" style="text-align:center;padding:40px;">
						<a href="/member/login.php" style="color: #00a44c; text-decoration: underline;">로그인</a>을 하셔야 댓글을 등록하실 수 있습니다.
                    </div>
                    <ul>
                    </ul>


                </div>
            </div>
						</div>
					</div>
				</div>
				<div class="other_list">
					<div class="other_list_tit">진행중인 이벤트</div>
					<div class="section" style="padding-top:25px;">
					<div class="section-body m2">
									
				        <div class="list-event m2" align="center" style="width:100%">
				        	<ul class="ul-list">
				        		 
				        		<c:forEach items="${eventList}" var="eventVO" varStatus="i">
				         	<c:choose>
				         			<c:when test="${i.count eq 3}">
				         		  <li class="list-item se">
						        
						             <span class="thumb"><img src="${eventVO.photo}" class="js-image-load"></span>	
						            	<div class="list-item-info">
						            		<p class="text2"><a class="list_info_t" href="./selectOne?num=${eventVO.num}">${eventVO.title}</a></p>
						            		<p class="text3">${eventVO.text3}</p>
						            		<p class="text4">${eventVO.text4}</p>
						             </div>
						            </li>
				         	</c:when>
				         	<c:otherwise>
				         		<li class="list-item">
						        
						             <span class="thumb"><img src="${eventVO.photo}" class="js-image-load"></span>	
						            	<div class="list-item-info">
						            		<p class="text2"><a class="list_info_t" href="./selectOne?num=${eventVO.num}">${eventVO.title}</a></p>
						            		<p class="text3">${eventVO.text3}</p>
						            		<p class="text4">${eventVO.text4}</p>
						             </div>
						            </li>
				         	</c:otherwise>
				         	
				         	</c:choose>
				         	
						       
				    			 </c:forEach>
				    			 
				     	   </ul>
				        </div>
				        
					</div>
				</div>
				</div>
				
			</div>
		</div>
	</div>	
	<c:import url="../main/mainFooter.jsp"></c:import>
   
</body>
</html>