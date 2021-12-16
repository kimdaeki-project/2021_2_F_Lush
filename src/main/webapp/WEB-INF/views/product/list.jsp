<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

@font-face {
   font-family: 'notokrM';
   src: url('/resources/fonts/NotoSansKR-Medium.otf') format('opentype');
}

@font-face {
   font-family: 'notokrR';
   src: url('/resources/fonts/NotoSansKR-Regular.otf') format('opentype');
}

@font-face {
	font-family: 'notokrB';
	src: url('/resources/fonts/NotoSansKR-Black.otf') format('opentype');
}

@font-face {
	font-family: 'HelveticaNeue-Heavy';
	src: url('/resources/fonts/HelveticaNeue-Heavy.otf') format('opentype');
}

body>#wrap {
	height: auto;
	min-height: 100%;
}

#wrap {
	display: block;
	margin: 0 auto;
}

#wrap>#container {
	height: 0;
	min-height: 0;
}

.contents {
	padding-bottom: 100px;
}

#container {
	display: block;
	width: 100%;
	position: static;
	padding-top: 100px;
	max-width: 1180px;
	min-height: 500px;
	vertical-align: top;
}

#container #content {
	margin: 0;
}

.sub_visual {
	text-align: center;
	color: #fff;
}

.sub_visual .subv_txt01 {
	text-align: center;
	color: #fff;
	font-size: 68px;
	font-family: 'HelveticaNeue-Bold', 'notokrB';
	letter-spacing: 0.5em;
	text-indent: 0.5em
}

.sub_visual .subv_txt02 {
	font-size: 26px;
	font-family: "notokrL";
	letter-spacing: 0.2em;
	text-indent: 0.2em;
}

.mt77 {
	margin-top: 77px;
}

.list_hd_bx {
	position: relative;
	border-bottom: 2px solid #000;
}

.list_hd_bx h2 {
	padding-bottom: 15px;
	color: #333;
	line-height: 30px;
	font-size: 28px;
	font-family: "notokrB";
	font-weight: normal;
}

.view .list_hd_bx .goods-list {
	float: none;
	position: absolute;
	right: 0;
	top: 0;
	margin: 0;
	padding: 0;
	width: 300px;
	display: table;
}

.view .list_hd_bx .goods-list .tc {
	display: none;
	/* display: table-cell; */
	vertical-align: middle;
	width: 290px;
	padding-right: 18px;
	float: none;
	font-size: 14px;
	text-align: right;
}

.view .list_hd_bx .goods-list .tc strong {
	padding: 0;
	font-size: 12px;
}

.view .goods-list fieldset {
	display: inline-block;
	float: right;
}

.view .list_hd_bx .goods-list .align {
	display: table-cell;
	vertical-align: middle;
	width: 110px;
	float: none;
}

.view .goods-list .align {
	display: inline-block;
	float: right;
	height: 100%;
	margin: 10px 0;
	padding: 0;
	border-top: none;
	border-bottom: none;
}

.view .goods-list .align .choice {
	float: right;
	margin-bottom: 0px;
}

.view .goods-list .align .choice div {
	float: left;
	margin: 0 0 0;
}

.cg-main {
	display: block;
	max-width: 1180px;
	margin: 0 auto;
}

.cg-main .lower-category {
	padding: 10px 0;
	border: none;
	border-top: none;
	font-size: 0;
	text-align: left;
}

.chosen-container-single .chosen-single span {
	display: block;
	overflow: hidden;
	margin-right: 26px;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.chosen-container-single .chosen-single div b {
	background:
		url('https://lush.co.kr/data/skin/front/howling/img/etc/select-arrow-down-11x7.png')
		no-repeat left 50%;
}

.chosen-container-single .chosen-single div b {
	display: block;
	width: 100%;
	height: 100%;
	background:
		url('https://lush.co.kr/data/skin/front/howling/js/jquery/chosen/chosen-sprite.png')
		no-repeat 0px 4px;
}

.view .list_hd_bx .goods-list .align .choice div .chosen-container .chosen-single
	{
	height: 32px;
	line-height: 30px;
	font-size: 14px;
}

.chosen-container-single .chosen-search input[type="text"] {
	border: 1px solid #ccc;
}

caption, legend {
	width: 0;
	height: 0;
	visibility: hidden;
	font-size: 0;
	line-height: 0;
	text-indent: -9999px;
}

.chosen-container-single .chosen-single div {
	position: absolute;
	top: 0;
	right: 0;
	display: block;
	width: 18px;
	height: 100%;
}

.chosen-container .chosen-drop {
	overflow-y: auto;
	max-height: 400px;
}

.chosen-container-single .chosen-drop {
	margin-top: -1px;
	border-radius: 0;
	padding: 5px 0;
}

.chosen-container .chosen-drop {
	border: 1px solid #ccc;
	border-radius: 0;
	box-sizing: border-box;
	box-shadow: none;
}

.chosen-container-single .chosen-drop {
	margin-top: -1px;
	border-radius: 0;
	background-clip: padding-box;
	padding: 5px 0;
}

.chosen-container .chosen-drop {
	position: absolute;
	top: 100%;
	left: -9999px;
	z-index: 1010;
	width: 100%;
	border: 1px solid #ccc;
	border-top: 0;
	background: #fff;
	border-radius: 0;
	box-sizing: border-box;
}

.chosen-container-single .chosen-search input[type="text"] {
	margin: 1px 0;
	padding: 4px 20px 4px 5px;
	width: 100%;
	height: auto;
	outline: 0;
	border: 1px solid #ccc;
	background: white
		url('https://lush.co.kr/data/skin/front/howling/js/jquery/chosen/chosen-sprite.png')
		no-repeat 100% -20px;
	background:
		url('https://lush.co.kr/data/skin/front/howling/js/jquery/chosen/chosen-sprite.png')
		no-repeat 100% -20px;
	font-size: 1em;
	font-family: sans-serif;
	line-height: normal;
	border-radius: 0;
}

.chosen-container-single .chosen-single {
	position: relative;
	display: block;
	overflow: hidden;
	padding: 0 0 0 8px;
	height: 28px;
	/* border: 1px solid #ccc; */
	background-color: #fff;
	color: #333;
	text-decoration: none;
	white-space: nowrap;
	line-height: 27px;
	margin: 0 !important;
}

.chosen-container-single .chosen-search {
	position: relative;
	z-index: 1010;
	margin: 0;
	padding: 3px 4px;
	white-space: nowrap;
}

.list_hd_bx .chosen-container-single .chosen-sch {
	border: 1px solid #dcdcdc;
}

.chosen-container-single .chosen-search input[type="text"] {
	border: 1px solid #ccc;
}

.view .goods-list .align .chosen-container .chosen-results {
	float: none;
}

.cg-main .lower-category {
	padding: 10px 0;
	border: none;
	border-top: none;
	font-size: 0;
	text-align: left;
}

.cg-main .lower-category li {
	display: inline-block;
	width: auto;
	padding: 0;
	text-align: center;
	vertical-align: middle;
}

.cg-main .lower-category li span {
	display: block;
	padding: 0 16px;
	margin: 0;
	font-size: 14px;
}

.cg-main .lower-category li span.on {
	color: #000;
}

.cg-main .lower-category li span a {
	display: inline-block;
	padding: 10px 0;
	font-size: 14px;
	color: #8f8f8f;
}

.cg-main .lower-category li span em {
	color: #777;
}

.item-display .list {
	position: relative;
}

.item-display .list ul.prdList, .item-display .list ul[class^="prdList"],
	.item-display .list ul[class*="prdList"] {
	display: table;
	width: 100%;
}

.item-display .list ul {
	padding-top: 10px;
	font-size: 0;
}

.item-display .list ul li {
	display: inline-block;
	padding: 0 0 60px;
	font-size: 12px;
	text-align: center;
	vertical-align: top;
}

.item-display .list ul.prdList li {
	padding: 0 0;
}

.item-display .list ul.prdList li .space {
	display: block;
	position: relative;
	padding: 0 5px 30px 5px;
}

.item-display .list .space {
	margin: 0 auto;
	padding: 0 10px;
}

.item-display .list ul.prdList li .box {
	display: block;
	position: relative;
}

.item-display .list ul.prdList li .thumbnail {
	position: relative;
}

.item-display .list ul li .thumbnail {
	overflow: hidden;
	text-align: center;
	position: relative;
	height: 0;
	width: 100%;
	margin: 0;
	padding-bottom: 100%;
}

.item-display .list ul li .thumbnail>a {
	position: absolute;
	left: 0;
	width: 100%;
	height: 100%;
	text-align: center;
}

.item-display .prdimg {
	display: block;
}

.item-display .space .box .thumbnail .prdimg img, .item-display .space .box .thumbnail img
	{
	width: 100%;
}

.item-display .choice {
	display: none;
	position: absolute;
	top: 42px;
	left: 22px;
}

.item-display .choice .btn-open-win {
	display: none;
}

.item-display .choice a {
	display: block;
	position: relative;
	vertical-align: middle;
}

.item-display .choice a, .item-display .choice button {
	position: relative;
	height: 28px;
	line-height: 28px;
	margin-bottom: 10px;
	color: #000000;
	text-align: center;
	cursor: pointer;
}

.item-display .choice a span {
	display: inline-block;
	line-height: 45px;
	vertical-align: middle;
}

.item-display .choice .icon-name {
	display: none;
}

.item-display .choice a span, .item-display .choice button span {
	font-size: 16px;
	z-index: 0;
}

.item-display .choice a span {
	display: inline-block;
	line-height: 45px;
	vertical-align: middle;
}

.hand {
	cursor: pointer;
}

.item-display .list ul.prdList li .prdinfo {
	position: relative;
	display: block;
	padding: 30px 0 0 0;
	text-align: center;
}

.item-display .list ul.prdList li .conditions {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	text-align: center;
}

.item-display .list ul.prdList li .txt {
	display: block;
	padding: 0 0 0 0;
	color: #1e1e1e;
	text-align: center;
	line-height: 20px;
}

.item-display .list ul.prdList li .hot {
	vertical-align: top;
}

.item-display .list ul.prdList li .txt a {
	display: block;
	margin: 0;
	text-decoration: none;
}

.item-display .list ul.prdList li .txt .prdName {
	display: block;
	padding: 0;
	color: #333;
	line-height: 22px;
	font-size: 16px;
	max-height: 40px;
	text-overflow: ellipsis;
	overflow: hidden;
}

.item-display .list ul.prdList li .txt .shotdesc {
	display: block;
	padding: 0;
	color: #8f8f8f;
	line-height: 20px;
	max-height: 20px;
	font-size: 14px;
	text-overflow: ellipsis;
	overflow: hidden;
}

.item-display .list ul.prdList li .price {
	display: block;
	line-height: 30px;
	margin-top: 10px;
	padding: 0;
	text-align: center;
	color: #333;
	font-size: 16px;
}

.item-display .list ul.prdList li .price .cost strong {
	font-weight: 500;
}

.item-display .list ul li .price .cost strong {
	color: #333;
	/* font-family: arial; */
	font-size: 16px;
	
}
.bt0{
	color: #8f8f8f;
}

.rr {
	color: #8f8f8f;
}

.active{
	color: #000;
}

</style>
</head>
<body>
	<c:import url="../main/mainHeader.jsp"></c:import>

	<div id="wrap">
		<div id="container" class="">
			<div id="content">
				<div class="groobeeCategory" style="display: none">
					<span class="groobeeCategoryName">
					</span> <span
						class="groobeeCategoryCode">001013</span>
				</div>
			</div>
		</div>

		<div class="sub_visual">
			<div
				style="height: 500px; background: url('https://lush.co.kr/data/editor/goods/200617/pc_cate_best01_163505.jpg') no-repeat 50% 0;">
				<p class="subv_txt01" style="padding-top: 190px;">
			
				</p>
				<p></p>
				<p class="subv_txt02">누구나 좋아하는 인기 제품을 만나 보세요!</p>
			</div>
		</div>

		<div class="contents">
			<div class="view">
				<div class="cg-main">
					<div class="list_hd_bx mt77">
						<h2 class="LushTitle">베스트</h2>
						<div class="goods-list">
							<span class="tc">총 <strong>253</strong> 개상품
							</span>
							
								<input type="hidden" name="cateCd" value="001013">
								<fieldset>
									<legend>상품 정렬 폼</legend>
									<div class="align">
										<!-- <ul>
											<li>
												<input type="radio" id="sort1" class="radio" name="sort" value="">
												<label for="sort1">추천순</label>
											</li>
											<li>
												<input type="radio" id="sort2" class="radio" name="sort" value="orderCnt desc,g.regDt desc">
												<label for="sort2">판매인기순</label>
											</li>
											<li>
												<input type="radio" id="sort3" class="radio" name="sort" value="goodsPrice asc,g.regDt desc">
												<label for="sort3">낮은가격순</label>
											</li>
											<li>
												<input type="radio" id="sort4" class="radio" name="sort" value="goodsPrice desc,g.regDt desc">
												<label for="sort4">높은가격순</label>
											</li>
											<li>
												<input type="radio" id="sort5" class="radio" name="sort" value="reviewCnt desc,g.regDt desc">
												<label for="sort5">상품평순</label>
											</li>
											<li>
												<input type="radio" id="sort6" class="radio" name="sort" value="g.regDt desc">
												<label for="sort6">등록일순</label>
											</li>
										</ul> -->
										<div class="choice">
											<div>
												<select name="sort" class="tune"
													style="width: 110px; display: none;">
													<button class="rr 1">추천순</button>
													<button class="rr 2">판매인기순</button>
													<button class="rr 3">낮은가격순</button>
													<button class="rr 4">높은가격순</button>
													<button class="rr 5">리뷰많은순</button>
													<button class="rr 6">신제품순</button>													
												</select>
												<div
													class="chosen-container chosen-container-single chosen-container-single-nosearch"
													style="width: 110px;" title="">
													<a class="chosen-single chosen-sch" tabindex="-1"><span>추천순</span>
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
									</div>
								</fieldset>
							
						</div>
					</div>

					<ul class="lower-category">
						<li><span><button class="bt0 active">전체<!-- 베스트 --></button><em>(16)</em></span></li>
						<li><span><button class="rr bt1" value="best">주간 베스트</button> <em>(2)</em>
						</span></li>
						<li><span><button class="rr bt2" value="star">별 다섯개 후기</button> <em>(2)</em>
						</span></li>
						<li><span><button class="rr bt3" value="online">온라인 전용</button> <em>(4)</em>
						</span></li>
						<li><span><button class="rr bt4" value="korea">국내제조</button> <em>(3)</em>
						</span></li>
						<li><span><button class="rr bt5" value="neikid">네이키드</button> <em>(3)</em>
						</span></li>
						<li><span><button class="rr bt6" value="present">선물 고수 되기</button> <em>(2)</em>
						</span></li>
					</ul>

					<div class=" ">
						<div class="item-display type-gallery type-gallery_">
							<div class="list">
								<form action="list">
									<ul class="prdList">
										
									</ul>
								</form>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<c:import url="../main/mainFooter.jsp"></c:import>

	<script type="text/javascript">
		ready();
		
		function ready(){
			$.ajax({
				type : "GET",
				url : "./productList",				
				success : function(result) {
					result = result.trim();
					$('.prdList').html(result);
				}
				
			});
		}		
		
		function cordList(cord2) {
			
			$.ajax({
				type : "GET",
				url : "./cordList",		
				data : {
					cord : cord2
				},
				success : function(result) {
					console.log(cord2);
					result = result.trim();
					$('.prdList').html(result);
				}
				
			});
		}
		
		$(".rr").on('click', function(){
			let cord2=$(this).val();
			console.log(cord2);
			check(cord2);
		});
		
		function check(cord2){
			
			
			 if(cord2=='best') {
				$('.bt1').addClass('active');
				$('.bt0').removeClass('active');
				$('.bt2').removeClass('active');
				$('.bt3').removeClass('active');
				$('.bt4').removeClass('active');
				$('.bt5').removeClass('active');
				$('.bt6').removeClass('active');
				$('.LushTitle').text('주간베스트');
				console.log(cord2);
				cordList(cord2);
				
			} else if(cord2=='star'){
				$('.bt2').addClass('active');
				$('.bt0').removeClass('active');
				$('.bt1').removeClass('active');
				$('.bt3').removeClass('active');
				$('.bt4').removeClass('active');
				$('.bt5').removeClass('active');
				$('.bt6').removeClass('active');
				$('.LushTitle').text('별5개후기');
				console.log(cord2);
				cordList(cord2);
				
			} else if(cord2=='online') {
				$('.bt3').addClass('active');
				$('.bt0').removeClass('active');
				$('.bt2').removeClass('active');
				$('.bt1').removeClass('active');
				$('.bt4').removeClass('active');
				$('.bt5').removeClass('active');
				$('.bt6').removeClass('active');
				$('.LushTitle').text('온라인 전용');
				console.log(cord2);
				cordList(cord2);
				
			} else if(cord2=='korea') {
				$('.bt4').addClass('active');
				$('.bt0').removeClass('active');
				$('.bt2').removeClass('active');
				$('.bt3').removeClass('active');
				$('.bt1').removeClass('active');
				$('.bt5').removeClass('active');
				$('.bt6').removeClass('active');
				$('.LushTitle').text('국내제조');
				console.log(cord2);
				cordList(cord2);
				
			} else if(cord2=='neikid') {
				$('.bt5').addClass('active');
				$('.bt0').removeClass('active');
				$('.bt2').removeClass('active');
				$('.bt3').removeClass('active');
				$('.bt4').removeClass('active');
				$('.bt1').removeClass('active');
				$('.bt6').removeClass('active');
				$('.LushTitle').text('네이키드');
				console.log(cord2);
				cordList(cord2);
				
			} else if(cord2=='present') {
				$('.bt6').addClass('active');
				$('.bt0').removeClass('active');
				$('.bt2').removeClass('active');
				$('.bt3').removeClass('active');
				$('.bt4').removeClass('active');
				$('.bt5').removeClass('active');
				$('.bt1').removeClass('active');
				$('.LushTitle').text('선물고수되기');
				console.log(cord2);
				cordList(cord2);
				
			}
		}
		
		$(".bt0").on('click', function(){
			ready();
		});
		
		
		
		
		
		
	</script>

</body>
</html>