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
	font-family: 'notokrR';
	src: url('/resources/fonts/NotoSansKR-Regular.otf') format('opentype');
}

@font-face {
	font-family: 'notokrB';
	src: url('/resources/fonts/NotoSansKR-Bold.otf') format('opentype');
}

@font-face {
	font-family: 'HelveticaNeue-Heavy';
	src: url('/resources/fonts/HelveticaNeue-Heavy.otf') format('opentype');
}

#container {
	height: 100%;
	min-height: 100%;
	padding-top: 100px;
	max-width: 1217px;
	display: block;
	max-width: 1180px;
	vertical-align: top;
	table-layout: fixed;
	position: relative;
	margin: 0 auto;
}

.body-mypage #side {
	border-left: none;
	border-right: none;
}

#side {
	background: #FFFFFF;
	width: 200px;
	min-width: 200px;
	max-width: 200px;
	display: table-cell;
	height: 100%;
	vertical-align: top;
	z-index: 2;
}

#side .side_wrap {
	padding: 0;
}

#side .side_wrap {
	width: 200px;
	min-width: 200px;
	max-width: 200px;
	margin: 0 auto;
	display: block;
	position: relative;
}

#side .side_wrap .inner_wrap {
	padding: 0;
	width: 180px;
	min-width: 180px;
	max-width: 180px;
	margin: 0 20px 0 0;
}

.inner_wrap {
	position: relative;
}

#side .lnb {
	display: block;
	width: 100%;
	margin: 0 auto;
	position: relative;
	z-index: 2;
}

.mypage-lnb {
	padding: 90px 0 100px;
}

#side .cs-lnb h2, #side .mypage-lnb h2 {
	font-size: 22px;
	font-family: "notokrB";
	font-weight: normal;
	line-height: 24px;
}

#side h2 {
	display: block;
	position: relative;
	margin: 0 auto 10px;
	color: #222222;
	letter-spacing: 1px;
	text-align: left;
}

#side .mypage-lnb h3 {
	display: block;
	position: relative;
	padding: 0 0 15px 0;
	line-height: 20px;
	font-size: 16px;
	font-weight: normal;
	font-family: "notokrM";
	letter-spacing: 1px;
	text-align: left;
	background: none;
}

.mypage-lnb h3 {
	margin: 32px 0 0;
	padding: 0 0 9px;
	background:
		url("https://www.lush.co.kr/data/skin/front/howling/img/etc/bar-lnb-tit.png")
		no-repeat left bottom;
	color: #222;
	font-size: 14px;
}

ul, li {
	margin: 0;
	padding: 0;
	list-style: none;
}

#side .mypage-lnb ul {
	padding: 0 0 0 8px;
}

.mypage-lnb ul {
	padding: 12px 0 10px;
	line-height: 24px;
}

#side .mypage-lnb li {
	line-height: 28px;
}

#side .mypage-lnb li a {
	color: #8f8f8f;
}

a {
	text-decoration: none;
}

#side .mypage-lnb li a.on {
	color: #000;
	font-family: "notokrM";
}

.mypage-lnb h3 a {
	color: #222;
}

#content {
    width: 100%;
    max-width: 1217px;
    margin: 50px auto;
    padding: 0 0 50px;
    display: table-cell !important;    
}

.contents-inner {
    padding: 90px 0 100px !important;
}

.tit_mypage {
    padding: 0 0 40px;
    font-size: 28px;
    font-weight: normal;
    font-family: "notokrB";
    color: #000;
    line-height: 30px;
}

.tit_desc {
    color: #8f8f8f;
}

.noti_tab {
    overflow: hidden;
    width: 100%;
}
.mt50 {
    margin-top: 50px;
}
ul, li {
    margin: 0;
    padding: 0;
    list-style: none;
}

.noti_tab li.active {
    border: 1px solid #000000;
    background: #000000;
}
.noti_tab li {
    float: left;
    width: 120px;
    text-align: center;
    border: 1px solid #e7e7e7; 
}

.noti_tab li.active a {
    color: #fff;
}
.noti_tab li a {
    display: block;
    line-height: 40px;
    color: #8f8f8f; 
}


</style>
</head>
<body>

	<%-- <h1>Notice List Page</h1>

	<form action="./list" id="frm">
		<table>
			<tr>
				<td>Num</td>
				<td>title</td>
				<td>writer</td>
				<td>regDate</td>
				<td>contents</td>
				<td>hits</td>
			</tr>

			<c:forEach items="${noticeVO}" var="noticeVO">
				<tr>
					<td>${noticeVO.num}</td>
					<td><a href="./select?num=${noticeVO.num}">${noticeVO.title}</a></td>
					<td>${noticeVO.writer}</td>
					<td>${noticeVO.regDate}</td>
					<td>${noticeVO.contents}</td>
					<td>${noticeVO.hits}</td>


				</tr>

			</c:forEach>

			<div>
				<a href="./insert" class="btn btn-danger">Insert</a>
			</div>

		</table>
	</form> --%>
	<c:import url="../main/mainHeader.jsp"></c:import>
	<div id="container" class="">

		<div id="side">
			<style type="text/css">
#content {
	display: table-cell !important;
	width: 100%;
	margin: 0 auto;
}

#footer {
	margin-top: 0;
}
</style>

			<div class="side_wrap -moslow">

				<div class="inner_wrap -moslow">

					<div class="lnb mypage-lnb">
						<h2>마이페이지</h2>
						<h3>쇼핑정보</h3>
						<ul>
							<li><a href="../mypage/order_list.php">주문목록/배송조회</a></li>
							<li><a href="../mypage/cancel_list.php">취소/반품/교환 내역</a></li>
							<li><a href="../mypage/refund_list.php">환불/입금 내역</a></li>
							<li><a href="../mypage/wish_list.php">찜리스트</a></li>
						</ul>

						<h3 class="">내 덕찌</h3>
						<ul>
							<li><a href="/mypage/ver1_my_ducczi2021.php">2021</a></li>
							<li><a href="/mypage/ver1_my_ducczi2020.php">2020</a></li>
							<li><a href="/mypage/ver1_my_ducczi2019.php">2019</a></li>
							<!-- li><a href="/mypage/ducczi_list.php">2018</a></li -->
						</ul>

						<h3>스파</h3>

						<ul>
							<li><a href="/mypage/spa_order_list.php">스파 주문 내역</a></li>
							<li><a href="/mypage/spa_voucher_list.php">바우처 등록/예약</a></li>
							<li><a href="/mypage/spa_booking_list.php">스파 예약현황</a></li>
							<li><a href="/main/html.php?htmid=mypage/spa_useinfo.html">스파
									이용안내</a></li>
						</ul>

						<h3>혜택관리</h3>
						<ul>
							<li><a href="../mypage/coupon.php">선물</a></li>
						</ul>
						<h3>고객센터</h3>
						<ul>

							<li><a href="../service/notice.php" class="on">공지사항</a></li>
							<li><a href="../mypage/mypage_qa.php">1:1 문의</a></li>
							<li><a href="../service/faq.php">FAQ</a></li>
						</ul>
						<h3>회원정보</h3>
						<ul>
							<li><a href="../mypage/my_page_password.php">회원정보 변경</a></li>
							<li><a href="../mypage/hack_out.php">회원 탈퇴</a></li>
							<li><a href="../mypage/shipping.php">배송지 관리</a></li>
						</ul>
						<h3 class="my-review">
							<a href="../mypage/mypage_plus_review_article.php">나의 플러스 리뷰</a>
						</h3>
						<!--<h3>멤버십</h3>-->
						
					</div>
					<script type="text/javascript">
						// 메뉴 선택
						$(
								'.mypage-lnb li > a[href*="'
										+ document.location.pathname + '"]')
								.addClass('on');
					</script>



				</div>

			</div>
		</div>

		<!-- 본문 시작 : start -->
		<div id="content">

			<div class="contents-inner cs-page">
				<h2 class="tit_mypage">공지사항</h2>
				<p class="tit_desc">LUSH의 새로운 소식입니다.</p>
				<ul class="noti_tab mt50">
					<li class="active"><a href="/service/notice.php">공지사항</a></li>
					<li><a href="/main/html.php?htmid=service/recruit.html">직원채용</a></li>
				</ul>
				<iframe src="../board/list.php?bdId=notice&amp;noheader=y"
					name="ifrmBoard" width="100%" height="1060" marginwidth="0"
					marginheight="0" frameborder="no" scrolling="no"
					onload="resize_frame(this)"></iframe>
			</div>
		</div>
		<!-- 본문 끝 : end -->

	</div>
<c:import url="../main/mainFooter.jsp"></c:import>
</body>
</html>