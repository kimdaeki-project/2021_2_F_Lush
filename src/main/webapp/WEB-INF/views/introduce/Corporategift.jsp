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
   background:
      url('https://www.lush.co.kr/data/skin/front/howling/img/etc/bg_corporategift.jpg')
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

.gift-content {
   width: 1180px;
   margin: 0 auto;
   padding: 138px 0 40px;
   color: #000;
   text-align: center;
}

.gift-content .gift-info {
   font-family: "notokrR";
   font-size: 20px;
   line-height: 32px;
   letter-spacing: -0.3px;
}

.gift-content .gift-info span {
   display: inline-block;
}

.gift-content .gift-info span+span {
   display: inline-block;
   margin-left: 30px;
}

.gift-content .gift-info a {
   color: #1ea24d;
   display: inline-block;
   margin-left: 14px;
   border-bottom: 1px solid #1ea24d;
}

.gift-content .gift-info .email {
   margin-top: 7px;
}

.gift-content .gift-reason {
   padding-top: 134px;
}

.gift-content .gift-reason h3 {
   margin-bottom: 40px;
   font-family: "notokrB";
   font-size: 36px;
   line-height: 48px;
   color: #000;
}

.gift-content .product {
   position: relative;
}

.gift-content .product a {
   position: absolute;
   display: block;
   margin: 0;
   z-index: 1;
}

.gift-content .product .link01 {
   width: 24%;
   height: 3.9%;
   top: 6.5%;
   left: 38%;
}

.gift-content .product .link02 {
   width: 23.3%;
   height: 20.8%;
   top: 12.2%;
   left: 8.9%;
}

.gift-content .product .link03 {
   width: 23.3%;
   height: 20.8%;
   top: 12.2%;
   left: 38.5%;
}

.gift-content .product .link04 {
   width: 23.3%;
   height: 20.8%;
   top: 12.2%;
   left: 68.3%;
}

.gift-content .product .link05 {
   width: 32%;
   height: 3.9%;
   top: 39.1%;
   left: 34%;
}

.gift-content .product .link06 {
   width: 23.3%;
   height: 20.8%;
   top: 45%;
   left: 8.9%;
}

.gift-content .product .link07 {
   width: 23.3%;
   height: 20.8%;
   top: 45%;
   left: 38.5%;
}

.gift-content .product .link08 {
   width: 23.3%;
   height: 20.8%;
   top: 45%;
   left: 67.3%;
}

.gift-content .product .link09 {
   width: 31.6%;
   height: 3.9%;
   top: 71.8%;
   left: 34.5%;
}

.gift-content .product .link10 {
   width: 23.3%;
   height: 22.6%;
   top: 77.7%;
   left: 8.9%;
}

.gift-content .product .link11 {
   width: 23.3%;
   height: 22.6%;
   top: 77.7%;
   left: 38.5%;
}

.gift-content .product .link12 {
   width: 23.3%;
   height: 22.6%;
   top: 77.7%;
   left: 68.2%;
}
</style>
         <div class="brand-visual">
            <h2 class="b-txt01">기업 선물</h2>
            <p class="b-txt02">세상에 단 하나뿐인 가치를 선물하세요</p>
         </div>

         <div class="gift-content">
            <div class="gift-info">
               <p>소중한 직원과 클라이언트를 위해 가치 있는 선물을 준비해 보세요.</p>
               <p>향기로운 제품에 담긴 신선한 에티컬 스토리가 모두에게 잊지 못할 순간을 선사할 거예요.</p>
               <p class="email">
                  <span>Email<a href="mailto:order@lush.co.kr">order@lush.co.kr</a></span>
                  <span>문의처<a href="tel:070-4713-8543">070-4713-8543</a></span>
               </p>
            </div>
            <div class="gift-reason">
               <h3>러쉬 기프트가 특별한 이유</h3>
               <img
                  src="https://www.lush.co.kr/data/skin/front/howling/img/etc/corporategift_top.jpg"
                  alt="">
               <div class="product">
                  <img
                     src="https://www.lush.co.kr/data/skin/front/howling/img/etc/corporategift_product.jpg"
                     alt=""> <a href="/goods/goods_list.php?cateCd=001001"
                     class="link01"></a> <a href="/goods/goods_view.php?goodsNo=41"
                     class="link02"></a> <a
                     href="/goods/goods_view.php?goodsNo=1000001226" class="link03"></a>
                  <a href="/goods/goods_view.php?goodsNo=201" class="link04"></a> <a
                     href="/goods/goods_list.php?cateCd=001009" class="link05"></a> <a
                     href="/goods/goods_view.php?goodsNo=1000001768" class="link06"></a>
                  <a href="/goods/goods_view.php?goodsNo=1000001731" class="link07"></a>
                  <a href="/goods/goods_view.php?goodsNo=1000001770" class="link08"></a>
                  <a href="/goods/goods_list.php?cateCd=001003" class="link09"></a>
                  <a href="/goods/goods_view.php?goodsNo=97" class="link10"></a> <a
                     href="/goods/goods_view.php?goodsNo=152" class="link11"></a> <a
                     href="/goods/goods_view.php?goodsNo=1000000838" class="link12"></a>
               </div>
            </div>
         </div>

      </div>
      <!-- 본문 끝 : end -->

   </div>
   <c:import url="../main/mainFooter.jsp"></c:import>

</body>
</html>