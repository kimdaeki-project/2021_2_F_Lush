<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@font-face {
   font-family: 'notokrB';
   src: url('/resources/fonts/NotoSansKR-Bold.otf') format('opentype');
}

@font-face {
   font-family: 'notokrL';
   src: url('/resources/fonts/NotoSansKR-Light.otf') format('opentype');
}

@font-face {
   font-family: 'notokrR';
   src: url('/resources/fonts/NotoSansKR-Regular.otf') format('opentype');
}

html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
   blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
   em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
   b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
   table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
   details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
   output, ruby, section, summary, time, mark, audio, video {
   margin: 0;
   padding: 0;
   border: 0;
   font-size: 100%;
   font: inherit;
   vertical-align: baseline;
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
   max-width: 100%;
   display: block;
   width: 100%;
   vertical-align: top;
   table-layout: fixed;
   position: relative;
   padding-top: 100px;
}

#container #content {
   display: block;
   width: 100%;
   margin: 50px auto;
   margin-top: 0;
   padding: 0 0 50px;
   vertical-align: top;
}
</style>
</head>
<body>
   <c:import url="../main/mainHeader.jsp"></c:import>
   <div id="container" class="">
      <div id="content">
<style>
#container {
   max-width: 100%;
}

#container #content {
   margin-top: 0;
}

.brand-visual {
   height: 500px;
   text-align: center;
   color: #fff;
   background: url('https://www.lush.co.kr/data/skin/front/howling/img/etc/brand_bg03.jpg')
      no-repeat 50% 0;
}

.brand-visual .b-txt01 {
   padding-top: 179px;
   text-align: center;
   color: #fff;
   font-size: 68px;
   font-family: 'notokrB';
   letter-spacing: 0.5em;
   text-indent: 0.5em;
   color: #fff;
}

.brand-visual .b-txt02 {
   margin-top: 10px;
   font-size: 26px;
   font-family: "notokrL";
   letter-spacing: 0.2em;
   text-indent: 0.2em;
}

.company_content {
   width: 1180px;
   margin: 0 auto;
}

.company_content dl {
   padding-top: 142px;
   width: 845px;
   margin: 0 auto;
   overflow: hidden;
   color: #000;
}

.company_content dl dt {
   padding-bottom: 20px;
   text-align: center;
   font-size: 20px;
}

.company_content dl dt span {
   display: block;
   padding-top: 18px;
}

.company_content dl dd {
   float: left;
   width: 355px;
   font-size: 18px;
   line-height: 30px;
   font-weight: normal;
   letter-spacing: -0.3px;
}

.company_content dl dd.dd01 {
   padding-left: 27px;
}

.company_content dl dd.dd02 {
   float: right;
   padding-right: 12px;
}

.company_content dl dd p {
   padding-top: 67px;
}

.company_content dl dd p:first-child {
   padding-top: 50px;
}

.company_content dl dd b {
   font-family: "notokrB";
   font-weight: normal;
}
</style>
         <div class="brand-visual">
            <h2 class="b-txt01">이념과 가치</h2>
            <p class="b-txt02">러쉬가 믿고 지켜야할 가치</p>
         </div>
         <div class="company_content">
            <dl class="company_bx03">
               <dt>
                  <img src="https://www.lush.co.kr/data/skin/front/howling/img/etc/lush_life.jpg" alt=""><span>우리는
                     믿습니다...</span>
               </dt>

               <dd class="dd01">
                  <p>
                     <b>신선한 과일과 채소, 최상의 에센셜 오일,</b><br>그리고 <b>안전한 원료</b>를 사용하여
                     효과적인 제품을<br>만들 수 있다는 것을 믿습니다.
                  </p>

                  <p>
                     우리는 <b>최소한의 포장과 보존제를 사용하여</b><br>
                     <b>직접 손으로 제품을 만들고,</b><br>베지테리언 원료만을 사용하며, <br>제품이 만들어진
                     시기를 표시하여<br>고객에게 알리는 것이 옳다고 믿습니다.
                  </p>
                  <p>
                     우리는 은은한 촛불 아래서 즐기는 입욕 시간,<br>사랑하는 사람과 함께하는 샤워와 마사지<br>그리고
                     세상을 아름다운 향기로<br>가득 채울 수 있다는 것을 믿으며,<br>더불어 <b>실수를
                        하거나, 모든 것을 잃고서도</b><br>
                     <b>다시 시작할 수 있음</b>을 믿습니다.
                  </p>
               </dd>
               <dd class="dd02">
                  <p>
                     우리는 <b>동물실험을 하지 않는 회사와 거래</b>하고,<br>인체에 직접 테스트함으로써<br>안전한
                     제품을 만들 수 있다고 믿습니다.
                  </p>
                  <p>
                     <b>우리는 행복한 사람이</b><br>
                     <b>행복한 제품을 만들 수 있다</b>고 믿으며,<br>제조자의 얼굴 스티커를 제품 라벨에 붙임으로써<br>자부심을
                     가질 수 있다고 믿습니다.
                  </p>
                  <p>
                     우리 제품이 가진 <b>올바른 가치를 제공</b>하고,<br>그로 인해 수익이 창출한다는 것을 믿으며,<br>
                     <b>고객이 항상 옳다는 사실</b>을 믿습니다.
                  </p>
                  <p>
                     우리는 모든 사람이<br>
                     <b>전 세계 어디든 자유롭게 이동하며,</b><br>
                     <b>새로운 삶의 터전을 마련</b>할 수 있다고 믿습니다.
                  </p>
               </dd>
            </dl>
         </div>
      </div>
      <!-- 본문 끝 : end -->

   </div>
   <c:import url="../main/mainFooter.jsp"></c:import>


</body>
</html>