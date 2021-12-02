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
   -webkit-font-smoothing: antialiased;
}

div {
    display: block;
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
   margin: 0;
   padding-bottom: 300px;
   background: #fdda40
      url(https://www.lush.co.kr/data/skin/front/howling/img/scout/scout_page_bg.jpg)
      no-repeat 50% top;
   display: block;
   width: 100%;
   padding: 0 0 300px;
}

.sct_area01 {
   height: 613px;
   background:
      url(https://www.lush.co.kr/data/skin/front/howling/img/scout/scout_page_visual.gif)
      50% 0 no-repeat;
}


.inner_wrap {
   position: relative;
   width: 1180px;
   margin: 0 auto;
}

.sct_area01 dl {
   padding-top: 165px;
   padding-left: 80px;
   text-align: center;
}

.sct_area01 dt {
    padding-bottom: 26px;
}

img {
    border: none;
    vertical-align: top;
}

.hide {
   display: none;
}

.sct_area01 dd {
    color: #0c4200;
    font-size: 16px;
    line-height: 26px;
}

.sct_area02 .bg_white {
    position: relative;
    width: 1600px;
    margin: 0 auto;
    padding: 70px 0 125px;
    background: #fff;
}

.sct_area02 .tab {
    text-align: center;
    padding-bottom: 90px;
}

.sct_area02 .tab button.selected {
    border-color: #146802;
    color: #146802;
    font-family: 'notokrB';
}

.sct_area02 .tab button {
    display: inline-block;
    width: 140px;
    margin: 0 146px 0 168px;
    padding-bottom: 3px;
    border-bottom: 4px solid #fff;
    font-size: 18px;
    line-height: 22px;
    color: #8f8f8f;
}
.sct_area02 .tab a span {
    display: block;
}

.duczzi_pg_area {
    padding-bottom: 80px;
    height : 262px;
    background: url(https://www.lush.co.kr/data/skin/front/howling/img/scout/scout_duczzi_bg02.png) no-repeat right 100px;
}
.sct_area02 .partbx {
    font-size: 16px;
    line-height: 26px;
    height: 106px;
}

.sct_area02 .partbx .tit {
    float: left;
    padding-left: 118px;
}

.sct_area02 .partbx .cn {
    float: right;
    padding-top: 7px;
    width: 630px;
}

.sct_area02 .partbx .btn_scout_line {
    display: inline-block;
    padding: 3px 2px;
    margin-top: 11px;
    border-bottom: 1px solid #333333;
    font-size: 14px;
    line-height: 14px;
    color: #1e1e1e;
}

.sct_area02 .partbx .btn_scout_line i {
    display: inline-block;
    vertical-align: top;
    width: 4px;
    height: 7px;
    margin-top: 4px;
    margin-left: 5px;
    background: url(https://www.lush.co.kr/data/skin/front/howling/img/scout/btn_scoutblet.png) no-repeat 0 0;
}

.sct_area02 .partbx.zone {
    margin-top: 50px;
    height: 106px;
}

.sct_area02 .partbx.zone .cn {
    padding-top: 20px;
}

.sct_area02 .partbx .cn .font-m {
    font-family: 'notokrM';
}

.duczzi_pg_area02 {
    padding: 85px 0 0;
    border-top: 1px solid #f5cc79;
}

.duczzi_pg_area02 .tit {
    padding-bottom: 100px;
    text-align: center;
    color: #146802;
    line-height: 36px;
    font-size: 34px;
    font-family: 'notokrM';
}

.duczzi_pg_area02 .swiper-container {
    padding: 0 40px;
}

.swiper-container {
    margin: 0 auto;
    position: relative;
    overflow: hidden;
    list-style: none;
    z-index: 1;
}

.swiper-wrapper {
    position: relative;
    width: 100%;
    height: 100%;
    z-index: 1;
    display: flex;
    transition-property: transform,-webkit-transform;
    box-sizing: content-box;
}

.swiper-slide {
    flex-shrink: 0;
    height: 100%;
    position: relative;
    transition-property: transform,-webkit-transform;
}

.dz_item {
    width: 185px;
    margin: 0 auto;
    text-align: center;
}

.dz_item .dz_thumb img {
    width: 128px;
    margin: 0 auto;
}

.dz_item .dz_zone {
    margin-top: 11px;
    font-size: 16px;
    line-height: 20px;
    color: #000;
}

.dz_item .dz_name {
    font-size: 16px;
    line-height: 24px;
    margin: 2px 0;
    color: #000;
    font-family: 'notokrM';
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;
}

.dz_item .dz_desc {
    color: #8f8f8f;
    line-height: 20px;
    word-wrap: break-word;
    word-break: keep-all;
}

.swiper-button-next.swiper-button-disabled, .swiper-button-prev.swiper-button-disabled {
    opacity: .35;
    cursor: auto;
    pointer-events: none;
}

.duczzi_pg_area02 .swiper-button-next {
    right: 0;
    background: url(https://www.lush.co.kr/data/skin/front/howling/img/scout/new_dz_next_new.png) 100% 0 no-repeat;
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

.duczzi_pg_area02 .swiper-button-prev {
    left: 0;
    right: auto;
    background: url(https://www.lush.co.kr/data/skin/front/howling/img/scout/new_dz_prev_new.png) no-repeat;
}

.swiper-container .swiper-notification {
    position: absolute;
    left: 0;
    top: 0;
    pointer-events: none;
    opacity: 0;
    z-index: -1000;
}

.duczzi_pg_area03 {
    padding-top: 127px;
}

.tab_menu {
    border-bottom: 2px solid #146802;
    height: 38px;
}

ul, li {
    margin: 0;
    padding: 0;
    list-style: none;
}

.tab_menu li {
    position: relative;
    float: left;
    width: 12.5%;
    text-align: center;
    font-size: 18px;
}

.tab_menu li.ative a, .tab_menu li.ui-state-active a {
    color: #fff;
    background: #146802;
}

.tab_menu li a {
    display: block;
    color: #146802;
    line-height: 38px;
}

.tab_menu li.ative a i, .tab_menu li.ui-state-active a i {
    display: none;
}

.tab_menu li.ative i {
    position: relative;
    top: auto;
    right: auto;
    margin-top: -2px;
    margin-left: -2px;
}

.tab_menu li i img {
    vertical-align: top;
}

.intro_text {
    padding: 41px 0 44px;
    text-align: center;
    color: #000000;
    font-size: 24px;
    line-height: 26px;
}

.intro_text em {
    color: #146802;
    font-weight: 600;
}

.hide {
    display: none;
}

.zone_duczzi_wrap {
    position: relative;
    padding: 0 575px 0 0;
}

.zone_duczzi_wrap .list_area {
    min-height: 782px;
}

.duczzi_ul {
    overflow: hidden;
    width: 100%;
    padding-top: 12px;
}

.duczzi_ul li {
    float: left;
    width: 124px;
    height: 180px;
    margin: 0 20px 0 0;
    text-align: center;
}

a {
    color: #717171;
    text-decoration: none;
}

.duczzi_ul li .thumb {
    width: 103px;
    height: 103px;
    margin: 0 auto;
    overflow: hidden;
}

.duczzi_ul li .thumb > span > img {
    width: 103px !important;
}

.duczzi_ul li .nm {
    margin-top: 8px;
    padding: 0 2px;
    height: 52px;
    color: #333;
    font-weight: 500;
    font-size: 18px;
    line-height: 24px;
}

.btn_scout_more {
    display: block;
    width: 576px;
    height: 50px;
    line-height: 50px;
    color: #fff;
    background: #000;
    text-align: center;
}

.zone_duczzi_wrap .view_area {
    position: absolute;
    top: 0;
    right: 0;
    width: 575px;
    height: 683px   ;
    text-align: center;
    background: url(https://www.lush.co.kr/data/skin/front/howling/img/scout/view_area.gif) no-repeat;
}

.zone_duczzi_wrap .view_area .inner {
    position: relative;
    height: 683px;
    padding: 75px 120px 75px 120px;    
    box-sizing: border-box;
}

.zone_duczzi_wrap .view_area .inner .share {
    position: absolute;
    top: 105px;
    right: 80px;
    width: 38px;
}

.zone_duczzi_wrap .view_area .inner .share a {
    display: block;
    margin-bottom: 13px;
}

.zone_duczzi_wrap .view_area .inner .view_inner {
    display: table;
    width: 100%;
    height: 100%;
}

.zone_duczzi_wrap .view_area .inner .align_w {
    width: 100%;
    display: table-cell;
    vertical-align: middle;
}

.zone_duczzi_wrap .view_area .inner .thumb {
    width: 200px;
    height: 200px;
    margin: 0 auto;
}

.zone_duczzi_wrap .view_area .inner .name {
    margin-top: 28px;
    font-size: 34px;
    color: #146802;
    font-family: 'notokrB';
    line-height: 36px;
    word-wrap: break-word;
    word-break: keep-all;
}

.zone_duczzi_wrap .view_area .inner .desc {
    margin: 20px 0 25px;
    padding: 0 35px;
    font-size: 16px;
    line-height: 26px;
    color: #000;
}

.zone_duczzi_wrap .view_area .inner .thumb img {
    width: 100%;
}

.duczzi_pg_noti {
    position: relative;
    padding-left: 190px;
    line-height: 26px;
    margin-top: 70px;
}

.duczzi_pg_noti dt {
    position: absolute;
    top: 0;
    left: 0;
    font-size: 18px;
}

dl:after, dt:after, dd:after {
    content: '';
    display: block;
    clear: both;
}

.duczzi_pg_noti dd:before {
    content: '-';
    display: inline-block;
    width: 11px;
}

.duczzi_js_area {
    padding-bottom: 90px;
    border-bottom: 1px solid #f5cc79;
    background: url('https://lush.co.kr/data/skin/front/howling/img/scout/scout_jealush_bg02.png') no-repeat 96% 120px;
}

.sct_area02 .partbx {
    font-size: 16px;
    line-height: 26px;
}

.sct_area02 .partbx .tit {
    float: left;
    padding-left: 118px;
}

.sct_area02 .duczzi_js_area .partbx .cn {
    padding-top: 0;
}

.sct_area02 .partbx .cn {
    float: right;
    width: 630px;
}

.check_tit {
    padding-left: 20px;
    background: url('https://lush.co.kr/data/skin/front/howling/img/scout/scout_check.png') no-repeat 0 6px;
    font-family: 'notokrM';
}

.mt10 {
    margin-top: 10px;
}

.check_tit.empty {
    margin-top: 25px;
}

.sct_area02 .partbx.info02 {
    margin-top: 80px;
}

.sct_area02 .partbx .sub-tit {
    float: left;
    padding-left: 148px;
}

.jealush_noti_area {
    position: relative;
    padding-left: 543px;
}

.mt70 {
    margin-top: 70px;
}

.jealush_noti_area dt {
    position: absolute;
    top: 0;
    left: 109px;
    font-size: 18px;
    color: #000;
}

.jealush_noti_area dd {
    overflow: hidden;
    width: 100%;
    color: #353535;
}

.jealush_noti_area dd p {
    float: left;
    width: 280px;
    margin-bottom: 10px;
}

.jealush_noti_area dd p:before {
    content: '-';
    display: inline-block;
    width: 11px;
}

.jealush_noti_area dd p.even {
    float: left;
    width: 340px;
}

</style>
</head>
<body>
   <c:import url="../main/mainHeader.jsp"></c:import>
   <div id="container" class="">


      <!-- 본문 시작 : start -->
      <div id="content">
         <div class="sct_area01">
            <div class="inner_wrap">
               <dl>
                  <dt>
                     <img src="https://www.lush.co.kr/data/skin/front/howling/img/scout/scout_page_tit.png"
                        alt="">
                  </dt>
                  <dd>
                     러쉬 스카우트를 통해 우리가 옳다고 믿는 <br> 철학이 담긴 러쉬 덕찌를 모으고 <br> 덕찌에
                     담긴 윤리적인 가치를 실제로 행동하여 <br>아름다운 세상으로의 변화에 꾸준히 기여하고자 합니다.
                  </dd>
               </dl>
            </div>

         </div>
         <div class="sct_area02">
            <div class="bg_white">
               <div class="inner_wrap">
                  <div id="tabs">
                     <div id="ntab01" style="">
                        <div class="tab">
                           <button class="1btn selected"><span>덕찌</span><br><span>PROGRAM</span></button>
                           <button class="2btn"><span>젤러쉬</span><br><span>MEMBER</span></button>
                        </div>
                        <div class="duczzi_pg_area">
                           <div class="partbx">
                              <div class="tit">
                                 <img
                                    src="https://www.lush.co.kr/data/skin/front/howling/img/scout/scout_duczzi01.png"
                                    alt="">
                              </div>
                              <div class="cn">
                                 <p>우리가 옳다고 믿는 가치에 대한 이야기가 담겨있는 러쉬 만의 뱃지(Badge)</p>
                                 <p class="font-m">러쉬 덕찌가 이야기 해주는 나는 어떤 사람일까요?</p>
                                 <a href="/mypage/ver1_my_ducczi2021.php"
                                    class="btn_scout_line">덕찌력 보기 <i></i></a>
                              </div>
                           </div>
                           <div class="partbx zone">
                              <div class="tit">
                                 <img
                                    src="https://www.lush.co.kr/data/skin/front/howling/img/scout/scout_duczzi02.png"
                                    alt="">
                              </div>
                              <div class="cn">
                                 <p>덕찌력을 차곡차곡 쌓는 4가지 덕찌 존</p>
                                 <a href="#none" class="btn_scout_line openMask02"
                                    viewpop02=".ducczi_zone_pop02">덕찌 존 알아보기 <i></i></a>
                              </div>
                           </div>
                        </div>
                        <div class="duczzi_pg_area02">
                           <div class="tit">방금 만들어진 따끈한 덕찌</div>
                           <link rel="stylesheet"
                              href="/data/skin/mobile/howling_M/css/swiper.min.css">
                           <link rel="stylesheet"
                              href="/data/skin/front/howling/css/jquery.bxslider.css">
                           <script
                              src="/data/skin/front/howling/js/jquery.bxslider.min.js"></script>
                           <div
                              class="swiper-container new_duczzi_swiper swiper-container-horizontal">
                              <div class="duczzi_bxslider swiper-wrapper "
                                 style="transform: translate3d(0px, 0px, 0px);">
                                 <div class="swiper-slide swiper-slide-active"
                                    style="width: 275px;">
                                    <div class="dz_item">
                                       <div class="dz_thumb">
                                          <img src="https://www.lush.co.kr/data/ducczi/d_imageOn/493_d_imageOn.png" alt="">
                                       </div>
                                       <div class="dz_zone">디지털 액션 존</div>
                                       <div class="dz_name">셀프프리저빙덕찌</div>
                                       <div class="dz_desc">[셀프 프리저빙의 모든 것] 아티클을 읽고 댓글 작성 시
                                          증정</div>
                                    </div>
                                 </div>
                              </div>
                              <!-- Add Arrows -->
                              <div class="swiper-button-next swiper-button-disabled"
                                 tabindex="0" role="button" aria-label="Next slide"
                                 aria-disabled="true"></div>
                              <div class="swiper-button-prev swiper-button-disabled"
                                 tabindex="0" role="button" aria-label="Previous slide"
                                 aria-disabled="true"></div>
                              <span class="swiper-notification" aria-live="assertive"
                                 aria-atomic="true"></span>
                           </div>
                           <!-- <script>
                            $(function(){
                              $('.duczzi_bxslider').bxSlider({
                                //auto: true,
                                pager: true,
                                captions: false,
                                minSlides:'1',
                                maxSlides:'4',
                                //moveSlides:'1',
                                slideWidth: 280,
                                //slideMargin: 95
                              });
                            });
                        </script> -->
                           <script src="/data/skin/mobile/howling_M/js/swiper.min.js"></script>
                           <script>
                              var swiper = new Swiper(
                                    '.new_duczzi_swiper',
                                    {
                                       slidesPerView : 4,
                                       //spaceBetween: 30,
                                       navigation : {
                                          nextEl : '.swiper-button-next',
                                          prevEl : '.swiper-button-prev',
                                       },
                                    });
                           </script>

                        </div>

                        <div class="duczzi_pg_area03" id="tabs_zone">
                           <ul class="tab_menu">
                              <li class="DuccziZone_list dz_idx_31 ative"><a
                                 class="DuccziZone_bt" dz_idx="31" style="cursor: pointer;">디지털
                                    액션 존 <i><img
                                       src="https://www.lush.co.kr/data/skin/front/howling/img/scout/icon_new.png"
                                       alt=""></i>
                              </a></li>
                              <li class="DuccziZone_list dz_idx_32 "><a
                                 class="DuccziZone_bt" dz_idx="32" style="cursor: pointer;">에티컬
                                    바잉 존 </a></li>
                              <li class="DuccziZone_list dz_idx_33 "><a
                                 class="DuccziZone_bt" dz_idx="33" style="cursor: pointer;">채러티
                                    존 </a></li>
                              <li class="DuccziZone_list dz_idx_34 "><a
                                 class="DuccziZone_bt" dz_idx="34" style="cursor: pointer;">리미티드
                                    존 </a></li>
                              <li class="DuccziZone_list dz_idx_endZone "><a
                                 class="DuccziZone_bt" dz_idx="endZone"
                                 style="cursor: pointer;">굳바이 존 </a></li>
                           </ul>
                           <div id="tabs_zone-1">
                              <p class="intro_text p_dz_zone_text " id="p_dz_zone_text_31">
                                 <em>디지털 액션 존</em> 디지털 덕찌를 모으며 선한 발자국을 남긴 후 받은 덕찌 존입니다
                              </p>
                              <p class="intro_text p_dz_zone_text hide"
                                 id="p_dz_zone_text_32">
                                 <em>에티컬 바잉 존</em> 공정한 과정을 거쳐 얻은 보물같은 원재료, 그 특별한 이야기가 담긴 제품의
                                 덕찌 존입니다
                              </p>
                              <p class="intro_text p_dz_zone_text hide"
                                 id="p_dz_zone_text_33">
                                 <em>채러티 존</em> 진정성 있는 기부의 메시지가 담긴 채러티 덕찌를 모으는 존입니다
                              </p>
                              <p class="intro_text p_dz_zone_text hide"
                                 id="p_dz_zone_text_34">
                                 <em>리미티드 존</em> 새로운 즐거움이 가득! 러쉬에서 특별한 제품을 경험한 후 받은 덕찌 존입니다
                              </p>
                              <p class="intro_text p_dz_zone_text hide"
                                 id="p_dz_zone_text_endZone">
                                 <em>굳바이 존</em> 이제는 증정되지 않는 덕찌입니다. 아쉽지만 새로워질 덕찌를 기대해주세요!
                              </p>
                              <div class="zone_duczzi_wrap">

                                 <div class="list_area duczzi_list_area">
                                    <ul class="duczzi_ul">
                                       <li><a class="viewDucczi_bt" d_idx="493"
                                          style="cursor: pointer">
                                             <p class="thumb">
                                                <span><img
                                                   src="https://www.lush.co.kr/data/ducczi/d_imageOn/ztu_thum1_493_d_imageOn.png"
                                                   width="106"></span>
                                             </p>
                                             <p class="nm">셀프프리저빙덕찌</p>
                                       </a></li>
                                       <li><a class="viewDucczi_bt" d_idx="492"
                                          style="cursor: pointer">
                                             <p class="thumb">
                                                <span><img
                                                   src="https://www.lush.co.kr/data/ducczi/d_imageOn/ztu_thum1_492_d_imageOn.png"
                                                   width="106"></span>
                                             </p>
                                             <p class="nm">욕조로모여찌</p>
                                       </a></li>
                                       <li><a class="viewDucczi_bt" d_idx="491"
                                          style="cursor: pointer">
                                             <p class="thumb">
                                                <span><img
                                                   src="https://www.lush.co.kr/data/ducczi/d_imageOn/ztu_thum1_491_d_imageOn.png"
                                                   width="106"></span>
                                             </p>
                                             <p class="nm">11월 리뷰해찌</p>
                                       </a></li>
                                       <li><a class="viewDucczi_bt" d_idx="488"
                                          style="cursor: pointer">
                                             <p class="thumb">
                                                <span><img
                                                   src="https://www.lush.co.kr/data/ducczi/d_imageOn/ztu_thum1_488_d_imageOn.png"
                                                   width="106"></span>
                                             </p>
                                             <p class="nm">11월러쉬와만났찌</p>
                                       </a></li>
                                       <li><a class="viewDucczi_bt" d_idx="487"
                                          style="cursor: pointer">
                                             <p class="thumb">
                                                <span><img
                                                   src="https://www.lush.co.kr/data/ducczi/d_imageOn/ztu_thum1_487_d_imageOn.png"
                                                   width="106"></span>
                                             </p>
                                             <p class="nm">11월또담아찌</p>
                                       </a></li>
                                       <li><a class="viewDucczi_bt" d_idx="485"
                                          style="cursor: pointer">
                                             <p class="thumb">
                                                <span><img
                                                   src="https://www.lush.co.kr/data/ducczi/d_imageOn/ztu_thum1_485_d_imageOn.png"
                                                   width="106"></span>
                                             </p>
                                             <p class="nm">DDD덕찌 #2</p>
                                       </a></li>
                                       <li><a class="viewDucczi_bt" d_idx="478"
                                          style="cursor: pointer">
                                             <p class="thumb">
                                                <span><img
                                                   src="https://www.lush.co.kr/data/ducczi/d_imageOn/ztu_thum1_478_d_imageOn.png"
                                                   width="106"></span>
                                             </p>
                                             <p class="nm">DDD덕찌 #1</p>
                                       </a></li>
                                       <li><a class="viewDucczi_bt" d_idx="468"
                                          style="cursor: pointer">
                                             <p class="thumb">
                                                <span><img
                                                   src="https://www.lush.co.kr/data/ducczi/d_imageOn/ztu_thum1_468_d_imageOn.png"
                                                   width="106"></span>
                                             </p>
                                             <p class="nm">욕실의비밀찾아찌</p>
                                       </a></li>
                                       <li><a class="viewDucczi_bt" d_idx="467"
                                          style="cursor: pointer">
                                             <p class="thumb">
                                                <span><img
                                                   src="https://www.lush.co.kr/data/ducczi/d_imageOn/ztu_thum1_467_d_imageOn.png"
                                                   width="106"></span>
                                             </p>
                                             <p class="nm">더티10주년덕찌</p>
                                       </a></li>
                                       <li><a class="viewDucczi_bt" d_idx="466"
                                          style="cursor: pointer">
                                             <p class="thumb">
                                                <span><img
                                                   src="https://www.lush.co.kr/data/ducczi/d_imageOn/ztu_thum1_466_d_imageOn.png"
                                                   width="106"></span>
                                             </p>
                                             <p class="nm">동물실험반대덕찌</p>
                                       </a></li>
                                       <li><a class="viewDucczi_bt" d_idx="455"
                                          style="cursor: pointer">
                                             <p class="thumb">
                                                <span><img
                                                   src="https://www.lush.co.kr/data/ducczi/d_imageOn/ztu_thum1_455_d_imageOn.png"
                                                   width="106"></span>
                                             </p>
                                             <p class="nm">원스왑해찌</p>
                                       </a></li>
                                       <li><a class="viewDucczi_bt" d_idx="452"
                                          style="cursor: pointer">
                                             <p class="thumb">
                                                <span><img
                                                   src="https://www.lush.co.kr/data/ducczi/d_imageOn/ztu_thum1_452_d_imageOn.png"
                                                   width="106"></span>
                                             </p>
                                             <p class="nm">나다워져찌</p>
                                       </a></li>
                                       <li><a class="viewDucczi_bt" d_idx="446"
                                          style="cursor: pointer">
                                             <p class="thumb">
                                                <span><img
                                                   src="https://www.lush.co.kr/data/ducczi/d_imageOn/ztu_thum1_446_d_imageOn.png"
                                                   width="106"></span>
                                             </p>
                                             <p class="nm">러쉬스카우트덕찌</p>
                                       </a></li>
                                       <li><a class="viewDucczi_bt" d_idx="444"
                                          style="cursor: pointer">
                                             <p class="thumb">
                                                <span><img
                                                   src="https://www.lush.co.kr/data/ducczi/d_imageOn/ztu_thum1_444_d_imageOn.png"
                                                   width="106"></span>
                                             </p>
                                             <p class="nm">샴푸바찾아찌</p>
                                       </a></li>
                                       <li><a class="viewDucczi_bt" d_idx="440"
                                          style="cursor: pointer">
                                             <p class="thumb">
                                                <span><img
                                                   src="https://www.lush.co.kr/data/ducczi/d_imageOn/ztu_thum1_440_d_imageOn.png"
                                                   width="106"></span>
                                             </p>
                                             <p class="nm">다시태어나찌</p>
                                       </a></li>
                                       <li><a class="viewDucczi_bt" d_idx="436"
                                          style="cursor: pointer">
                                             <p class="thumb">
                                                <span><img
                                                   src="https://www.lush.co.kr/data/ducczi/d_imageOn/ztu_thum1_436_d_imageOn.png"
                                                   width="106"></span>
                                             </p>
                                             <p class="nm">코코넛라임덕찌</p>
                                       </a></li>
                                       <li id="makeDucczi"><a class="viewDucczi_bt"
                                          d_idx="makeDucczi" style="cursor: pointer;">
                                             <p class="thumb">
                                                <span><img
                                                   src="https://www.lush.co.kr/data/skin/front/howling/img/scout/myduczzi.png"
                                                   alt=""></span>
                                             </p>
                                             <p class="nm">
                                                내가 만들어보는<br>덕찌
                                             </p>
                                       </a></li>

                                       <span id="more_page_data"> <input type="hidden"
                                          id="more_total_page" value="2"> <input
                                          type="hidden" id="more_now_page" value="1"> <input
                                          type="hidden" id="more_dz_idx" value="31">
                                       </span>
                                    </ul>



                                    <div class="page_more_bt ">
                                       <span class="btn_scout_more">더보기</span>
                                    </div>


                                 </div>

                                 <!-- 상세 start -->
                                 <div class="view_area">
                                    <div class="inner">
                                       <p class="share">
                                          <a style="" class="  openMask02" viewpop02=".url_pop"><img
                                             src="https://www.lush.co.kr/data/skin/front/howling/img/scout/share_url.png"
                                             alt="공유"></a>
                                       </p>
                                       <div class="view_inner">
                                          <div class="align_w">
                                             <div class="thumb">
                                                <img src="https://www.lush.co.kr/data/ducczi/d_imageOn/493_d_imageOn.png"
                                                   alt="">
                                             </div>
                                             <p class="name">셀프프리저빙덕찌</p>
                                             <p class="desc">[셀프 프리저빙의 모든 것] 아티클을 읽고 댓글 작성 시 증정</p>
                                             <p class="get">
                                                <a
                                                   href="https://www.lush.co.kr/board/view.php?&amp;bdId=article&amp;sno=271"
                                                   target="_blank"><img
                                                   src="https://www.lush.co.kr/data/skin/front/howling/img/scout/duczzi_save.png"
                                                   alt="덕찌 받기"></a>
                                             </p>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                                 <!-- 상세 end -->

                              </div>
                           </div>


                        </div>
                        <dl class="duczzi_pg_noti">
                           <dt>유의사항</dt>
                           <dd>러쉬 홈페이지 회원에게만 제공됩니다.</dd>
                           <dd>본 프로그램은 2021년 한 해 동안 적용됩니다.</dd>
                           <dd>이벤트나 혜택은 사정에 따라 변경될 수 있습니다.</dd>
                        </dl>
                     </div>
                     <div id="ntab02" style="display: none;">
                        <div class="tab">
                           <button class="1btn selected"><span>덕찌</span><br><span>PROGRAM</span></button>
                           <button class="2btn"><span>젤러쉬</span><br><span>MEMBER</span></button>
                        </div>
                        <div class="duczzi_js_area">
                           <div class="partbx jealush">
                              <div class="tit">
                                 <img
                                    src="https://lush.co.kr/data/skin/front/howling/img/scout/scout_jealushi01.png"
                                    alt="">
                              </div>
                              <div class="cn mt30">
                                 <p>질투가 날 정도로 가장 러쉬스러운 사람들의 모임&nbsp;</p>
                                 <p>브랜드 철학에 공감하고 온라인 상으로 표현하는 브랜드 홍보대사&nbsp;&nbsp;</p>
                              </div>
                           </div>
                           <div class="partbx info01">
                              <div class="sub-tit">
                                 <img
                                    src="https://lush.co.kr/data/skin/front/howling/img/scout/scout_jealushi02.png"
                                    alt="">
                              </div>
                              <div class="cn">
                                 <p class="check_tit">단 한번의 기회</p>
                                 <p class="mt10">모집 시기 : 1년에 단 한번, 연 초 모집</p>
                                 <p>선발 기준 : 홈페이지를 통해 별도 공지 예정</p>
                                 <p class="check_tit empty">든든한 동반자!</p>
                                 <p class="mt10">러쉬를 사랑하고 러쉬의 철학과 가치를 행동으로 옮길 수 있다면 누구라도
                                    ‘젤러쉬’</p>
                              </div>
                           </div>
                           <div class="partbx info02">
                              <div class="sub-tit mt10">
                                 <img
                                    src="https://lush.co.kr/data/skin/front/howling/img/scout/scout_jealushi03.png"
                                    alt="">
                              </div>
                              <div class="cn">
                                 <div class="jsh_3nd">
                                    <p class="check_tit">캠페인 및 이벤트 우선 참여</p>
                                    <p class="check_tit">비 정기 오프라인 모임</p>
                                    <p class="check_tit">신제품 우선 체험</p>
                                    <p class="check_tit">젤러쉬 덕찌</p>
                                 </div>
                                 <a href="/board/list.php?bdId=jeallushContents"
                                    target="_blank" class="btnicon btn_blackbx">지난 젤러쉬 활동 보기
                                    <i></i>
                                 </a>
                              </div>
                           </div>
                        </div>
                        <dl class="jealush_noti_area mt70">
                           <dt>유의사항</dt>
                           <dd>
                              <p>젤러쉬 선발 기준은 매년 다를 수 있습니다.</p>
                              <p class="even">러쉬 홈페이지 회원만 신청할 수 있습니다.</p>
                              <p>본 프로그램은 2021년 한 해 동안 적용됩니다.</p>
                              <p class="even">이벤트나 혜택은 사정에 따라 변경될 수 있습니다.</p>
                           </dd>
                        </dl>
                     </div>
                  </div>
               </div>
            </div>
         </div>

         <form id="frmSearchDucczi" name="frmSearchDucczi" method="get">
            <input type="hidden" id="ducczi_page" name="page" value="1">
            <input type="hidden" id="dz_idx" name="dz_idx" value="31"> <input
               type="hidden" id="page_type" name="page_type" value="more">
         </form>

      </div>
      <!-- 본문 끝 : end -->

   </div>
   
   <script type="text/javascript">
   
   
   $(".1btn").click(function(){
	   $('#ntab01').css("display", "");
	   $('#ntab02').css("display", "none");
	   $('.1btn').addClass("selected");
	   $('.2btn').removeClass("selected");
   });
   
   $(".2btn").click(function(){
	   $('#ntab02').css("display", "");
	   $('#ntab01').css("display", "none");
	   $('.1btn').removeClass("selected");
	   $('.2btn').addClass("selected");
   });
   </script>
   
   <c:import url="../main/mainFooter.jsp"></c:import>


</body>
</html>