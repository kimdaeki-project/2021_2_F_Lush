<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

#wrap>#side, #wrap>#container {
   height: 100%;
   min-height: 100%;
}

#container {
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

img {
   border: none;
   vertical-align: top;
}
</style>
</head>
<body>
   <c:import url="../main/mainHeader.jsp"></c:import>
   <div id="container" class="">


      <!-- 본문 시작 : start -->
      <div id="content">
         <style>
.brand-visual {
   height: 500px;
   text-align: center;
   color: #fff;
   background:
      url('https://www.lush.co.kr/data/skin/front/howling/img/etc/brand_bg02.jpg')
      no-repeat 50%;
   background-size: cover;
}

.introduce-content {
   width: 1180px;
   margin: 0 auto;
   color: #000;
   text-align: center;
}

.introduce-content .tit {
   padding-top: 139px;
   color: #000;
   font-size: 20px;
   font-weight: normal;
   font-family: "notokrR";
   letter-spacing: -0.3px;
   line-height: 1.5;
}

.introduce:after {
   display: block;
   content: "";
   clear: both;
}

.introduce figure {
   float: left;
   padding-top: 76px;
}

.introduce figure:nth-child(2n) {
   float: right
}

.introduce figcaption {
   padding-top: 41px;
   font-size: 18px;
   font-family: "notokrR";
   line-height: 30px;
   letter-spacing: -0.2px;
}

.introduce figcaption strong {
   font-family: "notokrB";
   font-weight: normal;
   color: #1ea24d;
}

.btn-wrap {
   padding: 74px 0 43px;
}

.btn-wrap a {
   display: inline-block;
   font-size: 16px;
   font-family: "notokrL";
   border: 1px solid #000;
   padding: 19px 61px 13px;
   letter-spacing: 1.3px;
}
</style>
         <div class="brand-visual">
            <h2 class="b-txt01">러쉬 소개</h2>
            <p class="b-txt02">영국 프레쉬 핸드메이드 코스메틱 브랜드</p>
         </div>

         <div class="introduce-content">
            <h3 class="tit">
               “ 러쉬는 자연에서 얻은 신선한 재료와 동물실험을 하지 않는 정직한 재료를 사용하여 모든 제품을 손으로 만듭니다.<br>
               더불어 공정 거래, 인권 보호, 포장 최소화 등 다양한 캠페인 활동을 통해 기업 윤리와 신념을 알리고 있습니다. ”
            </h3>
            <div class="introduce">
               <figure>
                  <img
                     src="https://rlzr1ac8g.toastcdn.net/data/skin/front/howling/img/etc/introduce_01.jpg"
                     alt="">
                  <figcaption>
                     러쉬는 어떤 이유에서도 제품을 <strong>동물실험</strong> 하지 않고,<br> 동물실험을 거친
                     원재료조차 사용하지 않습니다.<br> 직접 구매팀을 운영하며, 엄격한 기준을 바탕으로<br> <strong>윤리적인
                        공정 여부</strong>를 확인합니다.<br> 믿을 수 있는 생산자로부터 직거래를 원칙으로 합니다.<br>
                  </figcaption>
               </figure>
               <figure>
                  <img
                     src="https://rlzr1ac8g.toastcdn.net/data/skin/front/howling/img/etc/introduce_02.jpg"
                     alt="">
                  <figcaption>
                     러쉬는 배쓰 밤, 샤워 젤리, 고체 샴푸와 같은<br> 기발하고 혁신적인 제품을 선보입니다.<br>
                     특히 불필요한 포장을 없앤 고체 형태의 다양한<br> <strong>‘네이키드(Naked)</strong>’
                     제품을 개발하며<br> 화장품 산업에서 혁명을 일으켜 왔습니다.
                  </figcaption>
               </figure>
               <figure>
                  <img
                     src="https://rlzr1ac8g.toastcdn.net/data/skin/front/howling/img/etc/introduce_03.jpg"
                     alt="">
                  <figcaption>
                     신선함은 러쉬 철학의 핵심입니다.<br> 신선한 과일, 채소, 에센셜 오일, 최소한의 보존제와<br>
                     안전한 인공 성분을 사용하여 제품을 선보입니다.<br> 러쉬의 모든 제품은 <strong>베지테리언(Vegetarian)</strong>이며,<br>
                     그 중 약 95%는 식물성 원료로만 만든 <strong>비건(Vegan)</strong>입니다.
                  </figcaption>
               </figure>
               <figure>
                  <img
                     src="https://rlzr1ac8g.toastcdn.net/data/skin/front/howling/img/etc/introduce_04.jpg"
                     alt="">
                  <figcaption>
                     이 모든 것은 ‘고객은 항상 옳다’는 믿음과 러쉬의 핵심 가치인<br> 직원들의 진심이 모여 얻은
                     결실입니다. <br> 앞으로도 러쉬는 현시대에 필요한 제품과 서비스를 제공할 것입니다. <br> <strong>환경
                        보호를 위해 고민하고, 동물과 자연 그리고 사람이<br> 조화로운 세상
                     </strong>을 만들기 위한 도전과 혁신에 앞장섭니다.
                  </figcaption>
               </figure>
            </div>
            <div class="btn-wrap">
               <a href="/board/list.php?bdId=article">러쉬의 다양한 이야기 확인하기</a>
            </div>
         </div>

      </div>
      <!-- 본문 끝 : end -->

   </div>
   <c:import url="../main/mainFooter.jsp"></c:import>

</body>
</html>