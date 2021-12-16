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
   height: 34px;
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

.section .section {
    margin: 0;
}

.section-header {
    margin: 0 0 10px 0;
    position: relative;
}

.section-header .h3-1 {
    font-size: 16px;
    font-weight: bold;
    color: #333;
}

.textbox {
    border: 1px solid #ccc;
    padding: 16px;
    letter-spacing: -0.5px;
    font-size: 14px;
    font-family: "notokrR",Malgun Gothic,"맑은 고딕",AppleGothic,Dotum,"돋움",sans-serif;
}

.section .section + .section {
    margin: 30px 0;
}

.section-header {
    margin: 0 0 10px 0;
    position: relative;
}

.section-header .h3-1 {
    font-size: 16px;
    font-weight: bold;
    color: #333;
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

.table1 > table > tbody > tr > th {
    background: #f9f9f9;
    border-bottom: 1px solid #e7e7e7;
    padding: 10px 16px;
    color: #777;
    font-weight: normal;
}
.ta-l {
    text-align: left;
    vertical-align: middle;
}

.txt-field.hs {
    height: 38px;
}

.txt-field {
    position: relative;    
    padding: 0 10px;
    background: #fff;
    border: 1px solid #ccc;
    vertical-align: middle;
}

.txt-field.hs .text {
    width: 100%;
    height: 34px;
    padding: 0;
    border: 1px solid #fff;
    color: #333;
    line-height: 36px;
}

input.text, input.password, input.edit {
    padding: 0 5px;
    outline: none;
    font-size: 14px;
}

input, select {
    outline: none;
    font-family: "notokrR",Malgun Gothic,'맑은 고딕',Helvetica,AppleGothic,dotum,'돋움',sans-serif;
    color: #717171;
}

.check-list .row {
    overflow: hidden;
}

.col3 .col { 
   float:left;
    width: 33.3%;
}
.check-list .check-item {    
    width: 49% !important;
    font-family: 'notokrR';
}

span.form-element {
    display: inline-block;
}
.form-element {
    position: relative;
}

.check-list .check-item input[type=checkbox] {
    vertical-align: middle;
    margin: 0 4px 0 0;
}
.form-element input {
    position: absolute;
    top: 5px;
    left: 1px;
    z-index: -1;
}
input.checkbox {
    width: 13px;
    height: 13px; 
}

.form-element label.check-s {
    min-width: 13px;
    padding: 0 0 0 22px; 
}

.form-element label.a {
    min-width: 13px;
    padding: 0 0 0 52px; 
}

.form-element label {
    position: relative;
    top: 0;
    left: 0;
    display: inline-block;    
    min-height: 20px;    
}

label {
    cursor: pointer;
    vertical-align: top;
}

.col3 .col {
    float: left; 
}
.check-list .check-item {    
    width: 49% !important;
    font-family: 'notokrR';
}

.check-list .check-item + .check-item input[type=checkbox] {
    margin: 0 0 0 30px;
}

input.checkbox {
    width: 13px;
    height: 13px;
    vertical-align: top;
}

td {
    display: table-cell;
    vertical-align: inherit;
}

.table1 > table > tbody > tr > th~td {
    padding: 10px;
}
.table1 > table > tbody > tr > td {
    border-bottom: 1px solid #e7e7e7;
}

.check-list .check-item + .check-item input[type=checkbox] {
    margin: 0 0 0 30px;
}

.textarea textarea { 
    box-sizing: border-box;
    padding: 5px;
    border: 1px solid #ccc;
    color: #333;
}
.w100p {
    width: 100%;
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

      <div id="content">
         <div class="contents-inner mypage">
            <div class="section">
               <div class="section-header type1">
                  <h2 class="h2">회원탈퇴</h2>
               </div>
               <form id="formHackOut" name="formHackOut"
                  action="./mypage_memberDelete" method="post"
                  novalidate="novalidate">
                  <input type="hidden" name="mode" value="hackOut"> <input
                     type="hidden" name="snsType" value="">
                  <div class="section-body">
                     <div class="section">
                        <div class="section-header">
                           <h3 class="h3-1">01.회원탈퇴 안내</h3>
                        </div>
                        <div class="section-body">
                           <div class="textbox">
                              러쉬코리아 탈퇴안내<br> <br> 불편하셨던 점이나 불만사항을 알려주시면 적극 반영해서
                              고객님의 불편함을 해결해 드리도록 노력하겠습니다.<br> <br> ■ 아울러 회원 탈퇴시의
                              아래 사항을 숙지하시기 바랍니다.<br> 1. 회원 탈퇴 시 회원님의 정보는 상품 반품 및 A/S를
                              위해 전자상거래 등에서의 소비자 보호에 관한 법률에 의거한 <br> 고객정보 보호정책에따라 관리
                              됩니다.<br> 2. 탈퇴 시 회원님께서 보유하셨던 데이터는 삭제 됩니다
                           </div>
                        </div>
                     </div>
                     <div class="section">
                        <div class="section-header">
                           <h3 class="h3-1">02.회원탈퇴 하기</h3>
                        </div>
                        <div class="section-body">
                           <div class="table1">
                              <table>
                                 <colgroup>
                                    <col style="width: 150px;">
                                    <col>
                                 </colgroup>
                                 <tbody>
                                    <tr>
                                       <th class="ta-l">비밀번호</th>
                                       <td>
                                          <div class="txt-field hs" style="width: 200px;">
                                             <input type="password" class="text" name="pw">
                                          </div>
                                       </td>
                                    </tr>
                                    <tr>
                                       <th class="ta-l">탈퇴사유</th>
                                       <td>
                                          <div class="check-list col3">
                                             <div class="row">
                                                <span class="check-item col"><span
                                                   class="form-element"><input type="checkbox"
                                                      id="reasonCd01003001" name="reasonCd[]"
                                                      class="checkbox" value="01003001"><label
                                                      for="reasonCd01003001" class="check-s">고객서비스(상담,포장
                                                         등) 불만</label></span></span><span class="check-item col"><span
                                                   class="form-element"><input type="checkbox"
                                                      id="reasonCd01003002" name="reasonCd[]"
                                                      class="checkbox" value="01003002"><label
                                                      for="reasonCd01003002" class="check-s a">배송불만</label></span></span>
                                             </div>
                                             <div class="row">
                                                <span class="check-item col"><span
                                                   class="form-element"><input type="checkbox"
                                                      id="reasonCd01003003" name="reasonCd[]"
                                                      class="checkbox" value="01003003"><label
                                                      for="reasonCd01003003" class="check-s">교환/환불/반품
                                                         불만</label></span></span><span class="check-item col"><span
                                                   class="form-element"><input type="checkbox"
                                                      id="reasonCd01003004" name="reasonCd[]"
                                                      class="checkbox" value="01003004"><label
                                                      for="reasonCd01003004" class="check-s a">방문 빈도가
                                                         낮음</label></span></span>
                                             </div>
                                             <div class="row">
                                                <span class="check-item col"><span
                                                   class="form-element"><input type="checkbox"
                                                      id="reasonCd01003005" name="reasonCd[]"
                                                      class="checkbox" value="01003005"><label
                                                      for="reasonCd01003005" class="check-s">상품가격 불만</label></span></span><span
                                                   class="check-item col"><span
                                                   class="form-element"><input type="checkbox"
                                                      id="reasonCd01003006" name="reasonCd[]"
                                                      class="checkbox" value="01003006"><label
                                                      for="reasonCd01003006" class="check-s a">개인 정보유출
                                                         우려</label></span></span>
                                             </div>
                                             <div class="row">
                                                <span class="check-item col"><span
                                                   class="form-element"><input type="checkbox"
                                                      id="reasonCd01003007" name="reasonCd[]"
                                                      class="checkbox" value="01003007"><label
                                                      for="reasonCd01003007" class="check-s">쇼핑몰의
                                                         신뢰도 불만</label></span></span>
                                             </div>
                                          </div>
                                       </td>
                                    </tr>
                                    <tr>
                                       <th class="ta-l">남기실 말씀</th>
                                       <td>
                                          <div class="textarea">
                                             <textarea cols="30" rows="5" class="w100p"
                                                name="reasonDesc"></textarea>
                                          </div>
                                       </td>
                                    </tr>
                                 </tbody>
                              </table>
                           </div>

                        </div>
                     </div>
                     <div class="btm-btn">
                        <button class="btnicon btn_l btn_wt w280 ho-prev btn-prev"
                           type="button">
                           <em>이전으로</em>
                        </button>
                        <button class="btnicon btn_l btn_bk w280 ho-secession"
                           id="btnHackOut" type="submit">
                           <em>탈퇴</em>
                        </button>
                     </div>
                  </div>
               </form>
            </div>
         </div>
         <script type="text/javascript">
            $(document)
                  .ready(
                        function() {
                           $('#formHackOut')
                                 .validate(
                                       {
                                          rules : {
                                             memPw : "required",
                                             "reasonCd[]" : "required"
                                          },
                                          messages : {
                                             memPw : "비밀번호를 입력해주세요",
                                             "reasonCd[]" : "탈퇴사유를 1개 이상 체크하여 주시기바랍니다."
                                          },
                                          submitHandler : function(
                                                form) {
                                             var params = $(form)
                                                   .serializeArray();
                                             var mileage = "￦0";
                                             if (confirm("현재 보유중인 회원혜택 : 쿠폰 "
                                                   + "0"
                                                   + "장 / 마일리지"
                                                   + mileage
                                                   + " \n탈퇴 시 보유중인  회원혜택은 모두 삭제됩니다. 정말로 탈퇴하시곘습니까?")) {
                                                form.action = '../mypage/hack_out_ps.php';
                                                form.target = 'ifrmProcess';
                                                form.submit();
                                             }
                                          }
                                       });
                        });
         </script>
      </div>

   </div>
</body>
</html>