<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed, 
figure, figcaption, footer, header, hgroup, 
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}

@font-face {
	font-family: 'HelveticaNeue-Heavy';
	src: url('/resources/fonts/HelveticaNeue-Heavy.otf') format('opentype');
}

@font-face {
	font-family: 'notokrB';
	src: url('/resources/fonts/NotoSansKR-Bold.otf') format('opentype');
}

@font-face {
	font-family: 'notokrM';
	src: url('/resources/fonts/NotoSansKR-Medium.otf') format('opentype');
}

@font-face {
	font-family: 'notokrR';
	src: url('/resources/fonts/NotoSansKR-Regular.otf') format('opentype');
}

@font-face {
	font-family: 'notokrL';
	src: url('/resources/fonts/NotoSansKR-Light.otf') format('opentype');
}

.animal-header {
    text-align: center;
    background-color: #181818;
}

.animal-header a {
    display: inline-block;
}

.animal-signature {
    padding-bottom: 78px;
    text-align: center;
    background: url('https://lush.co.kr/data/skin/front/howling/img/campaign/campaign_fat_01.jpg') no-repeat top center;
    background-size: cover;
}

.animal-signature .from {
    width: 600px;
    margin: 54px auto 0;
    padding: 72px 0;
    background: #17181a;
}

.animal-signature .tit {
    padding-top: 198px;
    letter-spacing: -4px;
    font-size: 60px;
    line-height: 80px;
    font-family: "notokrM";
    font-weight: normal;
    color: #fff;
    margin: 0 auto;
}

.animal-signature .dsc {
    padding-top: 22px;
    font-size: 30px;
    line-height: 46px;
    color: #fff;
    font-family: "notokrL";
}

.animal-signature .from {
    width: 600px;
    margin: 54px auto 0;
    padding: 72px 0;
    background: #17181a;
}

.animal-signature .from-table {
    width: 100%;
}

.animal-signature .from-table .col1 {
    width: 189px;
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

.animal-signature .from-table th {
    padding: 2px 0 8px 80px;
    text-align: left;
    color: #c9e6f3;
    font-size: 18px;
    font-family: "notokrL";
}

.animal-signature .from-table td {
    padding: 0 0 10px 0;
    text-align: left;
}

.animal-signature .from-table .basic {
    margin: 0;
    padding: 4px 10px 0;
    border: 0;
    width: 310px;
    height: 36px;
    line-height: 36px;
    font-family: "notokrL";
    color: #333;
    font-size: 18px;
}

.animal-content {
    padding: 73px 0;
    text-align: center;
    color: #333333;
}

.animal-content .tit {
    font-size: 30px;
    line-height: 42px;
    font-weight: normal;
    font-family: "notokrM";
    color: #333333;
}

.animal-content .dsc {
    padding-top: 29px;
    font-size: 20px;
    line-height: 32px;
    letter-spacing: 0;
    font-family: "notokrL";
}

.animal-content .dsc {
    padding-top: 29px;
    font-size: 20px;
    line-height: 32px;
    letter-spacing: 0;
    font-family: "notokrL";
}

.animal-content .dsc strong {
    display: block;
    font-weight: normal;
    font-family: "notokrM";
}

.animal-content .btn-more {
    display: inline-block;
    width: 444px;
    height: 56px;
    line-height: 56px;
    font-size: 20px;
    border: 1px solid #222;
    color: #222;
    font-family: "notokrL";
}

a {
    color: #717171;
    text-decoration: none;
    /* outline: none; */
}

.animal-measure {
    padding-bottom: 80px;
    background: #eceff8;
}

.animal-measure .tit {
    padding: 70px 0 30px;
    width: 600px;
    margin: 0 auto;
    font-size: 30px;
    line-height: 48px;
    color: #333333;
    font-weight: normal;
    font-family: "notokrM";
}

.animal-swiper {
    position: relative;
}

.animal-swiper .swiper-container {
    width: 600px;
    height: 600px;
    margin: 0 auto;
    border: 1px solid #898c96;
    box-sizing: border-box;
}

.animal-footer {
    text-align: center;
    background-color: #181818;
}

.animal-footer .copyright {
    height: 60px;
    line-height: 60px;
    font-size: 15px;
    color: #eceff8;
    font-family: "notokrL";
    opacity: .5;
    letter-spacing: 0.2px;
}
</style>
</head>
<body>
	<div class="animal-free">
  <div class="animal-header">
    <a href="/">
      <img src="https://lush.co.kr/data/skin/front/howling/img/campaign/campaign_header.jpg" alt="">
    </a>
  </div>
  <div class="animal-signature">
    <h2 class="tit">동물대체시험법 제정안<br>통과를 위해 서명해 주세요!</h2>
    <p class="dsc">잔인한 동물실험은 그만! 대체기술 개발, 보급, 이용 촉구</p>
    <!-- 서명 폼 -->
    <div class="from">
      <table class="from-table">
        <colgroup>
          <col class="col1">
          <col class="col2">
        </colgroup>
        <tbody><tr>
          <th>이름</th>
          <td>
            <input type="text" name="" id="participantName" value="" placeholder="이름을 입력해 주세요" class="basic" maxlength="20">
          </td>
        </tr>
        <tr>
          <th>주소</th>
          <td>
            <input type="text" name="" id="participantAddress" placeholder="(시도,시군구)" class="basic" maxlength="50">
          </td>
        </tr>
        <tr>
          <th>이메일</th>
          <td>
            <input type="text" name="" id="participantEmail" class="basic" placeholder="">
          </td>
        </tr>
        <tr>
          <th>응원 한마디</th>
          <td>
            <input type="text" name="" id="participantComment" class="basic" placeholder="" maxlength="100">
          </td>
        </tr>
        <tr>
          <td></td>
          <td>
            <div class="agree">
              <span class="form-element">
                <input type="checkbox" name="agree1" id="agree1" class="checkbox" value="y">
                <label for="agree1" class="check-s"></label>
                <button type="button" class="btn-agree" data-pop="popup1"><span>개인정보 수집 동의 보기</span></button>
              </span>
              <span class="form-element">
                <input type="checkbox" name="agree2" id="agree2" class="checkbox" value="y">
                <label for="agree2" class="check-s"></label>
                <button type="button" class="btn-agree" data-pop="popup2"><span>*제3자 제공 동의 보기</span> (*제3자 : HSI Korea)</button>
              </span>
            </div>
          </td>
        </tr>
        <tr>
          <td colspan="2">
            <button type="button" class="btn-sign" onclick="participate()">서명하기</button>
          </td>
        </tr>
      </tbody></table>
    </div>
    <!-- //서명 폼 -->
  </div>
  <div class="animal-content">
    <h3 class="tit">국내에서 고통스러운 실험에 이용되는<br>동물의 수는 매년 증가하고 있습니다.</h3>
    <p class="dsc"> 
      2020년 한 해 동안 414만 마리가 실험으로 희생되었습니다.<br>
      동물실험 문제는 지속되고 있지만, 여전히 동물실험 시설은 확장 중입니다.<br>
      전 세계적으로 동물실험을 대체할 수 있는 첨단 기술이 대안으로 떠오르고<br> 있습니다.
      국내에서도 혁신적이고 인도적인 대체 방안을 개발하고 도입하여 <br>불필요한 동물들의 희생을 멈출 수 있도록 여러분의 도움이 필요합니다. 
    </p>
    <p class="dsc">
      사람과 동물 모두가 조화롭게 사는 세상을 위하여<br>
      <strong>‘동물대체시험법의 개발, 보급, 이용 촉진에 관한 법률’</strong>
      제정안이 통과될 수 있도록 서명에 동참해주세요!
    </p>
    <div class="banner">
      <img src="https://lush.co.kr/data/skin/front/howling/img/campaign/campaign_header.jpg" alt="">
    </div>
    <a href="https://lush.co.kr/data/skin/front/howling/img/campaign/campaign_header.jpg" class="btn-more">자세히 보기</a>
  </div>
  <div class="animal-measure">
    <h3 class="tit">한눈에 보는 법안 내용</h3>
    <div class="animal-swiper">
      <div class="swiper-container swiper-container-horizontal">
        <div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-2388px, 0px, 0px);"><div class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="5" style="width: 597px;">
            <img src="/data/skin/front/howling/img/campaign/campaign_slider_06.jpg" alt="">
          </div>
          <div class="swiper-slide first" data-swiper-slide-index="0" style="width: 597px;">
            <img src="/data/skin/front/howling/img/campaign/campaign_slider_01.jpg" alt="">
          </div>
          <div class="swiper-slide" data-swiper-slide-index="1" style="width: 597px;">
            <img src="/data/skin/front/howling/img/campaign/campaign_slider_02.jpg" alt="">
          </div>
          <div class="swiper-slide swiper-slide-prev" data-swiper-slide-index="2" style="width: 597px;">
            <img src="/data/skin/front/howling/img/campaign/campaign_slider_03.jpg" alt="">
          </div>
          <div class="swiper-slide swiper-slide-active" data-swiper-slide-index="3" style="width: 597px;">
            <img src="/data/skin/front/howling/img/campaign/campaign_slider_04.jpg" alt="">
          </div>
          <div class="swiper-slide swiper-slide-next" data-swiper-slide-index="4" style="width: 597px;">
            <img src="/data/skin/front/howling/img/campaign/campaign_slider_05.jpg" alt="">
          </div>
          <div class="swiper-slide" data-swiper-slide-index="5" style="width: 597px;">
            <img src="/data/skin/front/howling/img/campaign/campaign_slider_06.jpg" alt="">
          </div>
        <div class="swiper-slide first swiper-slide-duplicate" data-swiper-slide-index="0" style="width: 597px;">
            <img src="/data/skin/front/howling/img/campaign/campaign_slider_01.jpg" alt="">
          </div></div>
      <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
      <!-- Add Arrows -->
      <div class="swiper-button-next" tabindex="0" role="button" aria-label="Next slide"></div>
      <div class="swiper-button-prev" tabindex="0" role="button" aria-label="Previous slide"></div>
    </div>
  </div>
  <div class="animal-footer">
    <div class="copyright">COPYRIGHT © LUSHKOREA CO. LTD. ALL RIGHTS RESERVED.</div>
  </div>
</div>
</body>
</html>