<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
   blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
   em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
   b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
   table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
   details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
   output, ruby, section, summary, time, mark, audio, video {
   margin: 0;
   padding: 0;
   border: 0;
   font-size: 100%;
   font: inherit;
   vertical-align: baseline;
}

a {
   color: #717171;
   text-decoration: none;
   /* outline: none; */
}

.inner_wrap {
   position: relative;
   width: 1180px;
   margin: 0 auto;
}

#header {
   display: block;
   height: 100px;
   width: 100%;
   background: #000;
   z-index: 10;
   position: fixed;
}

.top_gnbmenu>li {
   display: inline-block;
   text-align: center;
}

#logo h1 {
   display: table-cell;
   margin: 0 auto;
   text-align: left;
   vertical-align: middle;
}

.gnbwrap #logo {
   position: absolute;
   top: 0;
   margin: 0;
}

#header .gnbwrap .gnb .nav {
   display: block;
   float: right;
}

#header .gnbwrap .gnb {
   position: absolute;
   top: 39px;
   right: 0;
}

#header .gnbwrap li a {
   display: block;
   position: relative;
   padding: 0 5px;
}

#header .gnbwrap li img {
   display: inline-block;
}

#header .gnbwrap .gnb .nav li {
   display: inline-block;
   position: relative;
   float: left;
   font-size: 11px;
   padding-left: 30px;
}

#header .gnbwrap .gnb .nav li span {
   position: absolute;
   top: 13px;
   right: 0;
   display: inline-block;
   width: 16px;
   height: 16px;
   line-height: 15px;
   text-align: center;
   vertical-align: top;
   background-color: #fff;
   color: #000;
   border-radius: 50px;
   font-size: 10px;
}

#header .gnbwrap .gnb .nav li.mypage {
   padding-bottom: 20px;
}

#header .gnbwrap .gnb .nav li.mypage li {
   float: none;
   display: block;
   padding: 0;
   text-align: center;
   border-bottom: 1px solid #eaeaea;
   line-height: 50px;
}

#header .gnbwrap .gnb .nav li.mypage > a {
    display: block;
}

#header .gnbwrap > li > a {    
    position: relative;
    padding: 0 5px;
    font-family: "notokrR",Malgun Gothic,"맑은 고딕",AppleGothic,Dotum,"돋움",sans-serif;
    font-size: 16px;
}

.lim > a {
	color: #1e1e1e;
}

#header .gnbwrap .gnb .nav li.mypage div {
    position: absolute;
    top: 38px;
    right: 0;
    width: 220px;
    padding: 0;
    background: #FFFFFF;
    /* border: 1px solid #f5f5f5; */
    border-bottom: 0;
    z-index: 1;
}  

ul, li {
    margin: 0;
    padding: 0;
    list-style: none;
}

.menu {
   display: none;
   width: 100px;
}

.menu li {
   width: 220px;
}

ul:hover .menu{   
   display: block;
   position: absolute;
   width: 220px;
   background: white;
   text-align: center;
}

.lim:hover {
   background: black;
}

.lim:hover > a {
	color : #fff;
}

.top_gnbmenu > li > a{
   display: block;
   width: 98px;
   line-height: 100px;
   font-size: 16px;
   word-spacing: -1px;
   letter-spacing: 2px;
   color: #fff;
   font-family: "notokrR", Malgun Gothic, "맑은 고딕", AppleGothic, Dotum, "돋움",
      sans-serif;
}

.menu_brand:hover .all_brand > ul {
	display: block;
	margin : 0 auto;
	position: absolute;
	width: 100%; 
    padding: 50px 0 50px;
    background: #333;
    float: left;
    z-index: 100;
}

.menu_brand:hover .all_brand{
	position : absolute;
    left :0;
    width : 100%;
    background: #333; 
}

.all_brand > ul{
	display: none;
	width : 100%;
	
}

.all_brand > ul > li{
	display:inline-block;
	vertical-align: top;
	padding:0;
}

.all_brand > ul > li:nth-child(1) {
	width: 127px;
	padding-left: 40px;
	box-sizing: content-box;
}

.all_brand > ul > li:nth-child(2) {
	width: 142px;
}
.all_brand > ul > li:nth-child(3) {
	width: 129px;
}
.all_brand > ul > li:nth-child(4) {
	width: 120px;
}
.all_brand > ul > li:nth-child(5) {
	width: 142px;
}
.all_brand > ul > li:nth-child(6) {
	width: 100px;
}
.biggg{
	color:#fff;
	font-size:	18px; 
	font-family : "notokrB";
}

.all_brand > ul > li > ul > li{
	padding-top:20px;
	font-size:14px;
	letter-spacing:-1px;
}
.all_brand > ul > li > ul > li > a{
	color:#9b9b9b;
}



</style>
</head>


<body>
   <div class="header" id="header">
      <div class="gnbwrap">
         <div class="fixed2">
            <div class="inner_wrap">
               <div id="logo" class=" ">
                  <!--로고 test-->
                  <h1 class=" ">
                     <a href="${pageContext.request.contextPath}/"><img
                        src="https://lush.co.kr/data/skin/front/howling/img/banner/8b07b23fdab3e3e461a6acc42bc930c3_43812.png"
                        alt="lush" title="lush"></a>
                  </h1>
                  <!--//로고-->
               </div>

               <div class="gnb">
                  <ul class="nav">
                     <li><a href="#" class="openMask" viewpop=".pop_w01"><img
                           src="https://lush.co.kr/data/skin/front/howling/_msc/images/header/icon_top_search.png"></a></li>
                     <li><a href="/cart/cartPage"><img
                           src="https://lush.co.kr/data/skin/front/howling/_msc/images/header/icon_top_cart.png">
                           <span>0</span></a></li>
                     <li class="mypage"><a href="#"> <img
                           src="https://lush.co.kr/data/skin/front/howling/_msc/images/header/icon_top_mypage.png"
                           alt="">
                     </a>
                        <div class="pop_mypage">
                           <ul class="menu">
                              <c:choose>
                                 <c:when test="${not empty member}">
                                    <li class="lim"><a href="/member/memberLogout">로그아웃</a></li>
                                    <li class="lim"><a href="/member/myPage">마이페이지</a></li>
                                    <li class="lim"><a href="#">스카우트</a></li>
                                    <li class="lim"><a href="/member/myPage">고객센터</a></li>
                                 </c:when>
                                 <c:otherwise>
                                    <li class="lim"><a href="/member/memberLogin">로그인</a></li>
                                    <li class="lim"><a href="/member/joinCheck">회원가입</a></li>
                                    <li class="lim"><a href="#">스카우트</a></li>
                                    <li class="lim"><a href="/member/myPage">고객센터</a></li>
                                 </c:otherwise>
                              </c:choose>
                           </ul>
                        </div></li>
                  </ul>




               </div>
            </div>
         </div>

         <div class="gnb-inner"
            style="width: 842px; margin: auto; padding-left: 337px;">
            <ul class="top_gnbmenu">
               <li class="menu01 menu_product" style="margin-right: 22px;"><a
                  href="/product/list" >제품</a></li>
               <li class="menu02 menu_brand"><a href="/introduce/LushIntroduce"
                  style="margin-right: 40px;">러쉬 소개</a>
                  
                 	<div class="all_brand" style="">
                 		<ul>
              <li>
                <a href="/introduce/LushIntroduce" class="biggg">러쉬 소개</a>
                <ul>
                  <li><a href="/introduce/LushHistory">러쉬 역사</a></li>
                  <li><a href="/introduce/LushIdeology">이념과 가치</a></li>
                </ul>
              </li>
              
              <li>
                <a href="/introduce/LushCommunity" class="biggg">커뮤니티</a>
                <ul>
                  
                  <li><a href="/introduce/LushScout">덕찌</a></li>
                </ul>
              </li>
              <li>
                <a href="/campaign/insert" class="biggg">서명 캠페인</a>
              </li>
              <!-- 기업선물 추가 -->
              <li><a href="/introduce/LushCorporategift" class="biggg">기업 선물</a></li>
              <!-- //기업선물 추가 -->
            </ul>
                 	</div>
                  
                  </li>
               <li class="menu03"><a href="/shopInfo/list" style="margin-right: 20px; " >매장
                     안내</a></li>
               <li class="menu04"><a href="/spa/list"
                  style="margin-right: 13px;">스파</a></li>
               <li class="menu05"><a href="/event/EventList" class="menu22">이벤트</a></li>
            </ul>
         </div>
      </div>
   </div>

</body>
</html>