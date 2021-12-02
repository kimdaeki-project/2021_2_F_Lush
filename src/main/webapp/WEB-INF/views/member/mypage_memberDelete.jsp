<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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

body {
	color: #333;
	font-family: "notokrR", Malgun Gothic, "맑은 고딕", AppleGothic, Dotum, "돋움",
		sans-serif;
	font-size: 14px;
	line-height: 1.4;
	letter-spacing: -0.5px;
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

div {
	display: block;
}

#content {
	width: 100%;
	max-width: 1217px;
	margin: 50px auto;
	padding: 0 0 50px;
	vertical-align: top;
	display: table-cell !important;
}

.contents-inner {
	padding: 90px 0 100px !important;
}

.section-header.type1 {
	margin: 0 0 30px 0;
	padding: 0 0 13px 0;
	border-bottom: 1px solid #0b0b0b;
}

.section-header {
	position: relative;
}

.mypage .h2 {
	display: inline-block;
	vertical-align: middle;
	color: #111;
	font-size: 21px;
	font-weight: bold;
}

.repass-text {
	font-size: 16px;
	color: #000;
}

.repass-text {
	font-size: 16px;
	color: #000;
}

.m5 {
	margin-top: 50px !important;
}

.ta-c {
	text-align: center;
}

b {
	font-weight: bolder;
	font-size: 16px;
}

.repass {
	border: 1px solid #e4e4e4;
	padding: 35px 0;
	text-align: center;
}

.repass .input-block {
	display: inline-block;
	margin: 0 40px;
}

.repass .input-block .label {
	color: #3a3a3a;
	margin: 0 10px 0 0;
	vertical-align: middle;
	display: inline-block;
}

b {
	font-weight: bold;
}

.repass .input-block .value {
	vertical-align: middle;
	display: inline-block;
}

.repass .input-block .value.input-pass input {
	border: 1px solid #ccc;
	height: 34px;
	width: 180px;
	padding: 0 10px;
	box-sizing: border-box;
	line-height: 34px;
}

input, select {
	outline: none;
	font-family: "notokrR", Malgun Gothic, '맑은 고딕', Helvetica, AppleGothic,
		dotum, '돋움', sans-serif;
	color: #717171;
}

.c-red {
	color: #3e3d3c !important;
}

.section-body .btm-btn {
	margin: 50px 0 0;
	text-align: center;
}

.section_my_page_password .btm-btn .btnicon {
	margin: 0 5px;
}

.w280 {
	width: 280px;
}

.btn_wt {
	border: 1px solid #000;
	background: #fff;
	color: #000;
}

.btn_l {
	height: 63px;
	line-height: 60px;
	font-size: 16px;
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
	cursor: pointer;
	outline: none;
}

#container #content {
	width: 100%;
	max-width: 1217px;
	margin: 50px auto;
	padding: 0 0 50px;
	vertical-align: top;
	display: table-cell !important;
}

.contents-inner {
	padding: 90px 0 100px !important;
}

.section-header.type1 {
	margin: 0 0 30px 0;
	padding: 0 0 13px 0;
	border-bottom: 1px solid #0b0b0b;
}

.section-header {
	position: relative;
}

.mypage .h2 {
	display: inline-block;
	vertical-align: middle;
	color: #111;
}

.join {
	width: 1080px;
	margin: 0 auto;
}

.mypage-info-change .join-form {
	width: auto;
}

input, select {
	outline: none;
	font-family: "notokrR", Malgun Gothic, '맑은 고딕', Helvetica, AppleGothic,
		dotum, '돋움', sans-serif;
	color: #717171;
}

fieldset, abbr, acronym {
	border: 0;
}

caption, legend {
	width: 0;
	height: 0;
	visibility: hidden;
	font-size: 0;
	line-height: 0;
	text-indent: -9999px;
}

.mypage-info-change .join-form legend+.tit {
	margin-top: 0;
	padding-top: 0;
}

.join-form .tit {
	overflow: hidden;
	padding: 0 0 15px;
}

.mypage-info-change .join-form .tit h3 {
	font-size: 16px;
	font-weight: normal;
}

.join-form .tit h3 {
	float: left;
	color: #000;
	/* font-size: 28px;
    font-weight: normal; */
	font-family: "notokrB";
}

.mypage-info-change .join-form .tit p {
	margin: 5px 0 0;
}

.join-form .tit p {
	float: right;
	margin: 17px 0 0;
	padding: 0 0 0 12px;
	background: #fff
		url("https://www.lush.co.kr/data/skin/front/howling/img/etc/blet_squrered.png")
		no-repeat left 8px;
	color: #333;
}

.table1.view_table {
	padding: 20px 0;
	border-top: 1px solid #000;
	border-bottom: 1px solid #e7e7e7;
}

.table1.view_table>table {
	border-top: 0;
	letter-spacing: -0.5px;
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

.join .join-form .table1.view_table>table>tbody>tr>th {
	padding: 10px 0 10px 23px;
	line-height: 40px;
	color: #333;
	font-size: 14px;
	font-weight: normal;
}

.join-form .table1.view_table table tbody th.required {
	background: #fff
		url("https://www.lush.co.kr/data/skin/front/howling/img/etc/blet_squrered.png")
		no-repeat 8px 27px;
}

.table1.view_table>table>tbody>tr>th {
	border: 0;
}

.ta-l {
	text-align: left;
}

.join .join-form .table1.view_table>table>tbody>tr>td {
	padding: 10px 0;
}

.table1.view_table>table>tbody>tr>td {
	border: 0;
}

.join .join-form .table1 table tbody td .txt-field {
	position: relative;
	width: 380px;
}

.txt-field {
	height: 38px;
	padding: 0 10px;
	background: #fff;
	border: 1px solid #ccc;
	vertical-align: middle;
}

.txt-field .text {
	width: 100%;
	height: 36px;
	padding: 0;
	border: 1px solid #fff;
	color: #333;
	line-height: 36px;
}

input.text, input.password, input.edit {
	outline: none;
	font-size: 14px;
}

.join-form .table1 table tbody td .email {
	clear: both;
	height: 40px;
	display: inline-block;
}

.join-form .table1 table tbody td div.form-element {
	display: inline-block;
	vertical-align: top;
	margin: 10px 0 0 20px;
}

.form-element {
	position: relative;
}

.join-form .table1 table tbody td .post {
	overflow: hidden;
}

.join .join-form .table1.view_table table tbody td .txt-field.address {
	display: inline-block;
	width: 418px;
}

.join .join-form .table1 table tbody td .txt-field {
	position: relative;
}

.join-form .table1 table tbody td .address {
	margin: 8px 0;
}

.join-form .table1 table tbody td .post .post-search {
	float: left;
	margin: 0 0 0 10px;
}

.btn_s.post-search {
	width: 120px;
	font-family: "notokrR";
	vertical-align: middle;
	margin-left: 7px;
}

.btn_wt {
	border: 1px solid #000;
	background: #fff;
	color: #000;
}

.btn_s {
	height: 40px;
	line-height: 36px;
}

.btnicon {
	display: inline-block;
	text-align: center;
	box-sizing: border-box;
}

button {
	cursor: pointer;
	outline: none;
}

.join-form .table1 table tbody td .post .txt-field {
	float: left;
}

.join .join-form .table1>table>tbody>tr>th {
	vertical-align: top;
}

.join-form .btn {
	padding: 40px 0 0;
}

.join .btn {
	text-align: center;
}

.w130 {
	width: 130px;
}

.btn_wt {
	border: 1px solid #000;
	background: #fff;
	color: #000;
}

.btn_sm {
	height: 42px;
	line-height: 38px;
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

button em {
	font-family: "notokrR";
}

address, caption, cite, code, dfn, em, var {
	font-style: normal;
}

element.style {
	
}

.w130 {
	width: 130px;
}

.btn_bk {
	border: 1px solid #000;
	background: #000;
	color: #fff;
}

button em {
	font-family: "notokrR";
}
</style>
</head>
<body>
	<c:import url="../main/mainHeader.jsp"></c:import>

	<div id="container" class="">

		<div id="side">


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

							<li><a href="../service/notice.php">공지사항</a></li>
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


				</div>

			</div>
		</div>

		</div>
</body>
</html>