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
   display: block;
   vertical-align: top;
   table-layout: fixed;
   position: relative;
   margin: 0 auto;
   width: 100%;
   height: 100%;
   min-height: 100%;
   padding-top: 100px;
   max-width: 1217px;
}

#container #content {
   width: 100%;
   max-width: 1217px;
   display: block;
   margin: 50px auto;
   padding: 0 0 50px;
   vertical-align: top;
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

.member .box .result-msg {
    padding: 48px 0 53px;
    color: #444;
    font-size: 16px;
    text-align: center;
}

.member .box .result-msg strong {
    color: #3e3d3c;
    font-size: 22px;
    font-family: "notokrR",Malgun Gothic,"맑은 고딕",AppleGothic,Dotum,"돋움",sans-serif;
    font-weight: bold;
}

.member .box .btn {
    margin: 20px 0 0;
    font-size: 0;
    text-align: center;
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

.login_menu .skinbtn + .skinbtn {
    position: relative;
    margin-left: 8px;
    padding-left: 8px;
}
.login_menu .skinbtn {
    width: auto;
    height: auto;
    color: #8f8f8f;
    font-size: 13px;
    font-family: 'notokrR';
}

.skinbtn + .skinbtn {
    margin: 0 0 0 10px;
}

button {    
    background: none;    
    outline: none;
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
            <h2>아이디찾기</h2>
               <div class="box">
                  <div id="divFindId">
                     <p class="result-msg">
                        ${memberVO.name} 회원님의 아이디는 <br>
                        <strong>${memberVO.id}</strong> 입니다
                     </p>
                  </div>
                  <div class="btn login_menu">
                     <button class="skinbtn fi-pw find-id btn-find-password">
                        <em>비밀번호 찾기</em>
                     </button>
                     <button class="skinbtn fi-login find-id btn-login">
                        <em>로그인하기</em>
                     </button>
                  </div>
               </div>
         </div>



      </div>
      <!-- 본문 끝 : end -->

   </div>
   <script type="text/javascript">
      $(".btn-login").click(function() {
         window.location.href="/member/memberLogin";
      });
            
      
      $(".btn-find-password").click(function() {
         window.location.href="/member/find_pw";
      });         
      
   </script>
</body>
</html>