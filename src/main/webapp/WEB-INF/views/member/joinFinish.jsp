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
   margin: 0 auto;
   table-layout: fixed;
   position: relative;
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
    background: url("https://www.lush.co.kr/data/skin/front/howling/img/etc/join-step.png") no-repeat right 2px;
    color: #a9a9a9;
    font-size: 16px;
}

.step-top div span.end {
    margin: 0;
    padding: 0;
    background: none;
}

.join-complete02 {
    width: 750px;
    margin: 0 auto 0;
    display: table;
    letter-spacing: -0.5px;
}

.join-complete02 > div {
    display: table-cell;
    vertical-align: middle;
    padding-left: 370px;
    height: 306px;
    background: url("https://www.lush.co.kr/data/skin/front/howling/img/etc/join_complate.jpg") no-repeat;
}

.join-complete02 .txt1 {
    color: #000;
    font-size: 28px;
    font-family: "notokrB";
}

.join-complete02 .txt2 {
    padding: 35px 0 20px;
    line-height: 20px;
    font-size: 18px;
}

.join-complete02 .txt3 {
    line-height: 24px;
    font-size: 16px;
    color: #8f8f8f;
}

.join .btn {
    padding: 70px 0; 
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
                  <span>약관동의</span> <span>정보입력</span> <span class="this end"
                     title="현재페이지">가입완료</span>
               </div>
            </div>
            <div class="join-complete02">
               <div>
                  <p class="txt1">환영합니다.</p>
                  <p class="txt2">LUSH 회원 가입을 축하드립니다.</p>
                  <p class="txt3">
                     로그인 후 러쉬의 다양한 서비스를 <br>이용하실 수 있습니다.
                  </p>
               </div>
            </div>
            <div class="btn">
               <!-- <a href="#" class="skinbtn default jo-home" id="btnHome"><em>홈으로</em></a> -->
               <a href="./member/memberLogin" class="btnicon btn_bk btn_l w280 jo-login"
                  id="btnLogin"><em>로그인 하기</em></a>
            </div>

         </div>
      </div>
      <!-- 본문 끝 : end -->

   </div>
   <c:import url="../main/mainFooter.jsp"></c:import>
</body>
</html>