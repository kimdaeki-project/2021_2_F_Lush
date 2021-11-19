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


      <!-- 본문 시작 : start -->
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
   background: url('https://www.lush.co.kr/data/skin/front/howling/img/etc/bg_community.jpg')
      no-repeat 50%;
   background-size: cover;
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

.community-content {
   max-width: 1180px;
   margin: 0 auto;
   text-align: center;
   color: #000;
}

.community-content .lush-scout .tit {
   padding: 144px 0 72px;
}

.community-content .lush-scout p {
   font-size: 18px;
   line-height: 30px;
   font-family: 'notokrR';
   letter-spacing: -0.3px;
}

.community-content .lush-scout p+p {
   padding-top: 28px;
}

.community-content .lush-scout strong {
   font-family: 'notokrB';
   font-weight: normal;
}

.community-content .story {
   padding: 58px 0 45px;
   text-align: left;
}

.community-content .story li {
   position: relative;
   padding-top: 80px;
   font-size: 0;
}

.community-content .story .img {
   display: inline-block;
   width: 50%;
   vertical-align: top;
}

.community-content .story .txt {
   display: inline-block;
   width: 50%;
   padding: 0 90px 0 22px;
   margin-top: -7px;
   box-sizing: border-box;
   vertical-align: top;
   font-size: 18px;
   line-height: 30px;
   font-family: 'notokrR';
}

.community-content .story p {
   padding-top: 9px;
}

.community-content .story strong {
   font-family: 'notokrB';
   font-weight: normal;
}

.community-content .story .tit {
   font-size: 22px;
   font-family: 'notokrB';
   font-weight: normal;
   color: #000;
}

.community-content .story .link {
   display: inline-block;
   position: absolute;
   bottom: 0;
   border: 1px solid #000;
   height: 53px;
   width: 240px;
   text-align: center;
   line-height: 53px;
   font-size: 16px;
}

.community-content .story .shortcuts {
   color: #1ea24d;
   border-bottom: 1px solid #1ea24d;
   font-family: 'notokrB';
}

a {
    color: #1e1e1e;
}
</style>
         
         <div class="brand-visual">
            <h2 class="b-txt01">커뮤니티</h2>
            <p class="b-txt02">세상을 변화시킬 러쉬 커뮤니티</p>
         </div>

         <div class="community-content">
            <div class="lush-scout">
               <h3 class="tit">
                  <img src="https://www.lush.co.kr/data/skin/front/howling/img/etc/community_01.jpg"
                     alt="Lush SCOUT">
               </h3>
               <p>
                  러쉬는 고민했습니다. <strong>‘가치 있는 것을 더 재미있게 전달하고 기억에 오래 남게 할 순
                     없을까?’</strong><br> 바로 그 물음을 통해 <strong>러쉬 스카우트가 탄생</strong>했습니다.
               </p>
               <p>
                  러쉬 스카우트는 디지털 뱃지 <strong>‘덕찌’</strong>와 공식 앰버서더 <strong>‘젤러쉬’</strong>를
                  포함한 <strong>러쉬만의 커뮤니티</strong>를 의미합니다.<br> 우리는 스카우트를 통해 우리가
                  옳다고 믿는 철학과 윤리적인 가치를 알리며 <strong>아름다운 세상</strong>으로의 <strong>변화에
                     꾸준히 기여</strong>하고자 합니다.<br> ‘덕찌’를 모으고, 향기로운 목소리로 브랜드 메시지를 전파한다면 누구나
                  러쉬 스카우트가 될 수 있습니다.
               </p>
               <p>
                  <strong>자, 이제 세상을 변화시킬 의미있는 가치를 함께 나눠볼까요?</strong>
               </p>
            </div>
            <ul class="story">
               <li>
                  <div class="img">
                     <img src="https://www.lush.co.kr/data/skin/front/howling/img/etc/community_02.jpg"
                        alt="덕찌 이야기">
                  </div>
                  <div class="txt">
                     <h4 class="tit">덕찌 이야기</h4>
                     <p>
                        <strong>‘덕찌’</strong>는 러쉬의 브랜드 메시지를 담은 <strong>디지털 뱃지</strong>입니다.<br>
                        동물실험을 하지 않은 정직한 원재료로 만든 제품의 이야기부터<br> 지속가능한 환경을 위한 우리의 모든
                        여정을 담고 있습니다. <br> 러쉬 홈페이지에서 <strong>다양한 활동으로 ‘덕찌’를
                           받아보세요.</strong><br> 디지털 뱃지인만큼 언제 어디서나 콜렉팅을 시작할 수 있습니다.<br> 모을
                        수록 커지는 즐거움도 놓치지 마세요, ‘덕찌’ 보유 개수에 따라<br> 일상에 즐거움을 더해 줄 <strong>깜짝
                           선물이 찾아갈 확률</strong>도 높아집니다.<br> 가치있는 이야기가 담긴 ‘덕찌’를 공유해보세요.<br>
                        우리가 옳다고 믿는 가치를 널리 알릴 수 있답니다.
                     </p>
                     <a href="/board/view.php?page=8&amp;bdId=article&amp;sno=61"
                        class="link">덕찌 더 알아보기</a>
                  </div>
               </li>
               <li>
                  <div class="img">
                     <img src="https://www.lush.co.kr/data/skin/front/howling/img/etc/community_03.jpg"
                        alt="젤러쉬 이야기">
                  </div>
                  <div class="txt">
                     <h4 class="tit">젤러쉬 이야기</h4>
                     <p>
                        러쉬는 공식 앰버서더 <strong>‘젤러쉬’</strong>의 향기로운 목소리를 통해<br> 브랜드
                        철학과 제품이 지닌 올바른 가치를 전합니다.<br> 젤러쉬의 선한 영향력은 동물, 환경, 사람이 조화로운
                        세상을<br> 만들어 갑니다. 러쉬를 사랑하고 우리의 철학과 가치를 행동으로<br> 옮길 수 있는
                        사람이라면 <strong>누구든 젤러쉬가 될 수 있습니다.</strong><br> 젤러쉬가 될 수 있는
                        기회는 일 년에 단 한 번.<br> <a
                           href="https://www.instagram.com/lushkorea/" class="shortcuts">러쉬코리아
                           인스타그램</a>을 팔로우하고 모집 소식을 받아보세요.<br> 러쉬의 모든 것은 당신과 함께 시작합니다.
                     </p>
                     <a href="/board/list.php?bdId=jeallushContents" class="link">지난
                        젤러쉬 활동 보기</a>
                  </div>
               </li>
            </ul>
         </div>


      </div>
      <!-- 본문 끝 : end -->

   </div>
   <c:import url="../main/mainFooter.jsp"></c:import>
</body>
</html>