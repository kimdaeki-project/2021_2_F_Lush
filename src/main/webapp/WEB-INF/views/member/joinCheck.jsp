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

body {
   font-family: "notokrR", Malgun Gothic, "맑은 고딕", AppleGothic, Dotum, "돋움",
      sans-serif;
   font-size: 14px;
   line-height: 1.4;
   letter-spacing: -0.5px;
}

#container {
   display: block;
   height: 100%;
   width: 100%;
   max-width: 1217px;
   min-height: 100%;
   padding-top: 100px;
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

.member {
   width: 600px;
   margin: 0 auto;
   padding: 50px 0 50px 0;
   letter-spacing: -0.5px;
}

.member .box {
   width: 400px;
   margin-left: auto;
   margin-right: auto;
   margin-top: 40px;
}

.sns-login#btnJoin {
   margin-bottom: 10px;
   border: 1px solid #000;
   background: #000;
   color: #fff;
   height: 55px;
   line-height: 53px;
   font-weight: normal;
   font-family: "notokrR", Malgun Gothic, "맑은 고딕", AppleGothic, Dotum, "돋움",
      sans-serif;
}

.sns-login.normal {
   position: relative;
   margin-top: 0;
   font-size: 16px;
}

.sns-login.normal {
   position: relative;
   margin-top: 0;
   font-size: 16px;
}

.sns-login {
   margin: 12 px 0 0;
   transition: all 300ms;
}

.sns-login {
   display: block;
   text-align: center;
}

.sns-login {
   margin: 12 px 0 0;
   font-size: 15px;
   line-height: 53px;
   height: 55px;
   background: #fff;
   border: 1px solid #8f8f8f;
   color: #333;
   font-weight: normal;
   transition: all 300ms;
   font-family: "notokrR", Malgun Gothic, "맑은 고딕", AppleGothic, Dotum, "돋움",
      sans-serif;
}

.sns-login>img {
   vertical-align: sub;
}

.caution-msg2 {
   min-height: 17px;
   margin: 15px 0 0;
   padding: 0 0 0 19px;
   color: #999;
   line-height: 20px;
   font-family: "notokrR", Malgun Gothic, "맑은 고딕", AppleGothic, Dotum, "돋움",
      sans-serif;
   font-size: 14px;
   line-height: 1.4;
   letter-spacing: -0.5px;
}

.ta-c {
   text-align: center;
}

.join .login-msg {
   padding: 40px 0 0;
   color: #666;
   font-size: 12px;
   font-family: "notokrR", Malgun Gothic, "맑은 고딕", AppleGothic, Dotum, "돋움",
      sans-serif;
}

.join .login-msg a {
    color: #3e3d3c;
    text-decoration: underline;
}
</style>
</head>
<body>

   <c:import url="../main/mainHeader.jsp"></c:import>

   <div id="container" class="">

      <div id="content">
         <!-- <style>
.sns-login#btnJoin {
   margin-bottom: 10px;
   border: 1px solid #000;
   background: #000;
   color: #fff;
   height: 55px;
   line-height: 53px;
   font-weight: normal;
}
</style> -->
         <div class="join">

            <div class="step-top" style="padding-bottom: 0;">
               <h2>JOIN US</h2>
            </div>
            <div class="member">
               <div class="box"
                  style="width: 400px; margin-left: auto; margin-right: auto; margin-top: 40px;">
                  <a class="sns-login normal" href="./memberJoin" id="btnJoin">쇼핑몰 회원가입 </a> <a
                     class="sns-login na js-btn-naver-login" href="#"
                     data-naver-type="join_method"> <img
                     src="https://rlzr1ac8g.toastcdn.net/data/skin/front/howling/img/etc/login-naver.png"
                     alt="네이버" style="width: 75px; height: auto; margin-top: -3px;">
                     아이디 회원가입
                  </a>
                  <p class="caution-msg2"
                     style="text-align: center; background: none;">
                     SNS계정을 연동하여 빠르고 쉽고 안전하게 회원가입 할 수 있습니다. <br>이 과정에서 고객님의 데이터는
                     철저하게 보호됩니다.
                  </p>
               </div>
               <div class="ta-c">
                  <p class="login-msg">
                     이미 쇼핑몰 회원이세요? <a href="./memberLogin" id="btnLoginMember">로그인</a>
                  </p>
               </div>
            </div>
         </div>   
         <!-- <script type="text/javascript">
            $(document)
                  .ready(
                        function() {
                           $('#btnJoin')
                                 .click(
                                       function() {
                                          location.href = '../member/join_agreement.php?memberFl=personal';
                                       });
                           $('#btnLoginMember')
                                 .click(
                                       function() {
                                          window.location.href = '../member/login.php';
                                       });
                        });
         </script> -->
      </div>

   </div>
   <c:import url="../main/mainFooter.jsp"></c:import>

</body>
</html>