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

html {
	display: block;
}

head {
	display: none;
}

title {
	display: none;
}

.cs-page {
	/* padding: 15px 5px 30px !important;
}

.cs-page .section-header {
    overflow: hidden;
    margin: 0;
    padding: 0 0 40px;
}

.section-header {
 /*    margin: 0 0 10px 0; */
	position: relative;
}

.cs-page .section-header h2 {
	float: left;
	font-size: 28px;
	color: #000;
	font-family: "notokrB";
}

.cs-page .section-header .option.type1 {
	margin: 0;
}

.cs-page .section-header .option {
	float: right;
	position: static;
	/*    margin: 5px 0 0; */
}

.section-header .option.type1 {
	/* position: absolute; */
	top: auto;
	bottom: 0;
	right: 0;
}

.table1>table {
	border-top: 1px solid #000;
	width: 100%;
}

table, th, td {
	margin: 0;
	padding: 0;
	border-spacing: 0;
	border: 0;
	border-collapse: collapse;
	vertical-align: middle;
}

thead {
	display: table-header-group;
	vertical-align: middle;
	border-color: inherit;
}

tr {
	display: table-row;
	vertical-align: inherit;
	border-color: inherit;
}

.body-board .table1>table>thead>tr>th {
	font-size: 14px;
}

.table1>table>thead>tr>th {
	padding: 15px 0;
	border-bottom: 1px solid #e7e7e7;
	font-weight: normal;
	color: #8f8f8f;
}

.body-board .table1.type2 td {
	padding: 15px 0;
	font-size: 14px;
	color: #333;
}

.table1>table>tbody>tr>td {
	border-bottom: 1px solid #e7e7e7;
}

.notice-item td {
	background: #f7f7f7;
}

.ta-c {
	text-align: center;
}

.table1.type2 .notice-item td img {
	position: relative;
	top: 2px;
	vertical-align: top;
}

img {
	border: none;
}

.body-board .table1.type2 td {
	padding: 15px 0;
	font-size: 14px;
}

.c-gray {
	color: #acacac !important;
}

.body-board .table1.type2 td.tit {
	padding: 15px 20px;
}

.body-board .table1.type2 td {
	font-size: 14px;
	color: #333;
}

.c-red {
	color: #3e3d3c !important;
	font-weight: bold;
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
				<html lang="ko">
<head>
<title>러쉬 공지사항</title>






</head>

<body class="body-board body-list pc" ondragstart="return false"
	onselectstart="return false" oncontextmenu="return false"
	marginwidth="0" marginheight="0">
	<div class="contents-innerr cs-page">
		<!-- <div class="admin-wrap">
    <p><p style="text-align: left;" align="left">&nbsp;</p></p>
</div> -->
		<div class="section">
			<div class="section-header" style="display: none;">
				<h2 class="h2">공지사항</h2>

				<div class="option type1"></div>
			</div>
			<div class="section-body">
				<div class="table1 type2" align="center">
					<table class="table-set">
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>날짜</th>								
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list}" var="dto">
								<tr>
									<td>${dto.num}</td>
									<td>${dto.cord}</td>									
									<td>${dto.hits}</td>
								</tr>

							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class=" board-paging02">
					<nav>
						<ul class="pagination pagination-sm">
							<li class="active"><span>1</span></li>
							<li><a
								href="./list.php?page=2&amp;bdId=notice&amp;noheader=y">2</a></li>
							<li><a
								href="./list.php?page=3&amp;bdId=notice&amp;noheader=y">3</a></li>
							<li><a
								href="./list.php?page=4&amp;bdId=notice&amp;noheader=y">4</a></li>
							<li><a
								href="./list.php?page=5&amp;bdId=notice&amp;noheader=y">5</a></li>
							<li><a
								href="./list.php?page=6&amp;bdId=notice&amp;noheader=y">6</a></li>
							<li><a
								href="./list.php?page=7&amp;bdId=notice&amp;noheader=y">7</a></li>
							<li><a
								href="./list.php?page=8&amp;bdId=notice&amp;noheader=y">8</a></li>
							<li><a
								href="./list.php?page=9&amp;bdId=notice&amp;noheader=y">9</a></li>
							<li><a
								href="./list.php?page=10&amp;bdId=notice&amp;noheader=y">10</a></li>
							<li class="front-page front-page-next"><a aria-label="Next"
								href="./list.php?page=11&amp;bdId=notice&amp;noheader=y"><img
									src="/admin/gd_share/img/icon_arrow_page_r.png"
									class="img-page-arrow">다음</a></li>
							<li class="front-page front-page-last"><a aria-label="Last"
								href="./list.php?page=31&amp;bdId=notice&amp;noheader=y"><img
									src="/admin/gd_share/img/icon_arrow_page_rr.png"
									class="img-page-arrow">맨뒤</a></li>
						</ul>
					</nav>
				</div>
				<form name="frmList" id="frmList" action="list.php" method="get">
					<input type="hidden" name="bdId" value="notice"> <input
						type="hidden" name="memNo" value=""> <input type="hidden"
						name="noheader" value="y">

					<div class="search-box m3 ta-c" style="display: none;">
						<div class="item">
							<div class="st-hs">
								<select class=" tune" id="category" name="category"
									style="width: 80px; display: none;"><option value="">=선택=</option>
									<option value="공지">공지</option>
									<option value="배송안내">배송안내</option>
									<option value="이벤트">이벤트</option></select>
								<div
									class="chosen-container chosen-container-single chosen-container-single-nosearch"
									style="width: 0px;" title="" id="category_chosen">
									<a class="chosen-single chosen-sch" tabindex="-1"><span>=선택=</span>
										<div>
											<b></b>
										</div></a>
									<div class="chosen-drop">
										<div class="chosen-search">
											<input type="text" autocomplete="off" readonly="">
										</div>
										<ul class="chosen-results"></ul>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="st-hs">
								<select name="searchField" class="tune"
									style="width: 80px; display: none;">
									<option value="subject">제목</option>
									<option value="contents">내용</option>
									<option value="writerNm">작성자</option>
								</select>
								<div
									class="chosen-container chosen-container-single chosen-container-single-nosearch"
									style="width: 0px;" title="">
									<a class="chosen-single chosen-sch" tabindex="-1"><span>제목</span>
										<div>
											<b></b>
										</div></a>
									<div class="chosen-drop">
										<div class="chosen-search">
											<input type="text" autocomplete="off" readonly="">
										</div>
										<ul class="chosen-results"></ul>
									</div>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="txt-field hs" style="width: 210px;">
								<input type="text" class="text" name="searchWord" value="">
							</div>
						</div>
						<div class="item">
							<button class="skinbtn base2 boardlist-search" tyle="submit">
								<em>검색</em>
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<form id="frmWritePassword">
			<div class="cite-layer dn js-list-password-layer">
				<div class="wrap">
					<h4>비밀번호 인증</h4>
					<div>
						<p>비밀번호를 입력해 주세요.</p>
						<input type="password" name="writerPw" class="text"> <a
							href="javascript:void(0)"
							class="skinbtn base2 boardlist-submit js-submit"><em>확인</em></a>
					</div>
					<button type="button" class="close" title="닫기">닫기</button>
				</div>
			</div>
		</form>
		<div id="layerDim" class="dn">&nbsp;</div>
		<script type="text/javascript"
			src="/data/skin/front/howling/js/gd_board_list.js" charset="utf-8"></script>
	</div>
	<!-- 절대! 지우지마세요 : Start -->
	<iframe name="ifrmProcess" src="/blank.php" style="display: none"
		width="900" height="500"></iframe>
	<!-- 절대! 지우지마세요 : End -->


	<!-- 2021 프레쉬 세일 -->

	<!-- 외부 스크립트 -->



	<!-- 공통 호출 하단 스크립트 : 모든페이지 하단 설치 -->
	<!-- PlayD TERA Log Script v1.2 -->
	<script>
		var _nSA = (function(_g, _s, _p, _d, _i, _h) {
			if (_i.wgc != _g) {
				_i.wgc = _g;
				_i.wrd = (new Date().getTime());
				var _sc = _d.createElement('script');
				_sc.src = _p + '//sas.nsm-corp.com/' + _s + 'gc=' + _g + '&rd='
						+ _i.wrd;
				var _sm = _d.getElementsByTagName('script')[0];
				_sm.parentNode.insertBefore(_sc, _sm);
			}
			return _i;
		})('TR10163105579', 'sa-w.js?', location.protocol, document,
				window._nSA || {}, location.hostname);
	</script>
	<!-- LogAnalytics Script Install -->

	<!-- AceCounter Log Gathering Script V.7.5.AMZ2017020801 -->
	<script language="javascript">
		var _AceGID = (function() {
			var Inf = [ 'gtc12.acecounter.com', '8080', 'AS4A43152575411',
					'AW', '0', 'NaPm,Ncisy', 'ALL', '0' ];
			var _CI = (!_AceGID) ? [] : _AceGID.val;
			var _N = 0;
			var _T = new Image(0, 0);
			if (_CI.join('.').indexOf(Inf[3]) < 0) {
				_T.src = (location.protocol == "https:" ? "https://" + Inf[0]
						: "http://" + Inf[0] + ":" + Inf[1])
						+ '/?cookie';
				_CI.push(Inf);
				_N = _CI.length;
			}
			return {
				o : _N,
				val : _CI
			};
		})();
		var _AceCounter = (function() {
			var G = _AceGID;
			var _sc = document.createElement('script');
			var _sm = document.getElementsByTagName('script')[0];
			if (G.o != 0) {
				var _A = G.val[G.o - 1];
				var _G = (_A[0]).substr(0, _A[0].indexOf('.'));
				var _C = (_A[7] != '0') ? (_A[2]) : _A[3];
				var _U = (_A[5]).replace(/\,/g, '_');
				_sc.src = (location.protocol.indexOf('http') == 0 ? location.protocol
						: 'http:')
						+ '//cr.acecounter.com/Web/AceCounter_'
						+ _C
						+ '.js?gc='
						+ _A[2]
						+ '&py='
						+ _A[4]
						+ '&gd='
						+ _G
						+ '&gp='
						+ _A[1]
						+ '&up='
						+ _U
						+ '&rd='
						+ (new Date().getTime());
				_sm.parentNode.insertBefore(_sc, _sm);
				return _sc.src;
			}
		})();
	</script>
	<noscript>
		<img src='http://gtc12.acecounter.com:8080/?uid=AS4A43152575411&je=n&'
			border='0' width='0' height='0' alt=''>
	</noscript>
	<!-- AceCounter Log Gathering Script End -->

	<!-- 2021 프레쉬 세일 -->


</body>
				</html>
			</div>
		</div>
		<!-- 본문 끝 : end -->

	</div>
	<c:import url="../main/mainFooter.jsp"></c:import>
</body>
</html>