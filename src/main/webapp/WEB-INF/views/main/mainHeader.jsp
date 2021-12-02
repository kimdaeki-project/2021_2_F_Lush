<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
    /*color: #717171;*/
    text-decoration: none;
    /* outline: none; */
}

.inner_wrap {
    position: relative;
    width: 1180px;
    margin: 0 auto;
}

#header {
	display : block;
	height: 100px;
	width: 100%;
	background: #000;
	z-index: 3;
	position: fixed;
}

.top_gnbmenu > li {
    display: inline-block;
    text-align: center;
}

.top_gnbmenu > li > a {
    display: block;
    width: 98px;
    line-height: 100px;
    font-size: 16px;
    word-spacing: -1px;
    letter-spacing: 2px;
    color: #fff;
    font-family: "notokrR",Malgun Gothic,"맑은 고딕",AppleGothic,Dotum,"돋움",sans-serif;
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

#header .gnbwrap .gnb .nav li:first-child {
    background: none;
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

</style>
</head>


<body>
<div class="header" id="header">
<div class="gnbwrap">
      <div class="fixed2">
        <div class="inner_wrap">
          <div id="logo" class=" ">
            <!--로고 test-->
            <h1 class=" "><a href="${pageContext.request.contextPath}"><img src="https://lush.co.kr/data/skin/front/howling/img/banner/8b07b23fdab3e3e461a6acc42bc930c3_43812.png" alt="lush" title="lush"></a></h1>
            <!--//로고-->
          </div>
          
          <div class="gnb">
            <ul class="nav">
              <li><a href="#" class="openMask" viewpop=".pop_w01"><img src="https://lush.co.kr/data/skin/front/howling/_msc/images/header/icon_top_search.png"></a></li>
              <li><a href="../order/cart.php"><img src="https://lush.co.kr/data/skin/front/howling/_msc/images/header/icon_top_cart.png"> <span>0</span></a></li>
              <li class="mypage">
                <a href="#">
                    <img src="https://lush.co.kr/data/skin/front/howling/_msc/images/header/icon_top_mypage.png" alt="">
                  </a>
                 <!-- ajax 수정  <div class="pop_mypage">
                    <ul>
                      <li><a href="./member/memberlogin">로그인</a></li>
                      <li>
                        <a href="./member/memberJoin">회원가입</a>
                      </li>
                      <li><a href="#">스카우트</a></li>
                      <li><a href="./member/myPage">고객센터</a></li>
                    </ul>
                  </div> -->
              </li>
            </ul>
           

         

        </div>
      </div>
    </div>
	
		<div class="gnb-inner"
			style="width: 842px; margin: auto; padding-left: 337px;">
			<ul class="top_gnbmenu">
				<li class="menu01 menu_product" style="margin-right: 22px;"><a
					href="/product/productList">제품</a></li>
				<li class="menu02 menu_brand"><a href="/campaign/insert"
					style="margin-right: 40px;">러쉬 소개</a></li>
				<li class="menu03"><a
					href="/shopInfo/list"
					style="margin-right: 20px;">매장 안내</a></li>
				<li class="menu04"><a href="/spa/list"
					style="margin-right: 13px;">스파</a></li>
				<li class="menu05"><a
					href="/event/EventList">이벤트</a></li>
			</ul>
		</div>
	</div>
	</div>

</body>
</html>