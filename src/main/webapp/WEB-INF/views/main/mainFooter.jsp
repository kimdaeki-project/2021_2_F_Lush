<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
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

@font-face {
   font-family: 'notokrM';
   src: url('/resources/fonts/NotoSansKR-Medium.otf') format('opentype');
}

@font-face {
   font-family: 'notokrR';
   src: url('/resources/fonts/NotoSansKR-Regular.otf') format('opentype');
}

body {
    color: #333;
    font-family: "notokrR",Malgun Gothic,"맑은 고딕",AppleGothic,Dotum,"돋움",sans-serif;
    font-size: 14px;
    line-height: 1.4;
    letter-spacing: -0.5px;
}

ul, li {
   margin: 0;
   padding: 0;
   list-style: none;
}

.inner_wrap {
   position: relative;
   width: 1180px;
   margin: 0 auto;
}

#footer .servicewrap {
    display: block;
    margin-bottom: 20px;
}

#footer .subwrap {
    display: inline-block;
    float: left;
    width: 300px;
}

#footer .subwrap .subinfo {
    display: block;
    padding-left: 100px;
    color: #fff;
}

#footer .subwrap .subinfo dl {
    padding-top: 55px;
}

#footer .subwrap .subinfo dt {
    font-size: 16px;
    font-family: "notokrM";
}

#footer .subwrap .subinfo dt span {
    display: inline-block;
    padding-left: 8px;
    font-family: "notokrR";
}

#footer .subwrap .subinfo dd.email {
    padding: 4px 0 2px;
}

#footer .subwrap .subinfo dd {
    padding-top: 8px;
    font-size: 14px;
    line-height: 22px;
}

#footer .subwrap .subinfo dd button, #footer .subwrap .subinfo dd a {
    font-size: 14px;
    color: #fff;
    border-bottom: 1px solid #fff;
    letter-spacing: -1px;
}

button {
    cursor: pointer;
    background: none;
    border: none;
    outline: none;
    font-family: "notokrR";
    padding: 0px 0px;
}

#footer .subwrap .subinfo dl + dl {
    padding-top: 33px;
}

.f-sns__wrap {
    margin-top: 36px;
}

.f-sns {
    font-size: 0;
    margin-left: -5px;
}

.f-sns a {
    display: inline-block;
    width: 30px;
    margin-left: 5px;
}

.f-sns a img {
    width: 100%;
}

img {
    border: none;
    vertical-align: top;
}

#footer .subwrapR {
    display: inline-block;
    float: right;
    width: 815px;
}

#footer .foot_menu li {
    display: inline-block;
    letter-spacing: -0.5px;
}

#footer .foot_menu li a {
    display: inline-block;
    margin-right: 40px;
    color: #fff;
}

#footer .foot_menu li.policy a {
    color: #FBE85E;
}


#footer .newsletter {
    margin-top: 63px;
    color: #fff;
}

input, select {
    outline: none;
    font-family: "notokrR",Malgun Gothic,'맑은 고딕',Helvetica,AppleGothic,dotum,'돋움',sans-serif;
    color: #717171;
}

#footer .newsletter {
    margin-top: 63px;
    color: #fff;
}

#footer .newsletter dd input[type="text"] {
    width: 342px;
    height: 14px;
    padding: 12Px 0 14px 20px;
    font-size: 14px;
    border: 0;
    line-height: 14px;
    vertical-align: middle;
}

#footer .newsletter dd input + a {
    display: inline-block;
    margin-left: -4px;
    vertical-align: middle;
}

#footer .newsletter dd .btnicon {
    width: 110px;
    height: 40px;
    line-height: 38px;
    vertical-align: top;
    border: 1px solid #fff;
    color: #fff;
    font-size: 14px;
    cursor: pointer;
    text-indent: 0px;
    background-color: #000;
}

.btnicon {
    display: inline-block;
    vertical-align: middle;
    text-align: center;
    box-sizing: border-box;
}

#footer .newsletter dt {
    position: relative;
    padding-top: 13px;
    font-size: 16px;
    font-family: "notokrR";
    line-height: 24px;
    letter-spacing: -0.2px;
}

#footer .newsletter dt strong {
    display: block;
    margin-bottom: 2px;
    font-family: "notokrM";
    font-weight: 300;
}

#footer .newsletter dt a {
    position: absolute;
    left: 261px;
    bottom: 2px;
    font-size: 14px;
    line-height: 20px;
    color: #fff;
    border-bottom: 1px solid #b3ada5;
}

#footer .copyright {
    display: block;
    line-height: 24px;
    color: #9b9b9b;
    padding: 26px 0 0 0;
    letter-spacing: -1px;
}

address, caption, cite, code, dfn, em, var {
    font-style: normal;
}

#footer .copyright {
    display: block;
    line-height: 24px;
    color: #9b9b9b;
    padding: 26px 0 0 0;
    letter-spacing: -1px;
}

#footer .copyright a {
    color: #9b9b9b;
}

#footer .copyright .copy {
    display: block;
    font-size: 12px;
    margin: 30px 0 0 0;
    letter-spacing: -0.02rem;
}

</style>
</head>
<body>
   <div id="footer">
      <style type="text/css">
/* 코어밸류 */
#footer {
   display: block;
   position: relative;
   width: 100%;
   min-width: 1180px;
   margin: 0 auto;
   padding: 0 0 55px !important;
   background: #000;
   border: 0 !important;
}

#footer:after {
   content: '';
   display: block;
   clear: both;
}

#footer .footer {
   display: block;
   width: 1180px;
   margin: 0 auto;
   padding-top: 45px !important;
}

.f-icons {
   background: #f2f2f2;
}

.f-icons__padding {
   max-width: 1236px;
   margin: 0 auto;
   padding: 15px 0;
}

.f-icons__inline {
   text-align: center;
}

.f-icons__inline:after {
   display: block;
   content: "";
   clear: both;
}

.f-icons__inline li {
   float: left;
   width: 18%;
}

.f-icons__inline li:first-child {
   text-align: left;
   width: 14%;
}

.f-icons__inline li:last-child {
   text-align: right;
   width: 14%;
}

.f-icons__inline span {
   background: url("http://img.lush.co.kr/images/core/footer-icons.svg")
      no-repeat center;
   height: 137px;
   display: inline-block
}

.f-icons__inline .f-icons__fat {
   width: 65px;
   background-position: -13px top
}

.f-icons__inline .f-icons__fco {
   width: 135px;
   background-position: -162px top
}

.f-icons__inline .f-icons__eb {
   width: 145px;
   background-position: -368px top
}

.f-icons__inline .f-icons__1v {
   width: 120px;
   background-position: -578px top
}

.f-icons__inline .f-icons__h {
   width: 97px;
   background-position: -771px top
}

.f-icons__inline .f-icons__n {
   width: 120px;
   background-position: -956px top
}
</style>
      <div class="f-icons">
         <div class="f-icons__padding">
            <ul class="f-icons__inline">
               <li><span class="f-icons__1v" title="100% Vegetarian"></span></li>
               <li><span class="f-icons__eb" title="Ethical Buying"></span></li>
               <li><span class="f-icons__fat" title="Fighting Animal Testing"></span></li>
               <li><span class="f-icons__fco"
                  title="Freshest Cosmetics Online"></span></li>
               <li><span class="f-icons__h" title="Handmade"></span></li>
               <li><span class="f-icons__n" title="Naked Packaging"></span></li>
            </ul>
         </div>
      </div>

      <div class="footer">


         <div class="inner_wrap">

            <div class="servicewrap">

               <div class="subwrap">
                  <div class="subinfo">
                     <div class="flogo">
                        <a href="../main/index.php"><img
                           src="https://rlzr1ac8g.toastcdn.net/data/skin/front/howling/img/banner/1bb87d41d15fe27b500a4bfcde01bb0e_24213.png"
                           alt="하단 로고" title="하단 로고"></a>
                     </div>
                     <!-- 기업선물 추가로 수정 -->
                     <dl>
                        <dt>
                           고객센터 <span>1644-2357</span>
                        </dt>
                        <dd class="email">
                           <button type="button"
                              onclick="popup_email('webmaster@lush.co.kr');">webmaster@lush.co.kr</button>
                        </dd>
                        <dd>
                           상담전화 13:00~16:00(평일)<br>상담톡 10:00~16:00(평일)
                        </dd>
                        <!-- <dd>상담전화 10/31까지<br><span style="display: inline-block;margin-left: 52px;">유선응대 임시중단</span><br>상담톡  10:00~16:00(평일)</dd> -->
                     </dl>
                     <dl>
                        <dt>
                           기업선물 <span>070-4713-8543</span>
                        </dt>
                        <dd class="email">
                           <a href="mailto:order@lush.co.kr">order@lush.co.kr</a>
                        </dd>
                     </dl>
                     <!-- //기업선물 추가로 수정 -->
                     <div class="f-sns__wrap">
                        <div id="instagramwrap">
                           <!--
         https://api.instagram.com/oauth/authorize/?client_id=[CLIENT-ID]&redirect_uri=[REDIRECT-URI]&response_type=token
         access_token=2227255662.69af6c4.b9b7e2c810e14ec19680291a1b4ad710
         -->


                           <div id="instaPics"></div>
                        </div>
                        <div class="f-sns">
                           <a href="http://www.facebook.com/lushkorea" target="_blank"><img
                              src="https://rlzr1ac8g.toastcdn.net/data/skin/front/howling/img/banner/52f6c55cf891959ca65e1610428cc356_26431.gif"
                              alt="페이스북" title="페이스북"></a> <a
                              href="https://www.instagram.com/lushkorea/" target="_blank"><img
                              src="https://rlzr1ac8g.toastcdn.net/data/skin/front/howling/img/banner/208240d3f950644cbdf2ab9a477b77a6_14927.gif"
                              alt="인스타" title="인스타"></a> <a
                              href="https://www.youtube.com/user/LUSHKOREA1" target="_blank"><img
                              src="https://rlzr1ac8g.toastcdn.net/data/skin/front/howling/img/banner/d98445044659438439009d27233deaf4_95992.gif"
                              alt="유튜브" title="유튜브"></a> <a
                              href="https://pf.kakao.com/_VEbUM" target="_blank"><img
                              src="https://rlzr1ac8g.toastcdn.net/data/skin/front/howling/img/banner/221e9ec7b393fdc9a8453f6c68bc8d54_86543.gif"
                              alt="카톡플친" title="카톡플친"></a> <a
                              href="https://m.post.naver.com/lushkr1"><img
                              src="https://rlzr1ac8g.toastcdn.net/data/skin/front/howling/img/banner/7b4254bd3cb48465244243c3a2271eaa_51248.gif"
                              alt="네이버 포스트" title="네이버 포스트"></a>
                        </div>
                     </div>
                  </div>
               </div>



               <div class="subwrapR">
                  <div class="subinfo">
                     <ul class="foot_menu">
                        <li><a href="/mypage/ver2021_scout.php">스카우트</a></li>
                        <!-- /mypage/scout.php -->
                        <li><a href="../service/company.php">회사소개</a></li>
                        <li class="policy"><a href="../service/private.php">개인정보처리방침</a></li>
                        <li><a
                           href="/main/html.php?htmid=service/privacy_cctv.html">영상정보관리지침</a></li>
                        <li><a href="../service/agreement.php">이용약관</a></li>
                        <!-- <li><a href="#;">판매약관</a></li> -->
                        <li><a href="/service/notice.php">고객센터</a></li>
                        <!-- <li><a href="../service/guide.php">GUIDE</a></li>
                  <li><a href="../service/cooperation.php">COOPERATION</a></li>
                  <li><a href="../service/index.php">CSCENTER</a></li> -->
                     </ul>

                     <!-- 구독 신청 start -->
                     <div class="newsletter">
                        <form name="lushnews" id="lushnews2"
                           action="../main/news_ps.php" method="post" target="ifrmProcess"
                           novalidate="novalidate">
                           <dl>
                              <dd>
                                 <input type="text" style="display: none;"> <input
                                    type="text" name="receiveNewsEmail" id="receiveNewsEmail2"
                                    placeholder="이메일 주소를 입력해 주세요." maxlength="30"> <a
                                    href="javascript:newsPopRdFirstOpen();"> <input
                                    type="button" class="btnicon" value="구독하기"
                                    style="cursor: pointer; text-indent: 0px; background-color: #000;">
                                 </a>
                              </dd>
                              <dt>
                                 <strong>매주 금요일 오후, 구독자님을 위한 제품과 브랜드 이야기를 전해드립니다.</strong> 구독은
                                 언제든지 해지하실 수 있습니다. <a href="/service/newsletter.php"
                                    class="btn-newsletter">미리보기</a>
                              </dt>
                           </dl>
                           <!-- //기업선물 추가로 수정 -->
                        </form>
                     </div>
                     <!-- 구독 신청 end -->

                     <div class="copyright">
                        <address>서울특별시 서초구 서운로 138 (서초동아타워) 6층 | 사이트 운영자 :
                           주식회사 러쉬코리아 | 대표이사 : 우미령</address>
                        사업자 등록번호 : 201-81-77964 <a
                           onclick="popup_bizInfo('2018177964');" alt="사업자정보확인">사업자정보확인</a>
                        | 통신판매업 신고번호 : 2012-서울서초-0647 | 개인정보보호책임자 : 우승용
                        <!-- 기업선물 추가로 수정 -->
                        <div class="copy">COPYRIGHT © LUSHKOREA CO. LTD. ALL
                           RIGHTS RESERVED.</div>

                     </div>
                  </div>
               </div>

            </div>
         </div>
      </div>

   </div>
</body>
</html>