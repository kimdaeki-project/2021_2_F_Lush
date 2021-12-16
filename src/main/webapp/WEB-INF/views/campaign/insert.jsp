<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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

.animal-signature .from-table .agree {
    padding: 19px 0 20px;
}

.animal-signature .form-element {
    display: block;
}

input[type=checkbox] {

zoom: 1.7;
margin: 0;
vertical-align: middle;
border: 1px solid #333;
}

.animal-signature .from-table .btn-agree1 { 
    font-size: 16px;
    color: #c9e6f3;
    font-family: "notokrL";
}

.animal-signature .from-table .btn-agree2 {
    font-size: 16px;
    color: #c9e6f3;
    font-family: "notokrL";
}


.animal-signature .from-table .btn-agree1 span {
    position: static;
    font-size: 18px;
    color: #c9e6f3;
    vertical-align: middle;
    border-bottom: 1px solid #c9e6f3;
}

.animal-signature .from-table .btn-agree2 span {
    position: static;
    font-size: 18px;
    color: #c9e6f3;
    vertical-align: middle;
    border-bottom: 1px solid #c9e6f3;
}

.animal-signature .form-element label.check-s {
    width: 24px;
    height: 24px;
    margin: 0;
    padding: 0;
    border: 0;
    background: #fff;
    vertical-align: middle;
}

.form-element label.check-s {
    min-width: 13px;
    padding: 0 0 0 22px;
    /* background: #fff url('https://lush.co.kr/data/skin/front/howling/img/campaign/btn_checkbox.jpg') no-repeat 1px 2px; */
}

.form-element label {
    position: relative;
    top: 0;
    left: 0;
    display: inline-block;
    min-width: 20px;
    min-height: 20px;
    padding: 0 0 0 27px;
   /*  background: #fff url('https://lush.co.kr/data/skin/front/howling/img/campaign/btn_checkbox.jpg') no-repeat 1px top; */
}

button {
    cursor: pointer;
    background: none;
    border: none;
    outline: none;
}

input, select {
    outline: none;
    font-family: "notokrR",Malgun Gothic,'맑은 고딕',Helvetica,AppleGothic,dotum,'돋움',sans-serif;
    color: #717171;
}

.animal-signature .form-element + .form-element {
    margin-top: 15px;
}

.animal-signature .from-table .btn-sign {
    text-align: center;
    width: 100%;
    height: 56px;
    line-height: 56px;
    background: #026bd6;
    font-size: 20px;
    color: #fff;
}

.animal-signature .from-table tr:last-child td {
    padding: 0 80px;
}

.animal-content .banner {
    padding: 35px 0 50px;
}

.popup-wrap1.open {
    opacity: 1;
    visibility: visible;
}

.popup-wrap1 {
    position: fixed;
    z-index: 999;
    left: 0;
    top: 0;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    width: 100%;
    min-width: 320px;
    height: 100%;
    opacity: 0;
    visibility: hidden;
    -webkit-transition: all .25s ease-in-out;
    transition: all .25s ease-in-out;
    overflow: auto;
}

.popup-wrap1 .tit {
    padding: 32px 0 30px;
    letter-spacing: -0.8px;
    font-size: 30px;
    color: #333;
    font-weight: normal;
    font-family: "notokrM";
}

.popup-wrap1 .list {
    padding-right: 40px;
    letter-spacing: 0;
    font-size: 20px;
    line-height: 32px;
    color: #333;
    font-family: "notokrL";
}

.popup-wrap1 .list li {
    padding-bottom: 17px;
    word-break: keep-all;
    list-style: none;
}

.popup-wrap1 .popup {
    position: fixed;
    left: 50%;
    top: 50%;
    z-index: 2;
    width: 600px;
    padding: 0 0 30px 40px;
    box-sizing: border-box;
    background: #fff;
    transform: translate(-50%,-50%);
}

.popup-wrap1 .btn-close1 {
    position: absolute;
    width: 27px;
    height: 27px;
    right: 41px;
    top: 41px;
    background: url('https://lush.co.kr/data/skin/front/howling/img/campaign/btn-close.jpg') no-repeat center;
}

.popup-wrap1 .btn-close1 span {
    display: none;
}



.popup-wrap1 .dim {
    position: fixed;
    z-index: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, .4);
}

.popup-wrap2.open {
    opacity: 1;
    visibility: visible;
}

.popup-wrap2 {
    position: fixed;
    z-index: 999;
    left: 0;
    top: 0;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    width: 100%;
    min-width: 320px;
    height: 100%;
    opacity: 0;
    visibility: hidden;
    -webkit-transition: all .25s ease-in-out;
    transition: all .25s ease-in-out;
    overflow: auto;
}

.popup-wrap2 .tit {
    padding: 32px 0 30px;
    letter-spacing: -0.8px;
    font-size: 30px;
    color: #333;
    font-weight: normal;
    font-family: "notokrM";
}

.popup-wrap2 .list {
    padding-right: 40px;
    letter-spacing: 0;
    font-size: 20px;
    line-height: 32px;
    color: #333;
    font-family: "notokrL";
}

.popup-wrap2 .list li {
    padding-bottom: 17px;
    word-break: keep-all;
    list-style: none;
}

.popup-wrap2 .popup {
    position: fixed;
    left: 50%;
    top: 50%;
    z-index: 2;
    width: 600px;
    padding: 0 0 30px 40px;
    box-sizing: border-box;
    background: #fff;
    transform: translate(-50%,-50%);
}

.popup-wrap2 .btn-close2 {
    position: absolute;
    width: 27px;
    height: 27px;
    right: 41px;
    top: 41px;
    background: url('https://lush.co.kr/data/skin/front/howling/img/campaign/btn-close.jpg') no-repeat center;
}

.popup-wrap2 .btn-close2 span {
    display: none;
}

.popup-wrap2 .dim {
    position: fixed;
    z-index: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, .4);
}

.animal-swiper .swiper-container img {
    width: 100%;
}

.active {
	display: block;
}

.swiper-button-prev {
	left: 50%;
	background-image: url('https://lush.co.kr/data/skin/front/howling/img/campaign/btn_slider_on.png');
	margin-left: -356px;
    margin-top: -32px;
    transform: rotate(180deg);
}

.swiper-button-next {
	right: 50%;
	background-image: url('https://lush.co.kr/data/skin/front/howling/img/campaign/btn_slider_on.png');
	margin-right: -356px;
    margin-top: -32px;
}

.swiper-button-next, .swiper-button-prev {
    position: absolute;
    top: 50%;
    width: 27px;
    height: 44px;
    margin-top: -22px;
    z-index: 10;
    cursor: pointer;
    background-size: 27px 44px;
    background-position: center;
    background-repeat: no-repeat;
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
    <form action="./insert" method="post">
    <div class="from">
      <table class="from-table">
        <colgroup>
          <col class="col1">
          <col class="col2">
        </colgroup>
        <tbody><tr>
          <th>이름</th>
          <td>
            <input type="text" name="name" id="name" value="" placeholder="이름을 입력해 주세요" class="basic" maxlength="20">
          </td>
        </tr>
        <tr>
          <th>주소</th>
          <td>
            <input type="text" name="address" id="address" placeholder="(시도,시군구)" class="basic" maxlength="50">
          </td>
        </tr>
        <tr>
          <th>이메일</th>
          <td>
            <input type="text" name="email" id="email" class="basic" placeholder="">
          </td>
        </tr>
        <tr>
          <th>응원 한마디</th>
          <td>
            <input type="text" name="comment" id="comment" class="basic" placeholder="" maxlength="100">
          </td>
        </tr>
        <tr>
          <td></td>
          <td>
            <div class="agree">
              <span class="form-element">
                <input type="checkbox" class="check1" style="width:13px;height:13px;">
                <button type="button" class="btn-agree1" data-pop="popup1"><span>개인정보 수집 동의 보기</span></button>
              </span>
              <span class="form-element">
                <input type="checkbox" class="check2" style="width:13px;height:13px;">
                <button type="button" class="btn-agree2" data-pop="popup2 "><span>*제3자 제공 동의 보기</span> (*제3자 : HSI Korea)</button>
              </span>
            </div>
          </td>
        </tr>
        <tr>
          <td colspan="2">
            <button type="button" class="btn-sign">서명하기</button>
          </td>
        </tr>
      </tbody></table>
    </div>
    </form>
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
      <img src="https://lush.co.kr/data/skin/front/howling/img/campaign/logo.jpg" alt="">
    </div>
    <a href="https://lush.co.kr/data/skin/front/howling/img/campaign/campaign_header.jpg" class="btn-more">자세히 보기</a>
  </div>
  <div class="animal-measure">
    <h3 class="tit">한눈에 보는 법안 내용</h3>
    <div class="animal-swiper">
      <div class="swiper-container swiper-container-horizontal">
        <div class="swiper-wrapper" style="display: block; ">
          <div class="swiper-slide 1"  style="width: 597px;">
            <img src="https://lush.co.kr/data/skin/front/howling/img/campaign/campaign_slider_01.jpg" alt="">
          </div>
          <div class="swiper-slide 2"  style="width: 597px;">
            <img src="https://lush.co.kr/data/skin/front/howling/img/campaign/campaign_slider_02.jpg" alt="">
          </div>
          <div class="swiper-slide 3" style="width: 597px;">
            <img src="https://lush.co.kr/data/skin/front/howling/img/campaign/campaign_slider_03.jpg" alt="">
          </div>
          <div class="swiper-slide 4" style="width: 597px;">
            <img src="https://lush.co.kr/data/skin/front/howling/img/campaign/campaign_slider_04.jpg" alt="">
          </div>
          <div class="swiper-slide 5" style="width: 597px;">
            <img src="https://lush.co.kr/data/skin/front/howling/img/campaign/campaign_slider_05.jpg" alt="">
          </div>
          <div class="swiper-slide 6" style="width: 597px;">
            <img src="https://lush.co.kr/data/skin/front/howling/img/campaign/campaign_slider_06.jpg" alt="">
          </div>
          
        </div>
      <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
      <!-- Add Arrows -->
      <a class="swiper-button-prev" onclick="plusSlides(-1)"></a>
      <a class="swiper-button-next" onclick="plusSlides(1)"></a>
    </div>
  </div>
  <div class="animal-footer">
    <div class="copyright">COPYRIGHT © LUSHKOREA CO. LTD. ALL RIGHTS RESERVED.</div>
  </div>
  
  <div class="popup-wrap1" id="popup1">
  <div class="popup">
    <h2 class="tit">개인정보 수집·이용 동의</h2>
    <ul class="list">
      <li>1. 개인정보 수집받는 자 : (주)러쉬코리아</li>
      <li>2. 개인정보의 수집 · 이용목적 : 동물대체시험법의 개발, 보급, 이용 촉진에 관한 법률안 통과를 위한 서명 제출</li>
      <li>3.수집하려는 개인정보의 항목 : 성명, 주소, 이메일</li>
      <li>4. 개인정보의 보유 및 이용기간 : 동물대체시험법의 개발, 보급, 이용 촉진에 관한 법률안 통과 시까지 보유 및 서명 철회시 파기</li>
      <li>개인정보 수집 동의를 거부할 수 있으며, 동의 거부시 동물대체시험법의 개발, 보급, 이용 촉진에 관한 법률안 통과를 위한 서명 캠페인 참여가 제한 될 수 있습니다.</li>
    </ul>
    <!-- <div class="check">
      <span class="txt">※ 위 개인정보 수집이용에 동의하십니까?</span>
      <span class="radio-element">
        <label for="radio1-true"><input type="radio" name="radio1" id="radio1-true" checked><em>예</em></label>
        <label for="radio1-false"><input type="radio" name="radio1" id="radio1-false"><em>아니요</em></label>
      </span>
    </div> -->
    <button type="button" class="btn-close1"><span>닫기</span></button>
  </div>
  <div class="dim"></div>
</div>


<div class="popup-wrap2" id="popup2">
  <div class="popup">
    <h2 class="tit">개인정보 제3자 제공에 대한 동의</h2>
    <ul class="list">
      <li>1. 개인정보를 제공받는 자 : HSI Korea</li>
      <li>2. 개인정보를 제공받는 자의 개인정보 이용 목적 : 동물대체시험법의 개발, 보급, 이용 촉진에 관한 법률안 통과를 위한 정부 및 국회 제출용</li>
      <li>3. 제공하는 개인정보의 항목 : 성명, 주소, 이메일</li>
      <li>4. 개인정보를 제공받는 자의 개인정보 보유 및 이용 기간 : 동물대체시험법의 개발, 보급, 이용 촉진에 관한 법률안 통과 시까지 보유 및 서명 철회시 파기</li>
      <li>개인정보 수집 동의를 거부할 수 있으며, 동의 거부시 동물대체시험법의 개발, 보급, 이용 촉진에 관한 법률안 통과를 위한 서명 캠페인 참여가 제한 될 수 있습니다.</li>
    </ul>
    <!-- <div class="check">
      <span class="txt">※ 위 개인정보의 제3자 제공에 동의하십니까?</span>
      <span class="radio-element">
        <label for="radio3-true"><input type="radio" name="radio1" id="radio3-true" checked><em>예</em></label>
        <label for="radio4-false"><input type="radio" name="radio1" id="radio4-false"><em>아니요</em></label>
      </span>
    </div> -->
    <button type="button" class="btn-close2"><span>닫기</span></button>
  </div>
  <div class="dim"></div>
</div>
</div>
</body>

<script type="text/javascript">

	

	$(".btn-sign").click(function(){  
		
	
		if(!$("#name").val()=="" && !$("#address").val()=="" && !$("#email").val()=="" && !$("#comment").val()==""){
			ch2();
		} else if($("#name").val()==""){
			alert("이름을 입력해주세요");
		} else if($("#address").val()==""){
			alert("주소를 입력해주세요");
		} else if($("#email").val()==""){
			alert("이메일을 입력해주세요");
		} else if($("#comment").val()==""){
			alert("응원 한마디를 입력해주세요");
		}
		
		function ch2(){
			 if($(".check1").prop("checked") && $(".check2").prop("checked")){                        
			       window.location.href = "/";            
			    }else{            
			       if(!$(".check1").prop("checked")){
			          alert("개인정보 수집 이용에 동의해 주세요.");
			       }else if(!$(".check2").prop("checked")){
			          alert("제 3자 제공 동의해 주세요.");
			       } 
			    }      
		}
		
	});

	$('.btn-agree1').click(function(){
		$('.popup-wrap1').addClass('open');
	});
	
	$('.btn-close1').click(function(){
		$('.popup-wrap1').removeClass('open');
	})
	
	$('.btn-agree2').click(function(){
		$('.popup-wrap2').addClass('open');
	});
	
	$('.btn-close2').click(function(){
		$('.popup-wrap2').removeClass('open');
	})
	
	var slideIndex = 1;
	showSlides(slideIndex);
	
	function plusSlides(n) {
	  showSlides(slideIndex += n);
	}
	
	function currentSlide(n) {
	  showSlides(slideIndex = n);
	}
	
	function showSlides(n) {
		  var i;
		  var slides = document.getElementsByClassName("swiper-slide");
		  if (n > slides.length) {
			  slideIndex = 1
		  }    
		  if (n < 1) {
			  slideIndex = slides.length
		  }
		  for (i = 0; i < slides.length; i++) {
		      slides[i].style.display = "none";  
		  }
		  
		  slides[slideIndex-1].style.display = "block";  
		}
	
</script>
</html>