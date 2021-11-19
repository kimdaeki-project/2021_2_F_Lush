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
   <!-- 본문 시작 : start -->
      <div id="content">
<style>

.brand-visual {
   height: 500px;
   text-align: center;
   color: #fff;
   background: url('https://www.lush.co.kr/data/skin/front/howling/img/etc/brand_bg01.jpg')
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

.history-content {
   width: 1180px;
   margin: 0 auto;
   padding: 144px 0 0;
   color: #000;
   text-align: left;
}

.history-content p {
   font-size: 18px;
   font-family: "notokrR";
   padding-top: 21px;
   padding-left: 27px;
   line-height: 30px;
   letter-spacing: -0.25px;
}

.history-content img {
   padding-bottom: 20px;
}

.history-content p strong {
   font-family: "notokrB";
}

.history-content p .sup {
   font-size: 16px;
   color: #6b6b6b;
}

img {
    border: none;
    vertical-align: top;
}
</style>
         <div class="brand-visual">
            <h2 class="b-txt01">러쉬 역사</h2>
            <p class="b-txt02">프레쉬 핸드메이드 코스메틱 브랜드의 시작</p>
         </div>

         <div class="history-content">
            <img src="https://www.lush.co.kr/data/skin/front/howling/img/etc/history.jpg" alt="">
            <p>
               <strong>1995년, 러쉬는 영국에 항구도시 풀(Poole)에서 탄생했습니다.</strong><br> 마크
               콘스탄틴(Mark Constantine), 모 콘스탄틴(Mo Constantine), 로웨나 버드(Rowena
               Bird),<br> 헬렌 앰브로센(Helen Ambrosen), 리즈 베네트(Liz Bennett), 폴
               그리브스(Paul Greaves)가 함께 창립했습니다.
            </p>
            <p>
               <strong>러쉬는 1970년대 마크 콘스탄틴(Mark Constantine)과 리즈 베네트(Liz
                  Bennett)의 만남으로 시작합니다.</strong><br> 마크는 모발학자로, 리즈는 뷰티 테라피스트로 같은
               헤어&amp;뷰티 샬롱에서 근무했습니다. 이들의 공통 관심사는 환경친화적인 제품이었고,<br> ‘콘스탄틴 앤
               위어(Constantine and Weir)’라는 회사를 함께 설립합니다. 회사가 성장하면서 헬렌 앰브로센, 로웨나
               버드, 모 콘스탄틴, <br> 폴 그리브스가 합류합니다.
            </p>
            <p>
               그들은 더 나은 브랜드의 확신을 갖고, <strong>1987년 화장품 통신판매업체인 ‘코스메틱 투
                  고(Cosmetics to Go)’</strong>를 설립합니다. <br> 제품 카탈로그를 발행하고 전화와 우편으로 주문을
               받았습니다. 당시 선보인 <strong>배쓰 밤, 샴푸 바, 마사지 바는 지금까지도 사랑</strong>을 받고
               있습니다. <br> 초기에 성공한 듯했지만, 많은 주문 접수에 대처할 시스템을 마련하지 못하여 아쉬운 작별을
               고합니다.<br> <strong>6명의 공동 창립자들은 그 동안 쌓은 경험을 바탕으로 새로운
                  브랜드 러쉬(Lush)를 시작합니다.</strong>
            </p>
            <p>
               현재 러쉬는 전 세계 50여 개국에서 900여 개 매장을 운영하고 있습니다.<br> 한국은 러쉬의 네 번째 해외
               진출 국가입니다. 2002년 12월 24일 크리스마스 이브에 첫 선을 보였습니다.<br> 현재 전국 70여 개
               매장<span class="sup">(*스파 매장 2곳 포함)</span>과 디지털 채널을 통해 러쉬의 철학이 담긴
               제품과 긍정의 에너지를 나누고 있습니다.
            </p>
         </div>

      </div>
      <!-- 본문 끝 : end -->

   </div>
   <c:import url="../main/mainFooter.jsp"></c:import>


</body>
</html>