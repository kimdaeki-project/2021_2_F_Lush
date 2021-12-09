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

#container {
	height: 100%;
    min-height: 100%;
    padding-top: 100px;
    width: 100%;
    display: block;
    max-width: 1180px;
    vertical-align: top;
    table-layout: fixed;
    position: relative;
    margin: 0 auto;
}

#content {
	width: 100%;
	max-width: 1217px;
	display: block;
	margin: 50px auto;
	padding: 0 0 50px;
	vertical-align: top;
}

.contents {
	width: 100%;
	max-width: 1217px;
	display: block;
	min-width: 1000px;
	margin: 0px auto 0;
}

.step-top.none-btm-bd {
	border: none;
}

.step-top {
	overflow: hidden;
	padding: 40px 0 90px;
	text-align: center;
	font-family: 'HelveticaNeue-Heavy', 'notokrB';
}

.step-top h2 {
    color: #000;
    font-size: 42px;
    font-weight: normal;
}

.step-top div {
    padding: 30px 0 0;
    letter-spacing: -0.5px;
}

.step-top div span.this {
    /* background: url(../img/etc/join-step-this.png) no-repeat right 7px; */
    color: #333;
}

.step-top div span {
    margin: 0 12px 0 0;
    padding: 0 27px 0 0;
    background: url("https://www.lush.co.kr/data/skin/front/howling/img/etc/join-step.png") no-repeat right 2px;
    color: #a9a9a9;
    font-size: 16px;
}

.step-top div span.end {
    margin: 0;
    padding: 0;
    background: none;
}

html, body, form, #wrap {
    height: 100%;
    width: 100%;
}

form {
    display: block;
    margin-top: 0em;
}

input, select {
    outline: none;
    font-family: "notokrR",Malgun Gothic,'맑은 고딕',Helvetica,AppleGothic,dotum,'돋움',sans-serif;
    color: #717171;
}

.order-page .tit-supplier {
    padding: 0 0 15px 0;
    color: #000;
    font-size: 28px;
    font-family: "notokrB";
    font-weight: normal;
}

.table1 > table {
    width: 100%;
    border-top: 1px solid #000;
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

.table1 > table > thead > tr > th {
    padding: 15px 0;
    border-bottom: 1px solid #e7e7e7;
    font-weight: normal;
    color: #8f8f8f;
}

.order-page .table1 table tbody td:first-child .form-element, .order-page .table1 table thead th .form-element {
    width: 17px;
    height: 16px;
    min-height: auto;
    margin: 0;
    background: #F9F9F9;
}

.order-page .table1 table span.form-element {
    display: inline-block; 
}

.form-element {
    position: relative;
}

th {
    display: table-cell; 
    text-align: -internal-center;
}

.order-page .table1.type1 table td {
    height: auto;
    padding: 20px 15px;    
    border-bottom: 1px solid #e7e7e7;
    white-space: nowrap;
}

.order-page .table1 table .cb-array {
    padding-top: 33px !important;
    vertical-align: top;
}

.ta-c {
    text-align: center;
}

.order-page .table1.type1 table .gi {
    padding-left: 15px;
    padding-right: 0;
    white-space: normal;
}
.order-page .table1.type1 table .this-product {
    border-bottom: none;
    padding-bottom: 0;
}

.count_bx {
    display: inline-block;
    overflow: hidden;
    width: 120px;
    height: 40px;
    border: 1px solid #e7e7e7;
}

.order-page .table1.type1 table tr.op td {
    padding: 0 0 20px 142px;
    /* background: url(../img/etc/dotted-1x3-b4b4b4.png) repeat-x left top; */
    border-top: none;
}

.count_bx button.down {
    float: left;
    border: 0;
    background: url("https://www.lush.co.kr/data/skin/front/howling/_msc/images/common/icon_count_down.png") no-repeat 50% 50%;
    font-size: 0;
}
.count_bx .goods-cnt {
    display: inline-block;
    width: 38px;
    height: 38px;
}
button {
    font-family: "notokrR";
}

.count_bx .inp_text {
    float: left;
    width: 44px;
    height: 38px;
    line-height: 38px;
    text-align: center;
    border: 0;
    font-size: 16px;
    color: #333;
}

.count_bx button.up {    
    border: 0;
    background: url("https://www.lush.co.kr/data/skin/front/howling/_msc/images/common/icon_count_up.png") no-repeat 50% 50%;
    font-size: 0;
}

.order-page .table1 table .price {
    display: inline-block;
    width: 100px;
    color: #333;
    font-size: 16px;
    font-weight: normal;
    font-family: "notokrM";
}

.order-page .price-box {
    display: table;
    width: 100%;
    margin: 0 0 0;
    background: #f2f2f2;
    border: 0;
}

.order-page .price-box > div {
    display: table-cell;
    padding: 30px;
    text-align: center;
    vertical-align: middle;
}

.order-page .price-box > div p {
    font-size: 18px;
    line-height: 30px;
    color: #000;
}

.order-page .price-box > div p > span {
    display: inline-block;
    vertical-align: middle;
}

.order-page .price-box > div p .tit {
    padding-right: 20px;
}

.order-page .tit {
    overflow: hidden;
    padding: 33px 0 16px;
}

.order-page .price-box > div p .detail strong {
    color: #000;
    font-family: "notokrM";
    padding-left: 8px;
}

strong {
    font-weight: bold;
}

.order-page .price-box > div img {
    margin: 0 25px;
    vertical-align: middle;
}

.order-page .price-box > div p .total .tit {
    font-size: 18px;
    padding-right: 25px;
    font-family: "notokrB";
}

.order-page .tit {
    overflow: hidden;
    padding: 33px 0 16px;
}

.order-page .price-box > div p .total {
    font-size: 26px;
}

.mt20 {
    margin-top: 20px;
}

.btn_underline {
    border-bottom: 1px solid #8f8f8f;
    margin: 0 5px;
    font-family: "notokrR";
    font-size: 13px;
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

.mt50 {
    margin-top: 50px;
}

.btn_l.w280 {
    margin: 0 10px;
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
.btnicon {
    display: inline-block;
    vertical-align: middle;
    text-align: center;
    box-sizing: border-box;
}

.btn_l.w280 {
    margin: 0 10px;
}

.btn_bk {
    border: 1px solid #000;
    background: #000;
    color: #fff;
}

.order-page .tit-supplier {
    padding: 0 0 15px 0;
    color: #000;
    font-size: 28px;
    font-family: "notokrB";
    font-weight: normal;
}

.order-page .tit-supplier .spa_info {
    margin-left: 20px;
    font-size: 14px;
    color: #cc2020;
    font-family: "notokrR";
}
</style>
</head>
<body>
	<c:import url="../main/mainHeader.jsp"></c:import>
	


		<div id="container" class="">


			<!-- 본문 시작 : start -->
			<div id="content">

				<div class="contents">
					<div class="order-page">
						<div class="step-top none-btm-bd">
							<h2>SHOPPING CART</h2>
							<div>
								<span class="this" title="현재페이지">Cart</span> <span>Order</span>
								<span class="end">Order confirmed</span>
							</div>
						</div>


						<!-- 일반상품  -->
						<form id="frmCart" name="frmCart" method="post"
							target="ifrmProcess">
							<input type="hidden" name="mode" value=""> <input
								type="hidden" name="cart[cartSno]" value=""> <input
								type="hidden" name="cart[goodsNo]" value=""> <input
								type="hidden" name="cart[goodsCnt]" value=""> <input
								type="hidden" name="cart[addGoodsNo]" value=""> <input
								type="hidden" name="cart[addGoodsCnt]" value=""> <input
								type="hidden" name="cart[couponApplyNo]" value=""> <input
								type="hidden" name="useBundleGoods" value="1">
							<!-- 장바구니 상품리스트 시작 -->
							<div class="table1 type1">



								<h3 class="tit-supplier">제품</h3>


								<div class="groobeeCartList" style="display: none;">
									<a href="../goods/goods_view.php?goodsNo=9"
										class="groobeeProductA"></a> <span class="groobeeProductName">씨
										베지터블</span> <span class="groobeeProductCategory">001002001</span> <span
										class="groobeeProductCount">1</span> <span
										class="groobeeProductAmount"> ￦10,000 </span> <span
										class="groobeeProductPrice">10000.00</span> <span
										class="groobeeProductSalePrice">10000</span> <span
										class="groobeeProductImage"><img
										src="/data/goods/11/01/19/9/9_list_083.jpg" width="40"
										alt="씨 베지터블" title="씨 베지터블" class="middle"></span>
								</div>
								<table>
									<thead>
										<tr>
											<th><span class="form-element"> <input
													type="checkbox" id="allCheck-frmCart"
													class="checkbox gd_checkbox_all" data-target-id="cartSno1_"
													data-target-form="#frmCart" checked="checked">
											</span></th>
											<th style="width: 440px;">제품 정보</th>
											<th style="width: 185.32px;">수량</th>											
											<th style="width: 158.51px;">금액</th>
											<th style="width: 60.37px;">복지혜택</th>
											<th style="width: 158.53px;">합계금액</th>
											<th style="width: 120px;">배송비</th>
										</tr>
									</thead>
									<tbody>



										<!-- Groobee Cart Selector Script -->

										<!-- End of Groobee Cart Selector Script -->


							

										<tr>
											<td rowspan="2" class="ta-c cb-array"><span
												class="form-element"> <input type="checkbox"
													name="cartSno[]" id="cartSno1_2182038" value="2182038"
													class="checkbox" checked="checked" data-price="10000"
													data-mileage="0" data-goodsdc="0" data-memberdc="0"
													data-coupondc="" data-possible="y">
											</span></td>
											<td class="gi this-product">
												<div style="display: table; width: 100%;">
													<span class="thumb"><a
														href="../goods/goods_view.php?goodsNo=9"><img
															src="/data/goods/11/01/19/9/9_list_083.jpg" width="40"
															alt="씨 베지터블" title="씨 베지터블" class="middle"></a></span>
													<div class="text_con">
														<div id="coupon_apply_2182038" style="display: none;">
															<button type="button" class="btn-alert-login">
																<img
																	src="/data/skin/front/howling/img/btn/coupon-apply.png"
																	alt="쿠폰적용">
															</button>
														</div>
														<a href="../goods/goods_view.php?goodsNo=9">씨 베지터블</a>
														<p class="good_category">솝</p>

													</div>
												</div>
											</td>
											<td class="ta-c count  " rowspan="2">
												<!-- 튜닝 : 수량 변경 start --> <span class="count_bx">
													<button class="down goods-cnt ztu_cnt_down" type="button"
														title="감소" onmousedown="javascript:AEC_F_D('9','o',1);">감소</button>
													<input type="text" name="goodsCnt[]" value="1" title="수량"
													class="inp_text ztu_goods_cnt js-number" data-stock-fl="n"
													data-total-stock="0" data-min-order-cnt="1"
													data-max-order-cnt="20" data-sales-unit="1"
													data-change-before-value="1" data-default-goods-cnt="1"
													data-goods-key="0" data-goods-no="9" data-goods-nm="씨 베지터블"
													data-option-nm="" data-fixed-sales="option"
													data-fixed-order-cnt="option"
													onchange="input_count_change(this,'1');return false;">
													<button class="up goods-cnt ztu_cnt_up" type="button"
														title="증가" onmousedown="javascript:AEC_F_D('9','i',1);">증가</button>

													<span class="ztu_hidden_bt" goods_type="default"
													style="display: none;">
														<button type="button"
															class="normal-btn small1 js-goods-cnt-change"
															goods_type="default" data-sno="2182038" data-goodsno="9">
															<em>수정</em>
														</button>
												</span>
											</span> <!-- 튜닝 : 수량 변경 end -->
											</td>
											<td class="ta-c  " rowspan="2"><strong class="price">￦10,000
											</strong>
												<p class="add_currency"></p></td>
											<td rowspan="2" class="benefits"></td>
											<td rowspan="2" class="ta-c"><strong class="price">￦10,000</strong>
												<p class="add_currency"></p></td>

											<td rowspan="2" class="ta-c"><span class="c-gray">
													<span style="display: none;">비회원 및 직원용 배송비<br></span>
													￦2,500 <br> (택배)
											</span></td>

										</tr>
										<tr class="op">
											<td>
												<div></div>
											</td>
										</tr>
									</tbody>

								</table>
								<!-- 장바구니 상품리스트 끝 -->


							</div>
						</form>

						<div class="price-box">
							<div>
								<p>
									<span class="detail"><em class="tit">총 <em
											id="totalGoodsCnt">1</em> 개의 금액
									</em> ￦<strong id="totalGoodsPrice">10,000</strong></span> <span
										id="deliveryCalculateNone"><img
										src="https://www.lush.co.kr/data/skin/front/howling/img/icon/plus_new.png" alt="더하기"><em
										class="tit">배송비</em> ￦<strong id="totalDeliveryCharge">2,500</strong></span>
									<span class="total"><img
										src="https://www.lush.co.kr/data/skin/front/howling/img/icon/total_new.png" alt="합계"><em
										class="tit">총 주문금액</em>￦<strong id="totalSettlePrice">12,500</strong>
									</span>
								</p>
								<div class="add_currency" style="display: none;">
									<em id="totalSettlePriceAdd"></em>
								</div>

								<p></p>
								<span id="deliveryChargeText"></span>
							</div>
						</div>
						<div class=" ">
							<div class="mt20">
								<button type="button"
									class="btnicon btn_underline cart-cartdelete"
									onclick="cart_process('cartDelete');">
									<em>삭제 하기</em>
								</button>
							</div>
							<div class="ta-c mt50">
								<a
									href="https://lush.co.kr:443/goods/goods_list.php?cateCd=001002001"
									class="btnicon btn_l btn_wt w280">쇼핑 계속하기</a>
								<button type="button" class="btnicon btn_l btn_bk w280"
									onclick="cart_process('orderSelect');">
									<em>주문하기</em>
								</button>
								
							</div>
						</div>
						<div class="cart-caution" style="display: none;">
							<p class="caution-msg1">주문서 작성단계에서 복지 적용을 하실 수 있습니다.</p>
						</div>
						<div class="easy-payment-right" style="display: none;">
							<div></div>
							<div>
								
								<div id="NC_ID_1639015104292441"
									class="npay_storebtn_bx npay_type_A_1">
									<div id="NPAY_BUTTON_BOX_ID" class="npay_button_box ">
										<div class="npay_button">
											<div class="npay_text">
												<span class="npay_blind">NAVER 네이버 ID로 간편구매 네이버페이</span>
											</div>
											<table class="npay_btn_list" cellspacing="0" cellpadding="0">
												<tbody>
													<tr>
														<td class="npay_btn_item"><a
															id="NPAY_BUY_LINK_IDNC_ID_1639015104292441" href="#"
															class="npay_btn_link npay_btn_pay btn_green"
															style="box-sizing: content-box;" title="새창"><span
																class="npay_blind">네이버페이 구매하기</span></a></td>
														<td class="npay_btn_item btn_width"><a
															id="NPAY_TALK_LINK_IDNC_ID_1639015104292441" href="#"
															class="npay_btn_link npay_btn_talk "
															style="box-sizing: content-box;" title="새창"><span
																class="npay_blind">톡톡</span></a></td>
													</tr>
												</tbody>
											</table>
										</div>
										<div id="NPAY_EVENT_ID" class="npay_event">
											<a id="NPAY_PROMOTION_PREV_IDNC_ID_1639015104292441" href="#"
												class="npay_more npay_more_prev"><span
												class="npay_blind">이전</span></a>
											<p id="NPAY_PROMOTION_IDNC_ID_1639015104292441"
												class="npay_event_text">
												<strong class="event_title">멤버십</strong><a
													class="event_link"
													href="https://m-campaign.naver.com/collect/v2/?code=20210527_100100_006_inc_40101&amp;target=https://nid.naver.com/membership/join"
													target="_blank" title="새창">첫달 무료가입하고 추가 4%!</a>
											</p>
											<a id="NPAY_PROMOTION_NEXT_IDNC_ID_1639015104292441" href="#"
												class="npay_more npay_more_next"><span
												class="npay_blind">다음</span></a>
										</div>
									</div>
								</div>
							</div>
						</div>




						<!-- 스파상품  -->
						<form id="frmSpaCart" name="frmSpaCart" method="post"
							target="ifrmProcess">
							<input type="hidden" name="mode" value=""> <input
								type="hidden" name="cart[cartSno]" value=""> <input
								type="hidden" name="cart[goodsNo]" value=""> <input
								type="hidden" name="cart[goodsCnt]" value=""> <input
								type="hidden" name="cart[addGoodsNo]" value=""> <input
								type="hidden" name="cart[addGoodsCnt]" value=""> <input
								type="hidden" name="cart[couponApplyNo]" value=""> <input
								type="hidden" name="useBundleGoods" value="1">
							<!-- 장바구니 상품리스트 시작 -->
							<div class="table1 type1 mt50">

								<h3 class="tit-supplier">
									스파 <span class="spa_info">바우처는 온라인으로 제공되므로, 실물이 배송되는
										제품과는 별도로 결제를 진행할 수 있습니다.</span>
								</h3>

								<!-- 장바구니 상품리스트 끝 -->

								<table>
									<tbody>
										<tr>
											<td colspan="8" class="no-data">장바구니에 담겨있는 상품이 없습니다.</td>
										</tr>
									</tbody>
								</table>

							</div>
						</form>

						<div class="price-box">
							<div>
								<p>
									<span class="detail"><em class="tit">총 <em
											id="totalGoodsCnt2">0</em> 개의 금액
									</em> ￦<strong id="totalGoodsPrice2">0</strong></span> <span
										id="deliveryCalculateNone2"><img
										src="/data/skin/front/howling/img/icon/plus_new.png" alt="더하기"><em
										class="tit">배송비</em> ￦<strong id="totalDeliveryCharge2">0</strong></span>
									<span class="total"><img
										src="/data/skin/front/howling/img/icon/total_new.png" alt="합계"><em
										class="tit">총 주문금액</em>￦<strong id="totalSettlePrice2">0</strong>
									</span>
								</p>
								<div class="add_currency">
									<em id="totalSettlePriceAdd"></em>
								</div>

								<p></p>
								<span id="deliveryChargeText2"></span>
							</div>
						</div>
						<!-- //SPA_webidas추가 -->



					</div>
					<hr>
				</div>
				<!-- 쿠폰 적용하기 레이어 -->
				<div id="couponApplyLayer" class="layer-wrap dn"></div>
				<!--//쿠폰 적용하기 레이어 -->

				<!-- 옵션 변경하기 레이어 -->
				<div id="optionViewLayer" class="layer-wrap dn"></div>
				<!-- 옵션 변경하기 레이어 -->




				
				<!-- Recopick 장바구니_하단 스크립트 -->
				<div id="recopick_widget_XTBGdLiz" data-widget_id="XTBGdLiz">
					<script>
						(function(w, n) {
							w[n] = w[n] || function() {
								(w[n].q = w[n].q || []).push(arguments)
							};
						}(window, 'recoPick'));
						recoPick('widget', 'recopick_widget_XTBGdLiz');
					</script>
				</div>
				<!-- Recopick 장바구니_하단 스크립트 -->
			</div>
			<!-- 본문 끝 : end -->

		</div>
		<div></div>
		<%-- <c:import url="../main/mainFooter.jsp"></c:import> --%>
</body>
</html>