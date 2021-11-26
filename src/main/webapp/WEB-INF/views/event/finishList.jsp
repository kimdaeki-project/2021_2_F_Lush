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

.eventboard-sorting li a {
    display: inline-block;
    padding: 0 40px;
    color: #8f8f8f;
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

.list-event > ul {
    overflow: hidden;
    width: 100%;
}

.list-event .list-item {
    float: left;
    width: 372px;
    margin-right : 32px;
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

img {
        filter: brightness(50%);
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
	color: #8f8f8f;
}

.list-event .se{
	margin-right: 0px;
	
}

.list-event .se .text3 {
	padding: 5px 0 0;
    color: #8f8f8f;
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
    color: #8f8f8f;
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
			<div id="contents-inner cs-page">
				<div class="section" style="padding-top:25px;">
					<div class="section-body m2">
						<div class=" section-header-event">
							<h2 class="h2">EVENT</h2>
						</div>
						<form name="frmList" id="frmList" action="list.php" method="get">
							<input type="hidden" name="bdId" value="event">
							<input type="hidden" name="memNo" value="">
							<input type="hidden" name="noheader" value="">
				
							<div class="search-box m3 ta-c">
								<div class="item">
									<div class="st-hs">
									</div>
								</div>
								<div class="item">
									<div class="st-hs">
										<select name="searchField" class="tune" style="width:99px;">
											<option value="subject">제목</option>
											<option value="contents">내용</option>
										</select>
									</div>
								</div>
								<div class="item">
									<div class="txt-field hs" style="width:320px;">
										<input type="text" class="text" name="searchWord" value="">
									</div>
								</div>
								<div class="item">
									<button class="btnicon btn_bk boardlist-search" style="submit"><em>검색</em></button>
								</div>
							</div>
						</form>
						
						<div class=" eventboard-sorting">
				          <ul>
				            <li class="all"><a href="list.php?bdId=event&amp;period=current" class="active">진행중 이벤트(5)</a></li>
				            <li><a href="/board/eventresult.php">선정자 발표</a></li>
				            <li><a href="list.php?bdId=event&amp;period=end">종료된 이벤트(182)</a></li>
				          </ul>
				        </div>
				        <div class="list-event m2" align="center" style="width:100%">
				        	<ul class="ul-list">
				        		 
				        		<c:forEach items="${finishList}" var="eventVO" varStatus="i">
				         	<c:choose>
				         			<c:when test="${i.count%3 eq 0}">
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
   

   <a href="./Eventinsert">Insert</a>
   <c:import url="../main/mainFooter.jsp"></c:import>

</body>
</html>