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
   font-family: 'notokrB';
   src: url('/resources/fonts/NotoSansKR-Bold.otf') format('opentype');
}

@font-face {
   font-family: 'notokrR';
   src: url('/resources/fonts/NotoSansKR-Regular.otf') format('opentype');
}

body {
   font-family: "notokrR", Malgun Gothic, "맑은 고딕", AppleGothic, Dotum, "돋움";
   line-height: 1.4;
}

#container {
   display: block;
   height: 100%;
   min-height: 100%;
   width: 100%;
   min-width: 1000px;
   max-width: 1180px;
   vertical-align: top;
   margin: 0 auto;
   padding-top: 70px;
}

#content {
   display: block;
   width: 100%;
   margin: 0 auto;
   padding: 0 0 50px;
   vertical-align: top;
}

.member {
   width: 600px;
   margin: 0 auto;
   padding: 0 0 50px 0;
   letter-spacing: -0.5px;
}

.member h2 {
   color: #222;
   font-size: 28px;
   text-align: center;
   font-family: "notokrB";
}

.member {
   width: 600px;
   margin: 0 auto;
   padding: 50px 0 50px 0;
   letter-spacing: -0.5px;
}

.member h2 {
   color: #222;
   font-size: 28px;
   text-align: center;
   font-family: "notokrB";
}

.member .member-only {
   padding: 116px 0 0;
   background: url('../img/etc/members-only.png') no-repeat center top;
   color: #222;
   text-align: center;
}

.member .member-only strong {
   font-size: 28px;
}

.member .member-only p {
   padding: 10px 0 20px;
   font-size: 16px;
}

.member .box {
   /* margin:17px 0 0;
    padding:53px 54px 59px;
    border:1px solid #dcdcdc; */
   
}

.member .box h3 {
   padding: 0 0 3px;
   color: #222;
   font-size: 20px;
   font-weight: normal;
   text-align: center;
}

.member .box h3.tit-sns {
   padding: 90px 0 12px;
}

.member .box h3.tit-nonmember {
   padding: 90px 0 12px;
}

.member .box .login {
   overflow: hidden;
   width: 335px;
   margin: 55px auto 0;
}

.member .box .login .input-info {
   
}

.member .box .login .input-info div {
   position: relative;
   margin: 10px 0 0;
}

.member .box .login .input-info div .inp_login {
   position: relative;
   padding-left: 44px;
   border: 1px solid #8f8f8f;
}

.member .box .login .input-info div .icon {
   position: absolute;
   top: 13px;
   left: 12px;
}

.member .box .login .input-info div .text {
   width: 245px;
   height: 48px;
   line-height: 48px;
   padding: 0 0;
   text-align: center;
   border: 0;
   color: #8c8c8c;
   font-size: 16px;
}

.member .box .login .input-info div label {
   position: absolute;
   top: 9px;
   left: 13px;
   color: #8c8c8c;
   font-size: 13px;
   cursor: text;
}

.member .box .login button {
   margin: 20px 0 0;
}

.member .box .save {
   position: relative;
   min-height: 20px;
   margin: 20px 0 0;
}

.member .box .save .checkbox {
   position: absolute;
   top: 0;
   left: 0;
   z-index: -1;
}

.member .box .save label {
   display: inline-block;
   height: 20px;
   padding: 0 0 0 27px;
   background: #fff
      url('https://www.lush.co.kr/data/skin/front/howling/img/etc/check-on.png')
      no-repeat left top;
   color: #8f8f8f;
   border: 0
}

.member .box .save label:hover {
   background: #fff
      url('https://www.lush.co.kr/data/skin/front/howling/img/etc/check-on.png')
      no-repeat left top;
}

.member .box .save label.on {
   background: #fff
      url('https://www.lush.co.kr/data/skin/front/howling/img/etc/check-on.png')
      no-repeat left top;
}

.member .box .btn {
   margin: 20px 0 0;
   font-size: 0;
   text-align: center;
}

.member .box .facebook {
   display: table-cell;
   width: 470px;
   height: 62px;
   background: #516ca8;
   color: #fff;
   font-size: 15px;
   font-weight: bold;
   text-align: center;
   vertical-align: middle;
}

.member .box .facebook:hover {
   background: #344b8c;
}

.member .box .facebook img {
   margin: 0 5px 0 0;
   vertical-align: middle;
}

.member .box .result-msg {
   padding: 48px 0 53px;
   color: #444;
   font-size: 16px;
   text-align: center;
}

.member .box .result-msg strong {
   color: #3e3d3c;
   font-size: 22px;
}

.member .box .choice-join {
   padding: 17px 0 0;
   font-size: 0;
}

.member .box .guide {
   padding: 3px 0 0;
   text-align: center;
}

.member .box .find-pw {
   padding: 30px 0 0;
}

.member .box .find-pw .input-id {
   width: 280px;
   margin: 0 auto;
}

.member .box .find-pw .input-id.input-certify {
   width: auto;
   margin: 0 0 0 145px;
}

.member .box .find-pw .input-id>p {
   padding: 12px 0 0;
   color: #666;
}

.member .box .find-pw .input-id>p strong {
   color: #3e3d3c;
}

.member .box .find-pw .input-id>p a {
   margin: 0 0 0 10px;
   color: #3e3d3c;
   text-decoration: underline;
}

.member.find-pw-page .box {
   padding-top: 42px;
}

.member.find-pw-page .box .btn {
   border-top: none;
   margin: 20px 0 0;
   padding: 0;
}

.member.find-pw-page .txt-field {
   height: 36px;
}

.member.find-pw-page .txt-field .text {
   height: 34px;
   color: #8c8c8c;
   line-height: 34px;
}

.member .certify {
   margin: 16px 0 0;
   /*  border-top:1px solid #dbdbdb; */
}

.member .certify .bx_form {
   margin: 10px 0 0;
   padding: 20px;
   border: 1px solid #dbdbdb;
}

.member .certify .form-element {
   
}

.member .certify .form-element label {
   color: #444;
}

.member .certify .form-element strong {
   color: #3e3d3c;
}

.member .certify .form-element p {
   padding: 10px 0 0 27px;
   color: #888;
}

.member .certify .form-element span {
   color: #888;
}

.member .new-pw {
   padding: 20px 0 0 140px;
}

.member .new-pw .txt-field {
   margin: 11px 0 0;
}

.member .new-pw p {
   padding: 8px 0 3px;
   color: #3e3d3c;
}

.member .pw-complete {
   padding: 36px 0;
}

.member .pw-complete p {
   color: #222;
   font-size: 18px;
   text-align: center;
}

.member.dormancy {
   
}

.member.dormancy .msg {
   color: #222;
   font-size: 20px;
}

.member.dormancy .msg.no-info {
   margin: 30px 0 0;
   padding: 50px 0 30px;
   border-top: 1px solid #dbdbdb;
   text-align: center;
}

.member.dormancy .msg span {
   color: #3e3d3c;
}

.member.dormancy .date {
   overflow: hidden;
   margin: 26px 0 0;
   padding: 20px;
   background: #f4f4f4;
}

.member.dormancy .date li {
   float: left;
   margin: 0 13px 0 0;
   color: #8c8c8c;
   line-height: 22px;
}

.member.dormancy .date li.last {
   padding: 0 0 0 12px;
   background: url('../img/etc/bar-1x10-d4.png') no-repeat left 9px;
}

.member.dormancy .date li strong {
   color: #444;
}

.member.dormancy .date li strong.dormancy-start {
   color: #3e3d3c;
}

.member.dormancy .guide {
   padding: 15px 0 0;
   letter-spacing: -1px;
   line-height: 22px;
}

.member.dormancy .guide strong {
   display: block;
   padding: 10px 0 0;
}

.member.dormancy .btn {
   margin: 30px 0 0;
   padding: 40px 0 0;
}

.member.dormancy .btn .skinbtn {
   font-weight: normal;
}

.member.dormancy .release {
   padding-top: 80px;
   padding-bottom: 87px;
}

.member.dormancy .release .msg {
   text-align: center;
}

.member.dormancy .release .btn {
   padding: 0;
   border: none;
}

.member.dormancy .cite-input {
   margin: 30px 0 0;
   padding: 25px 0 0 60px;
   border-top: 1px solid #dbdbdb;
}

.member.dormancy .cite-input .tip {
   padding: 0 0 13px;
   letter-spacing: -1px;
}

.member.dormancy .cite-input strong {
   margin: 0 0 0 10px;
   color: #444;
   font-size: 13px;
}

.member.dormancy .cite-input .txt-field {
   margin: 0 4px 0 0;
   vertical-align: top;
}

.member.dormancy .cite-input .caution {
   margin: 10px 0 0;
   color: #3e3d3c;
}

.member.dormancy .cite-input .chosen-container {
   margin: 0;
}

.member.dormancy .cite-input .chosen-container .chosen-single {
   height: 35px;
   line-height: 34px;
}

.member.dormancy .cite-input>div {
   margin: 10px 0 0;
}

.member.dormancy .certify {
   margin: 30px 0 0;
   padding: 25px 0 0;
   font-size: 13px;
}

.member.dormancy .certify p {
   color: #444;
}

.member.dormancy .box .find-pw {
   margin: 30px 0 0;
   padding: 25px 0 0;
}

.member.dormancy .box .find-pw>p {
   padding: 0 0 20px;
   color: #444;
   font-size: 13px;
   letter-spacing: -1px;
   text-align: center;
}

.member #tabs {
   
}

.member #tabs ul {
   padding: 55px 0 0;
   text-align: center;
}

.member #tabs li {
   display: inline-block;
   font-size: 18px;
   padding: 0 40px;
}

.member #tabs li a {
   display: inline-block;
   line-height: 20px;
   color: #8f8f8f;
   border-bottom: 1px solid #8f8f8f;
}

.member #tabs li a.selected {
   color: #000;
   border-bottom: 1px solid #000;
}

.member .skinbtn.point2.l-login {
   width: 100%;
   height: 55px;
   line-height: 55px;
}

.member .box .login button {
   margin: 20px 0 0;
}

.member .skinbtn.point1.l-confirm, .member .skinbtn.point2 {
   background: #000;
   border: 1px solid #000;
   color: #fff;
}

.login_menu {
   text-align: center;
}

.member .box .login button {
   margin: 20px 0 0;
}

.member .box .login .login_menu button {
   margin-left: 5px;
   margin-right: 5px;
}

.login_menu .skinbtn {
   width: auto;
   height: auto;
   color: #8f8f8f;
   font-size: 13px;
   font-family: 'notokrR';
}

.skinbtn {
   display: inline-block;
   padding: 0;
   text-align: center;
   vertical-align: top;
   box-sizing: border-box;
   cursor: pointer;
   border: 0px solid #000000;
   border-radius: 0;
}

button {
   background: none;
   outline: none;
}

button em {
   font-family: "notokrR";
}

.skinbtn * {
   font-size: 100%;
}

.skinbtn.point2.l-login, .skinbtn.point2.fi-id {
   font-size: 16px;
   font-weight: bold;
}

.login_menu .skinbtn+.skinbtn {
   position: relative;
   margin-left: 8px;
   padding-left: 8px;
   border-left: 1px black;
}

.member .box .login .login_menu button {
   margin-left: 5px;
   margin-right: 5px;
}

.login_menu .skinbtn+.skinbtn:after {
   position: absolute;
   top: 50%;
   left: -2px;
   display: block;
   width: 1px;
   height: 10px;
   margin-top: -5px;
   background: #8f8f8f;
   content: '';
}
</style>
</head>
<body>

   <c:import url="../main/mainHeader.jsp"></c:import>

   <div id="container" class="">
      <!-- 본문 시작 : start -->
      <div id="content">

         <div class="member">
            <h2>로그인</h2>

            <div class="box">
               <div id="tabs">
                  <div id="ntab01">
                     <ul>
                        <li><a href="javascript:tab_view(1)" class="selected">회원</a></li>
                        <li><a href="javascript:tab_view(2)">비회원</a></li>
                     </ul>
                     <form id="formLogin" method="post" action="./memberLogin"
                        novalidate="novalidate">
                        <input type="hidden" id="mode" name="mode" value="login">
                        <input type="hidden" id="returnUrl" name="returnUrl"
                           value="https%3A%2F%2Fwww.lush.co.kr%2Fmain%2Findex.php">
                        <div class="login">
                           <div class="input-info">
                              <div>
                                 <div class="inp_login">
                                    <span class="icon"><img
                                       src="https://rlzr1ac8g.toastcdn.net/data/skin/front/howling/img/etc/icon_id.png"
                                       alt=""></span> <input type="text" class="text" id="loginId"
                                       name="id" placeholder="아이디" required="true"
                                       aria-required="true">
                                 </div>
                              </div>
                              <div>
                                 <div class="inp_login">
                                    <span class="icon"><img
                                       src="https://rlzr1ac8g.toastcdn.net/data/skin/front/howling/img/etc/icon_password.png"
                                       alt=""></span> <input type="password" class="text"
                                       id="loginPwd" name="pw" placeholder="비밀번호" required="true"
                                       aria-required="true">
                                 </div>
                              </div>
                           </div>
                           <div class="save">
                              <input type="checkbox" class="checkbox" id="saveId"
                                 name="saveId" value="y" checked="true"> <label
                                 for="saveId" class="on">아이디 저장</label>
                           </div>
                           <button type="submit" class="skinbtn point2 l-login">
                              <em>로그인</em>
                           </button>
                           <div class="login_menu">
                              <button type="button" class="skinbtn " id="btnJoinMember">
                                 <em>회원가입</em>
                              </button>
                              <button type="button" class="skinbtn " id="btnFindId">
                                 <em>아이디 찾기</em>
                              </button>
                              <button type="button" class="skinbtn " id="btnFindPwd">
                                 <em>비밀번호 찾기</em>
                              </button>
                           </div>
                        </div>


                        <!-- <p class="dn caution-msg1">아이디, 비밀번호가 일치하지 않습니다. 다시 입력해 주세요.</p> -->
                        <div class="m2"></div>
                     </form>
                  </div>
                  <div id="ntab02" style="display: none;">
                     <ul>
                        <li><a href="javascript:tab_view(1)">회원</a></li>
                        <li><a href="javascript:tab_view(2)" class="selected">비회원</a></li>
                     </ul>
                     <form id="formOrderLogin" action="../member/member_ps.php"
                        method="post" novalidate="novalidate">
                        <fieldset>
                           <legend>비회원 주문조회 하기</legend>
                           <input type="hidden" name="mode" value="guestOrder"> <input
                              type="hidden" name="returnUrl"
                              value="../mypage/order_view.php">

                           <!-- <h3 class="tit-nonmember">비회원 주문조회</h3> -->

                           <div class="login">
                              <div class="input-info">
                                 <div>
                                    <div class="inp_login">
                                       <span class="icon"><img
                                          src="https://rlzr1ac8g.toastcdn.net/data/skin/front/howling/img/etc/icon_id.png"
                                          alt=""></span> <input type="text" name="orderNm"
                                          class="text" placeholder="주문자명">
                                    </div>
                                 </div>
                                 <div>
                                    <div class="inp_login">
                                       <span class="icon"><img
                                          src="https://rlzr1ac8g.toastcdn.net/data/skin/front/howling/img/etc/icon_password.png"
                                          alt=""></span> <input type="text" name="orderNo"
                                          class="text" placeholder="주문번호">
                                    </div>
                                 </div>
                              </div>
                              <button type="submit" class="skinbtn point1 l-confirm">
                                 <em>확인</em>
                              </button>
                           </div>
                           <p class="js-caution  ">주문번호와 비밀번호를 잊으신 경우, 고객센터로 문의하여 주시기
                              바랍니다.</p>
                        </fieldset>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

   <c:import url="../main/mainFooter.jsp"></c:import>

   <script type="text/javascript">
      $("#btnJoinMember").click(function() {
         window.location.href="/member/joinCheck";
      });
      
      $("#btnFindId").click(function() {
         window.location.href="/member/find_id";
      });
      
      $("#btnFindPwd").click(function() {
         window.location.href="/member/find_pw";
      });         
      
   </script>
</body>
</html>