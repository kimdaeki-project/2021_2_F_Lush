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
   width: 100%;
   height: 100%;
   min-height: 100%;
   padding-top: 100px;
   display: block;
   max-width: 1180px;
   vertical-align: top;
   table-layout: fixed;
   position: relative;
   margin: 0 auto;
}

#container #content {
   width: 100%; screen and (max-width : 1217px) display : block;
   margin: 50px auto;
   padding: 0 0 50px;
   vertical-align: top;
}

.join {
   width: 1080px;
   margin: 0 auto;
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

.step-top div span {
   margin: 0 12px 0 0;
   padding: 0 27px 0 0;
   background:
      url("https://lush.co.kr/data/skin/front/howling/img/etc/join-step.png")
      no-repeat right 2px;
   color: #a9a9a9;
   font-size: 16px;
}

.step-top div span.this {
   color: #333;
}

.step-top div span.end {
   margin: 0;
   padding: 0;
   background: none;
}

.join .join-form {
   
}

html, body, form {
   height: 100%;
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

.join-form .tit {
   overflow: hidden;
   padding: 0 0 15px;
}

.join-form .tit h3 {
   float: left;
   color: #000;
   font-size: 28px;
   font-weight: normal;
   font-family: "notokrB";
}

.join-form .tit p {
   float: right;
   margin: 17px 0 0;
   padding: 0 0 0 12px;
   background: #fff
      url("https://lush.co.kr/data/skin/front/howling/img/etc/blet_squrered.png")
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

.table1>table {
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

.join .join-form .table1.view_table>table>tbody>tr>th {
   padding: 10px 0 10px 23px;
   line-height: 40px;
   color: #333;
   font-size: 14px;
   font-weight: normal;
   font-family: "notokrR", Malgun Gothic, "맑은 고딕", AppleGothic, Dotum, "돋움",
      sans-serif;
}

.join-form .table1.view_table table tbody th.required {
   background: #fff
      url("https://lush.co.kr/data/skin/front/howling/img/etc/blet_squrered.png")
      no-repeat 8px 27px;
}

.join .join-form .table1>table>tbody>tr>th {
   vertical-align: top;
}

.ta-l {
   text-align: left;
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

.join-form .table1 table tbody td .email .txt-field, .order-page .how-to-pay .method .receipt .wu .email .txt-field,
   .cash-receipt-request-layer .email .txt-field {
   float: left;
   width: 250px;
}

select {
   outline: none;
   vertical-align: top;
   color: #717171;
}

.join-form .table1 table tbody td .email .choice-select, .order-page .how-to-pay .method .receipt .wu .choice-select,
   .cash-receipt-request-layer .choice-select {
   float: left;
   margin: 0 0 0 10px;
}

.chosen-container-single .chosen-single {
   position: relative;
   display: block;
   overflow: hidden;
   padding: 0 0 0 8px;
   color: #333;
   text-decoration: none;
   white-space: nowrap;
}

.chosen-container-single .chosen-sch {
   height: 40px;
   line-height: 38px;
   margin: 0 !important;
   background: none;
   border: 1px solid #ccc;
}

.chosen-container-single .chosen-single span {
   display: block;
   overflow: hidden;
   margin-right: 26px;
   text-overflow: ellipsis;
   white-space: nowrap;
}

.chosen-container * {
   box-sizing: border-box;
}

.chosen-container-single .chosen-single div {
   position: absolute;
   top: 0;
   right: 0;
   display: block;
   width: 18px;
   height: 100%;
}

.chosen-container-single .chosen-single div b {
   background:
      url("https://lush.co.kr/data/skin/front/howling/img/etc/select-arrow-down-11x7.png")
      no-repeat left 50%;
}

.chosen-container-single .chosen-single div b {
   display: block;
   width: 100%;
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
   background-clip: padding-box;
}

.chosen-container .chosen-drop {
   border: 1px solid #ccc;
   box-sizing: border-box;
   box-shadow: none;
   position: absolute;
   top: 100%;
   left: -9999px;
   z-index: 1010;
   width: 100%;
   box-shadow: none;
   position: absolute;
   top: 100%;
   left: -9999px;
   z-index: 1010;
}

.chosen-container-single.chosen-container-single-nosearch .chosen-search
   {
   position: absolute;
   left: -9999px;
}

.chosen-container-single .chosen-search {
   position: relative;
   z-index: 1010;
   margin: 0;
   padding: 3px 4px;
   white-space: nowrap;
}

.chosen-container-single .chosen-search input[type="text"] {
   border: 1px solid #ccc;
}

.chosen-container .chosen-results {
   margin: 0;
   padding: 0;
}

.chosen-container .chosen-results {
   color: #444;
   position: relative;
   overflow-x: hidden;
   overflow-y: auto;
   margin: 0;
   padding: 0;
   max-height: 240px;
}

ul, li {
   list-style: none;
}

.join-form .table1 table tbody td div.form-element {
   display: inline-block;
   vertical-align: top;
   margin: 10px 0 0 20px;
}

.form-element {
   position: relative;
}

.form-element input {
   position: absolute;
   top: 2px;
   left: 1px;
   z-index: -1;
}

input.checkbox {
   width: 13px;
   height: 13px;
   vertical-align: top;
}

.form-element label {
   position: relative;
   top: 0;
   left: 0;
   display: inline-block;
   min-width: 20px;
   min-height: 20px;
   padding: 0 0 0 27px;
   background: #fff
      url("https://lush.co.kr/data/skin/front/howling/img/etc/check-off.png")
      no-repeat 1px top;
   font-size: 14px;
   font-weight: normal;
   font-family: "notokrR", Malgun Gothic, "맑은 고딕", AppleGothic, Dotum, "돋움",
      sans-serif;
}

.join .join-form .table1.view_table>table>tbody>tr>td {
   padding: 10px 0;
}

label {
   cursor: pointer;
   vertical-align: top;
}

.form-element label.on {
   background: #fff
      url("https://lush.co.kr/data/skin/front/howling/img/etc/check-on.png")
      no-repeat 1px top;
}

.form-element label:hover {
   background: #fff
      url("https://lush.co.kr/data/skin/front/howling/img/etc/check-ov.png")
      no-repeat 1px top;
}

.join-form .table1 table tbody td .post {
   overflow: hidden;
}

.join-form .table1 table tbody td .post .txt-field {
   float: left;
   position: relative;
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

.join .join-form .table1.view_table table tbody td .txt-field.address {
   display: inline-block;
   width: 418px;
}

.join-form .table1 table tbody td .address {
   margin: 8px 0;
}

.join-form .btn {
   padding: 40px 0 0;
}

.join .btn {
   text-align: center;
}

.btn_l.w280 {
   margin: 0 10px;
}

.w280 {
   width: 280px;
}

.btn_bk {
   border: 1px solid #000;
   background: #000;
   color: #fff;
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

button {
   font-family: "notokrR";
}
</style>
</head>
<body>
   <c:import url="../main/mainHeader.jsp"></c:import>
   <div id="container" class="">

      <!-- 본문 시작 : start -->
      <div id="content">
         <div class="join">
            <div class="step-top">
               <h2>JOIN US</h2>
               <div>
                  <span> 약관동의 </span> <span class="this"> 정보입력 </span> <span
                     class="end"> 가입완료 </span>
               </div>
            </div>
            <div class="join-form">
               <form id="formJoin" name="formJoin" action="./memberJoin2"
                  method="post" novalidate="novalidate">
                  <legend>회원가입폼</legend>
                  <div class="tit">
                     <h3>기본정보</h3>

                     <p>표시는 반드시 입력하셔야 하는 항목입니다.</p>
                  </div>
                  <!-- 회원가입/정보 기본정보 -->
                  <div class="table1 view_table">
                     <table class="">
                        <colgroup>
                           <col style="width: 155px;">
                           <col>
                        </colgroup>
                        <tbody>
                           <tr>
                              <th class="ta-l required" aria-required="true">아이디</th>
                              <td>
                                 <div class="txt-field"
                                    style="border: 1px solid rgb(204, 204, 204);">
                                    <input type="text" class="text" data-pattern="gdMemberId"
                                       name="id" id="memId">
                                 </div>
                              </td>
                           </tr>
                           <tr class="">
                              <th class="ta-l required" aria-required="true">비밀번호</th>
                              <td>
                                 <div class="txt-field">
                                    <input type="password" class="text" id="newPassword"
                                       name="pw" autocomplete="off" placeholder="">
                                 </div>
                              </td>
                           </tr>
                           <tr class="">
                              <th class="ta-l required" aria-required="true">비밀번호 확인</th>
                              <td>
                                 <div class="txt-field">
                                    <input type="password" class="text check-id" name="pwCheck"
                                       autocomplete="off">
                                 </div>
                              </td>
                           </tr>
                           <tr>
                              <th class="ta-l required" aria-required="true">이름</th>
                              <td>
                                 <div class="txt-field">
                                    <input type="text" class="text" name="name"
                                       data-pattern="gdEngKor" maxlength="30">
                                 </div>
                              </td>
                           </tr>
                           <tr>
                              <th class="ta-l">닉네임</th>
                              <td>
                                 <div class="txt-field">
                                    <input type="text" class="text" name="nickName"
                                       maxlength="20" value="">
                                 </div>
                              </td>
                           </tr>
                           <tr>
                              <th class="ta-l required">이메일</th>
                              <td>
                                 <div class="email">
                                    <div class="txt-field">
                                       <input type="text" class="text" name="email" id="email"
                                          value="">
                                    </div>
                                    <div class="choice-select">
                                       <select name="emailDomain" id="emailDomain" class="tune"
                                          style="width: 120px; display: none;" tabindex="-1">
                                          <option value="self">직접입력</option>
                                          <option value="naver.com">naver.com</option>
                                          <option value="hanmail.net">hanmail.net</option>
                                          <option value="daum.net">daum.net</option>
                                          <option value="nate.com">nate.com</option>
                                          <option value="hotmail.com">hotmail.com</option>
                                          <option value="gmail.com">gmail.com</option>
                                          <option value="icloud.com">icloud.com</option>
                                       </select>
                                       <div
                                          class="chosen-container chosen-container-single chosen-container-single-nosearch"
                                          style="width: 120px;" title="" id="emailDomain_chosen">
                                          <a class="chosen-single chosen-sch" tabindex="-1"><span>직접입력</span>
                                             <div>
                                                <b></b>
                                             </div></a>
                                          <div class="chosen-drop">
                                             <div class="chosen-search">
                                                <input type="text" autocomplete="off" readonly=""
                                                   tabindex="-1">
                                             </div>
                                             <ul class="chosen-results"></ul>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="form-element">
                                    <input type="checkbox" class="checkbox" id="maillingFl"
                                       name="maillingFl" value="y"> <label
                                       for="maillingFl" class="">정보/이벤트 메일 수신에 동의합니다.</label>
                                 </div>
                              </td>
                           </tr>
                           <tr>
                              <th class="ta-l required" aria-required="true">휴대폰번호</th>
                              <td>
                                 <div class="txt-field" style="display: inline-block;">
                                    <input type="text" id="cellPhone" name="phone" class="text"
                                       maxlength="12" placeholder="- 없이 입력하세요."
                                       data-pattern="gdNum" value="">
                                 </div>
                                 <div class="form-element">
                                    <input type="checkbox" class="checkbox" id="smsFl"
                                       name="smsFl" value="y"> <label for="smsFl" class="">정보/이벤트
                                       SMS 수신에 동의합니다.</label>
                                 </div>
                              </td>
                           </tr>
                           <tr>
                              <th class="ta-l">주소</th>
                              <td>
                                 <div class="post">
                                    <div class="txt-field" style="width: 250px;">
                                       <input type="text" class="text" id="address1" name="address"
                                          readonly="readonly" value=""> <input type="hidden"
                                          name="zipcode" value="">
                                    </div>
                                    <button class="btnicon btn_s btn_wt w120 post-search"
                                       type="button" id="btnPostcode" onclick="execPostCode();">
                                       <em>우편번호검색</em>
                                    </button>
                                 </div>
                                 <div class="txt-field address">
                                    <input type="text" class="text" id="address2" name="address"
                                       readonly="readonly" value="" >
                                 </div>
                                 <div class="txt-field address">
                                    <input type="text" class="text" id="address3" name="address" value="">
                                 </div>
                              </td>
                           </tr>
                        </tbody>
                     </table>
                  </div>
                  <style>
#currentPassword-error {
   padding-left: 124px;
}
</style>
                  <!-- 회원가입/정보 기본정보 -->
                  <!-- 회원가입/정보 사업자정보 -->
                  <!-- 회원가입/정보 사업자정보 -->
                  <!-- 회원가입/정보 부가정보 -->
                  <!-- 회원가입/정보 부가정보 -->
                  </fieldset>
                  <div class="btn">
                     <!-- <button type="button" class="skinbtn point1 j-cancel" id="btnCancel"><em>취소</em></button> -->
                     <button type="submit"
                        class="btnicon btn_bk btn_l w280 j-join btn-join" value="회원가입">
                        <em>회원가입</em>
                     </button>
                  </div>
               </form>
            </div>
         </div>
      </div>
      <!-- 본문 끝 : end -->

   </div>
   <%-- <c:import url="../main/mainFooter.jsp"></c:import> --%>
   <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js">   </script>   
   <script>
   function execPostCode() {
         new daum.Postcode({
            oncomplete : function(data) {
               // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

               // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
               // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
               var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
               var extraRoadAddr = ''; // 도로명 조합형 주소 변수

               // 법정동명이 있을 경우 추가한다. (법정리는 제외)
               // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
               if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                  extraRoadAddr += data.bname;
               }
               // 건물명이 있고, 공동주택일 경우 추가한다.
               if (data.buildingName !== '' && data.apartment === 'Y') {
                  extraRoadAddr += (extraRoadAddr !== '' ? ', '
                        + data.buildingName : data.buildingName);
               }
               // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
               if (extraRoadAddr !== '') {
                  extraRoadAddr = ' (' + extraRoadAddr + ')';
               }
               // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
               if (fullRoadAddr !== '') {
                  fullRoadAddr += extraRoadAddr;
               }

               // 우편번호와 주소 정보를 해당 필드에 넣는다.
               console.log(data.zonecode);
               console.log(fullRoadAddr);

               $("[name=address1]").val(data.zonecode);
               $("[name=address2]").val(fullRoadAddr);

               /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용 */
               document.getElementById('address1').value = data.zonecode;               
               document.getElementById('address2').value = fullRoadAddr; 
            }
         }).open();
      }   
   </script>
</body>
</html>