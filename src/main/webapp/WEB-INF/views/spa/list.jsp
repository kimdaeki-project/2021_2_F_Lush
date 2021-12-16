<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>

<html>

<head>
   <meta charset="UTF-8">
   <title>러쉬 </title>
   <style type="text/css">
   
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
      
      body #container {
         color: #333;
          font-family: "notokrR",Malgun Gothic,"맑은 고딕",AppleGothic,Dotum,"돋움",sans-serif;
          font-size: 14px;
          line-height: 1.4;
          letter-spacing: -0.5px;
      }
      
      #wrap {
         height: auto;
         min-height: 100%;
         width: 100%;
         min-width: 1180px;
         display: block;
         margin: 0 auto;
      }
      
      #container {
         height: 100%;
         width: 100%;
         padding-top: 100px;
         vertical-align: top;
         table-layout: fixed;
         position: realative;
         margin: 0 auto;
      }
      
      #container #content {
         display: block;
         margin-top: 0;
         padding: 0 0 50px; 
      }
      
      .spa_visual {
         position: relative;
         z-index: 1;
      }
      
      .spa_visual .slider-wrap {
          height: 500px !important;
      }
      
      .spa_visual .item {
          height: 500px !important;
      }
      
      .slider-banner-3919499068 {
          margin: 0 auto;
          width: 100%;
          overflow: hidden;
      }
      
      .slider-banner-3919499068 .slick-slide {
          display: inline-block;
          width: auto;
      }
      
      .spa_main_container {
         width: 1180px;
         margin: 0 auto;
      }
      
      .spa_banners {
         position: relative;
      }

      .mt70 {
         margin-top: 70px;
      }      
      
      .spa_banners .banner_spa_use {
         position: absolute;
          top: 0;
          left: 0;
          width: 280px;
          height: 340px;
          display: table;
          border-collapse: collapse;
          box-sizing: border-box;
      }
      
      .spa_banners ul {
         text-align: right;
      }
      
      .spa_banners ul li {
          display: inline-block;
          margin-left: 20px;
      }
      
      ul {
         display: block;
          list-style-type: disc;
          margin-block-start: 1em;
          margin-block-end: 1em;
          margin-inline-start: 0px;
          margin-inline-end: 0px;
          padding-inline-start: 40px;
      }
      
      ul, li {
          margin: 0;
          padding: 0;
          list-style: none;
      }
      
      #content .contents {
         display: block;
         width: 100%;
         min-width: 100px;
         margin: 0px auto 0;
      }
      
      #container > #content > .contents .view {
         display: block;
         padding: 0 10px;
      }
      
      .cg-main {
         display: block;
         max-width: 1180px;
         margin: 0 auto;
      }
   
      /* 상품 : 상품제목 */
   
      .list_hd_bx {
         position: relative;
         border-bottom: 2px solid #000;
      }
      
      .mt77 {
         margin-top: 77px;
      }
      
      .list_hd_bx h2 {
         padding-bottom: 15px;
         color: #333;
         line-height: 30px;
         font-size: 28px;
         font-family: "notokrB";
         font-weight: normal;
      }
      
      .view .list_hd_bx .goods-list {
          float: none;
          position: absolute;
          right: 0;
          top: 0;
          margin: 0;
          padding: 0;
          width: 300px;
          display: table;
      }
      
      .view .goods-list {
         border-bottom: none;
      }
      
      .view .list_hd_bx .goods-list .tc {
          display: none;
          vertical-align: middle;
          width: 290px;
          padding-right: 18px;
          float: none;
          font-size: 14px;
          text-align: right;
      }
      
      .view .goods-list .tc {
          line-height: 23px;
          margin: 20px 0 0;
          color: #303030;
      }
      
      .view .list_hd_bx .goods-list .tc strong {
          padding: 0;
          font-size: 12px;
      }
      
      .view .goods-list .tc strong {
          color: #3e3d3c;
      }
      
      input, select {
          outline: none;
          font-family: "notokrR",Malgun Gothic,'맑은 고딕',Helvetica,AppleGothic,dotum,'돋움',sans-serif;
          color: #717171;
      }
      
      input {
          -webkit-writing-mode: horizontal-tb !important;
          text-rendering: auto;
          letter-spacing: normal;
          word-spacing: normal;
          line-height: normal;
          text-transform: none;
          text-indent: 0px;
          text-shadow: none;
          text-align: start;
          -webkit-rtl-ordering: logical;
      }
      
      .view .goods-list fieldset {
          display: inline-block;
          float: right;
      }
      
      fieldset, abbr, acronym {
          border: 0;
      }
      
      caption, legend {
          width: 0;
          height: 0;
          visibility: hidden;
          font-size: 0;
          line-height: 0;
          text-indent: -9999px;
      }
      
      legend {
          display: block;
          padding-inline-start: 2px;
          padding-inline-end: 2px;
          border-width: initial;
          border-style: none;
          border-color: initial;
          border-image: initial;
      }
      
      .view .list_hd_bx .goods-list .align {
          display: table-cell;
          vertical-align: middle;
          width: 110px;
          float: none;
      }
      
      .view .goods-list .align {
          height: 100%;
          margin: 10px 0;
          padding: 0;
          border-top: none;
          border-bottom: none;
          clear: both;
      }
      
      .view .goods-list .align .choice {
          float: right;
          margin-bottom: 0px;
      }
      
      .view .goods-list .align .choice div {
          float: left;
          margin: 0 0 0;
      }
      
      option {
          font-weight: normal;
          display: block;
          white-space: nowrap;
          min-height: 1.2em;
          padding: 0px 2px 1px;
      }
      
      .view .goods-list .align .choice div .chosen-container {
          margin: 0;
      }
      
      .view .goods-list .align .choice div {
          float: left;
          margin: 0 0 0;
      }
      
      .view .list_hd_bx .chosen-container {
          font-size: 14px;
      }
      
      .chosen-container {
          position: relative;
          display: inline-block;
          vertical-align: middle;
          zoom: 1;
      }
      
      .view .list_hd_bx .goods-list .align .choice div .chosen-container .chosen-single {
          height: 32px;
          line-height: 30px;
          font-size: 14px;
      }
      
      .list_hd_bx .chosen-container-single .chosen-sch {
          border: 1px solid #dcdcdc;
      }
      
      .chosen-container-single .chosen-sch {
          margin: 0 !important;
          background: none;
      }
      
      .chosen-container-single .chosen-single {
          position: relative;
          display: block;
          overflow: hidden;
          padding: 0 0 0 8px;
          color: #333;
          text-decoration: none;
          white-space: nowrap;
      }
      
      .chosen-container a {
          cursor: pointer;
      }
      
      .chosen-container * {
          box-sizing: border-box;
      }
      
      .chosen-container-single .chosen-single span {
          display: block;
          overflow: hidden;
          margin-right: 26px;
          text-overflow: ellipsis;
          white-space: nowrap;
      }
      
      .view .goods-list .align .choice div {
          float: left;
          margin: 0 0 0;
      }
      
      .chosen-container-single .chosen-single div {
          position: absolute;
          top: 0;
          right: 0;
          display: block;
          width: 18px;
          height: 100%;
      }
      
      .chosen-container-single .chosen-single div b {
         display: block;
          width: 100%;
          height: 100%;
          background: url(../../resources/img/etc/select_arrow_down.png) no-repeat left 50%;
      }
      
      .chosen-container .chosen-drop {
         position: absolute;
          top: 100%;
          left: -9999px;
          z-index: 1010;
          width: 100%;
         border: 1px solid #ccc;
          overflow-y: auto;
          max-height: 400px;
          box-sizing: border-box;
            box-shadow: none;
      }
      
      .chosen-container-single .chosen-drop {
          border-radius: 0;
          padding: 5px 0;
           background-clip: padding-box;
      }
      
      .view .goods-list .align .choice div {
          float: left;
          margin: 0 0 0;
      }
      
      .chosen-container-single.chosen-container-single-nosearch .chosen-search {
          position: absolute;
          left: -9999px;
      }
      
      .chosen-container-single .chosen-search {
          z-index: 1010;
          padding: 3px 4px;
          white-space: nowrap;
      }
      
      .chosen-container-single .chosen-search input[type="text"] {
          margin: 1px 0;
          padding: 4px 20px 4px 5px;
          width: 100%;
          height: auto;
          outline: 0;
          border: 1px solid #ccc;
          background: url(chosen-sprite.png) no-repeat 100% -20px;
          font-size: 1em;
          font-family: sans-serif;
          line-height: normal;
          border-radius: 0;
      }
      
      .view .goods-list .align .chosen-container .chosen-results {
          float: none;
      }
      
      .chosen-container .chosen-results {
          margin: 0;
          padding: 0;
      }
      
      .chosen-container .chosen-results {
          color: #444;
          position: relative;
          overflow-x: hidden;
          overflow-y: auto;
          max-height: 240px;
      }
      
      .view .goods-list .align .chosen-container .chosen-results .active-result {
          float: none;
          height: auto;
          margin: 0;
      }
      
      .view .goods-list .align ul li {
          position: relative;
          background: #fff;
      }
      
      .chosen-container .chosen-results li.active-result {
          display: list-item !important;
          cursor: pointer;
      }
      
      .chosen-container .chosen-results li {
          padding: 5px 6px !important;
          list-style: none;
          line-height: 15px;
          word-wrap: break-word;
      }
      
      /* 상품 : 상품목록 */
      .item-display .list {
          position: relative;
      }
      
      .item-display .list ul {
          padding-top: 10px;
          font-size: 0;
      }
      
      .item-display .list ul.prdList, .item-display .list ul[class^="prdList"], .item-display .list ul[class*="prdList"] {
          display: table;
          width: 100%;
      }
      
      .item-display .list ul.prdList li {
          padding: 0 0;
      }
      
      .item-display .list ul li {
          display: inline-block;
          font-size: 12px;
          text-align: center;
          vertical-align: top;
      }
      
      .item-display .list ul.prdList li .space {
          display: block;
          position: relative;
          padding: 0 5px 30px 5px;
      }
      
      .item-display .list .space {
          margin: 0 auto;
      }
      
      .item-display .list ul.prdList li .box {
          display: block;
          position: relative;
      }
      
      .item-display .list ul.prdList li .thumbnail {
          position: relative;
      }
      
      .item-display .list ul li .thumbnail {
          overflow: hidden;
          text-align: center;
          height: 0;
          width: 100%;
          margin: 0;
          padding-bottom: 100%;
      }
      
      .item-display .list ul li .thumbnail > a {
          position: absolute;
          left: 0;
          width: 100%;
          height: 100%;
          text-align: center;
      }
      
      .spa_list_wrap .item-display .list ul.prdList li .prdinfo {
          padding-top: 17px;
          margin-top: -17px;
      }
      
      .item-display .list ul.prdList li .prdinfo {
          position: relative;
          display: block;
          padding: 30px 0 0 0;
          text-align: center;
      }
      
      .item-display .list ul.prdList li .conditions {
          position: absolute;
          top: 0;
          left: 0;
          width: 100%;
          text-align: center;
      }
      
      .item-display .list ul.prdList li .txt {
          display: block;
          padding: 0 0 0 0;
          color: #1e1e1e;
          text-align: center;
          line-height: 20px;
      }
      
      .item-display .list ul.prdList li .txt a {
          display: block;
          margin: 0;
          text-decoration: none;
      }
      
      .item-display .list ul.prdList li .txt .prdName {
          display: block;
          padding: 0;
          color: #333;
          line-height: 22px;
          font-size: 16px;
          max-height: 40px;
          text-overflow: ellipsis;
          overflow: hidden;
      }
      
      .item-display .list ul.prdList li .txt .shotdesc {
          display: block;
          padding: 0;
          color: #8f8f8f;
          line-height: 20px;
          max-height: 20px;
          font-size: 14px;
          text-overflow: ellipsis;
          overflow: hidden;
      }
      
      .item-display .list ul.prdList li .price {
          display: block;
          line-height: 30px;
          margin-top: 10px;
          padding: 0;
          text-align: center;
          color: #333;
          font-size: 16px;
      }
      
      .item-display .list ul li .price .cost strong {
          color: #333;
          font-size: 16px;
      }
      
      /* 장바구니, 찜 */
      
      .layer-wrap {
          position: fixed;
          left: 0;
          top: 0;
          z-index: 100;
          overflow-y: auto;
          width: 100%;
          height: 100%;
          background: rgba(0,0,0,0.3);
      }
      
      .dn {
          display: none !important;
      }
      
      .board-paging02 .pagination {
          padding-top: 40px;
      }
      
      .pagination {
          padding: 20px 0 0;
          text-align: center;
      }
      
      .board-paging02 .pagination .active {
          border: 0;
      }
      
      .pagination .active {
          border: 1px solid #fff;
          text-decoration: underline;
          color: #3e3d3c;
      }
      
      .pagination li {
          display: inline-block;
          border: 1px solid #fff;
          margin: 0 2px;
      }
      
      
      
      
   </style>
</head>

<body>
   <div id="wrap">
   <c:import url="../main/mainHeader.jsp"></c:import>
   
   <%--------------- 본문시작 ---------------%>
   <div id="container">
      <div id="content">
         
         <%--------------- 메인배너 ---------------%>
         <div class="spa_visual">
            <div class="adpic_slider adpicslide3919499068">
               <div class="slider-wrap slider-banner-3919499068 slick-initialized slick-slider" style="visibility: visible; height: 500px;">
                  <div aria-live="polite" class="slick-list draggable" style="height: 500px;">
                     <div class="slick-track" role="listbox" style="opacity: 1; transform: translate3d(0px, 0px, 0px);">
                        <div class="item slick-slide slick-current slick-active" data-slick-index="0" 
                           aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide10" 
                           style="width: 1980px; height: 500px; 
                           background: url(&quot;../../resources/img/banner/slider/slider_1.jpg&quot;) center top no-repeat;">
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         
         <%--------------- 서브배너 ---------------%>
         <div class="spa_main_container">
            <div class="spa_banners mt70">
               <div class="banner_spa_use">
                   <a href="#">
                     <img src="../../resources/img/banner/banner_spa_about.jpg" alt="스파 바우처 이용방법"></a>
               </div>
               <ul>
                  <li>
                     <a href="#">
                        <img src="../../resources/img/banner/banner_2.jpg" alt="러쉬 스파 압구정점" title="러쉬 스파 압구정점"></a>
                  </li>
                  <li>
                     <a href="#">
                        <img src="../../resources/img/banner/banner_1.jpg" alt="러쉬 스파 경리단길점" title="러쉬 스파 경리단길점"></a>
                  </li>
               </ul>
            </div>
            <div class="mt80"></div>
         </div>
         
         <%--------------- 상품목록 ---------------%>
         <div class="contents">
            <div class="view">
               <div class="cg-main">
                  
                  <%--------------- 상품목록 : 제목 ---------------%>
                  <div class="list_hd_bx mt77">
                     <h2>스파 트리트먼트</h2>
                     <%--------------- 상품목록 : 정렬 ---------------%>
                     <div class="goods-list">
                        <span class="tc">총 <strong>13</strong> 개상품</span>
                            <form name="frmList" action="">
                           <input type="hidden" name="cateCd" value="002">
                           <fieldset>
                              <legend>상품 정렬 폼</legend>
                              <div class="align">
                                 <div class="choice">
                                    <div>
                                       <select name="sort" class="tune" style="width: 110px; display: none;">
                                          <option value="">추천순</option>
                                          <option value="orderCnt desc,g.regDt desc">판매인기순</option>
                                          <option value="goodsPrice asc,g.regDt desc">낮은가격순</option>
                                          <option value="goodsPrice desc,g.regDt desc">높은가격순</option>
                                          <option value="reviewCnt desc,g.regDt desc">상품평순</option>
                                          <option value="g.regDt desc">등록일순</option>
                                       </select>
                                       
                                       <div class="chosen-container chosen-container-single chosen-container-single-nosearch" style="width: 110px;" title="">
                                          <a class="chosen-single chosen-sch" tabindex="-1">
                                             <span>추천순</span>
                                             <div><b></b>
                                             </div>
                                          </a>
                                          <div class="chosen-drop">
                                             <div class="chosen-search">
                                                <input type="text" autocomplete="off" readonly="">
                                             </div>
                                             <ul class="chosen-results"></ul>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </fieldset>
                        </form>
                        </div> <%-- 상품목록 : 정렬 end --%>
                       </div>
                        
                       <%--------------- 상품목록 : 상품 ---------------%>
                       <div class="spa_list_wrap">
                          
                          <div class="item-display type-gallery type-gallery_">
                             <div class="list">
                                <ul class="prdList">
                                
                                   <c:forEach var="spaVO" items="${spaList}">
                                      <li style="width:25%">
                                         <div class="space">
                                       <div class="box ">
                                          <div class="thumbnail" 
                                             data-image-add1="/data/goods/21/06/26/1000001808/1000001808_add1_062.jpg" 
                                             data-image-add2="/data/goods/21/06/26/1000001808/1000001808_add2_031.jpg" 
                                             data-image-list="/data/goods/21/06/26/1000001808/1000001808_list_099.jpg" 
                                             data-image-main="/data/goods/21/06/26/1000001808/1000001808_main_028.jpg" 
                                             data-image-detail="/data/goods/21/06/26/1000001808/1000001808_detail_089.jpg" 
                                             data-image-magnify="/data/goods/21/06/26/1000001808/1000001808_magnify_041.jpg">
                                             <a href="./selectOne?num=${spaVO.num}">
                                                <span class="prdimg">
                                                   <img data-original="/data/goods/21/06/26/1000001808/1000001808_main_028.jpg" 
                                                      width="280" alt="탱글드 헤어 트리트먼트" title="${spaVO.name}" class="middle gd_image_lazy" 
                                                      src="${spaVO.photo}" style="display: inline;">
                                                </span>
                                             </a>
                                             <span class="choice -moslow">
                                                <a href="../goods/goods_view.php?goodsNo=1000001808" target="_blank" class="btn-open-win -moslow" type="button" data-goods-no="1000001808">
                                                   <span class="ti ti-layout-media-center-alt -moslow"></span>
                                                   <span class="hand icon-name">새창열기</span>
                                                </a>
                                                <a class="wish btn-add-wish -moslow" data-goods-no="1000001808">
                                                   <span class="ti ti-heart -moslow"></span>
                                                   <span class="icon-name">찜하기</span>
                                                </a>
                                                <a href="#optionViewLayer" type="button" class="cart btn-open-layer btn-add-cart -moslow" data-mode="cartIn" data-goods-no="1000001808">
                                                   <span class="ti ti-bag -moslow"></span>
                                                   <span class="icon-name">장바구니</span>
                                                </a>
                                             </span>
                                          </div>
                                          <div class="prdinfo">
                                             <div class="conditions">
                                                <span class="hot"></span>
                                             </div>
                                             <div class="txt">
                                                <a href="../goods/goods_view.php?goodsNo=1000001808">
                                                   <span class="prdName">${spaVO.name}</span>
                                                   <span class="shotdesc">${spaVO.hashtag}</span>
                                                </a>
                                             </div>
                                             <div class="price gd-default">
                                                <span class="cost">
                                                   <strong><fmt:formatNumber value="${spaVO.price}" pattern="￦ #,###"/></strong>
                                                </span>
                                             </div>
                                             <div class="display-field">
                                             </div>
                                          </div>
                                       </div>
                                         </div>
                                    </li>
                                   </c:forEach>
                                   
                                </ul>
                             </div>
                          </div>
                         
                         <div id="optionViewLayer" class="layer-wrap dn"></div>
                         <!-- 장바구니 -->
                         <div id="addCartLayer" class="layer-wrap dn">
                            <div class="box add-cart-layer">
                               <div class="view">
                                  <div class="scroll-box">
                                     <p class="success">
                                        <strong>상품이 장바구니에 담겼습니다.</strong>
                                         바로 확인하시겠습니까?
                                     </p>
                                  </div>
                                  <div class="btn">
                                       <button class="btnicon btn_wt btn_m w160  layer-cartaddcancel btn-close" style="margin-right:20px;"><em>계속 쇼핑하기</em></button>
                                       <button class="btnicon btn_bk btn_m w160  layer-cart-btn layer-cartaddconfirm"><em>확인하기</em></button>
                                  </div>
                                  <button title="닫기" class="close" type="button">닫기</button>
                               </div>
                            </div>
                         </div>
                         <!-- 찜하기 -->
                         <div id="addWishLayer" class="layer-wrap dn">
                            <div class="box add-wish-layer">
                               <div class="view">
                                  <div class="scroll-box">
                              <p class="success"><strong>상품이 찜 리스트에 담겼습니다.</strong> 바로 확인하시겠습니까?</p>
                           </div>
                           <div class="btn">
                              <button class="btnicon btn_wt btn_m w160 layer-wishaddcancel btn-close" style="margin-right:20px;"><em>계속 쇼핑하기</em></button>
                              <button class="btnicon btn_bk btn_m w160 layer-wish-btn layer-wishaddconfirm"><em>확인하기</em></button>
                           </div>
                           <button title="닫기" class="close" type="button">닫기</button>
                               </div>
                            </div>
                         </div>
                         
                         <form id="frmCartTemplateView" method="post">
                         <input type="hidden" name="mode" value="wishIn">
                         <input type="hidden" name="cartMode" value="">
                        <input type="hidden" name="optionFl" value="n">
                     </form>
                     <form id="frmWishTemplateView" method="post">
                        <input type="hidden" name="mode" value="wishIn">
                        <input type="hidden" name="cartMode" value="">
                        <input type="hidden" name="optionFl" value="">
                     </form>
                         
                      </div> <%-- 상품목록 : 상품 end --%>
                       
                       
                       <%--------------- 상품목록 : 페이징 ---------------%>
                       <div class="board-paging02">
                         <nav>
                            <ul class="pagination pagination-sm">
                               <li class="active">
                                  <span>1</span>
                               </li>
                            </ul>
                         </nav>
                     </div>
               </div>
            </div>
         </div>
      </div> <%-- content end --%>
         
   </div> <%-- container end --%>
   <c:import url="../main/mainFooter.jsp"></c:import>
   </div> <%-- wrap end --%>
   

</body>

</html>