<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style type="text/css">
@font-face {
	font-family: 'italic';
	src: url('/resources/fonts/OpenSans-Italic.otf') format('opentype');
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
	font-family: 'notokrB';
	src: url('/resources/fonts/NotoSansKR-Black.otf') format('opentype');
}

@font-face {
	font-family: 'HelveticaNeue-Heavy';
	src: url('/resources/fonts/HelveticaNeue-Heavy.otf') format('opentype');
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

#container.goodsv_container {
	display: block;
	width: 100%;
	min-width: 100%;
	max-width: 100%;
}

#container {
	/* z-index: 9; */
	padding-top: 100px;
}

#container.goodsv_container #content {
	display: block;
	width: 100%;
}

#container #content {
	display: block;
	width: 100%;
	margin: 50px auto;
	padding: 0 0 50px;
}

#container>#content {
	display: table-cell;
	width: 100%;
	padding: 0 0 100px;
	vertical-align: top;
}

.goods-view {
	display: block;
	width: 1180px;
	margin: 0 auto;
}

.location .path {
	display: block;
	float: right;
	width: 620px;
}

.dn {
	display: none !important;
}

.location .path span {
	float: left;
	line-height: 20px;
}

.location .navi {
	float: left;
	margin: 0 0 0 10px;
	padding: 0 0 0 14px;
	background: url(../../resources/img/etc/step_arrow.png) no-repeat left
		8px;
}

.location .navi .this {
	position: relative;
	z-index: 1;
	border: 1px solid #ccc;
	letter-spacing: -1px;
}

.location .navi .this>a {
	display: inline-block;
	min-width: 115px;
	height: 20px;
	padding: 1px 23px 0 8px;
	background: url(../../resources/img/etc/loc_hide.png) no-repeat right
		8px;
	color: #535353;
}

.location .navi .this div {
	display: none;
	position: absolute;
	left: -1px;
	top: 21px;
	width: 100%;
	min-width: 146px;
	padding: 6px 0;
	background: #fff;
	border: 1px solid #3e3d3c;
}

.location .navi .this:hover div {
	display: block;
}

.location .navi .this div::selection {
    background: #000000;
    color: #fff;
    text-shadow: none;
}

.location .navi .this div a {
	display: block;
	height: 20px;
	padding: 2px 0 0 8px;
}

.goods-view .goods {
	display: table;
	position: relative;
	width: 100%;
	margin: 0 auto;
	clear: both;
	margin-top: 70px;
	z-index: 0;
	/* border: 1px solid #ddd; */
	padding: 30px 0 30px 0px;
}

.goods-view .goods .image {
	display: inline-block;
	position: relative;
	float: left;
	width: 380px;
	margin: 0 auto;
	padding: 0 0;
	text-align: center;
	margin-left: 40px;
}

.goods-view .goods .image .thumbnail {
	display: block;
	width: 100%;
	height: auto;
	margin: 0 auto;
	border: none;
	text-align: center !important;
	vertical-align: middle;
	border: 0px solid #ddd !important;
}

.thumbnail img {
	width: 100%;
	max-width: 100%;
	margin: 0 auto;
}

.goods-view .goods .image .more-thumbnail {
	position: relative;
	width: 100%;
	margin: 22px auto 0;
}

.goods-view .goods .image .more-thumbnail .slide {
	overflow: hidden;
	width: 319px;
	height: 70px;
	margin: 0 auto;
}

.goods-view .goods .image .more-thumbnail .slide .cycle {
	position: relative;
	font-size: 0;
}

.goods-view .goods .image .slider-wrap .slick-track {
	position: relative;
	top: 0px;
	left: 0px;
	display: block;
	margin: 0 auto;
}

.goods-view .goods .image .more-thumbnail .slide .cycle a {
	display: inline-block;
	overflow: hidden;
	margin: 0 14px 0 0;
	vertical-align: top;
}

.goods-view .goods .image .more-thumbnail .slide .cycle a img {
	width: 63px;
	height: 63px;
	border: 1px solid #f2f2f2;
}

.goods-view .goods .image .more-thumbnail .prev {
	left: 0;
	background: url(../../resources/img/etc/prev.png) no-repeat left top;
}

.goods-view .goods .image .more-thumbnail .prev, .goods-view .goods .image .more-thumbnail .next
	{
	display: block;
	position: absolute;
	top: 28px;
	width: 10px;
	height: 17px;
}

.goods-view .goods .image .more-thumbnail .next {
	right: 0;
	background: url(../../resources/img/etc/next.png) no-repeat left top;
}

.goods-view .goods .info {
	display: inline-block;
	position: relative;
	float: right;
	width: 580px;
	padding: 0;
	margin-right: 40px;
}

.goods-view .goods .info .info_wrap {
	display: block;
	position: relative;
	width: 100%;
	margin: 0 auto;
}

.goods-view .goods .info .goods-header {
	position: relative;
	margin-bottom: 20px;
	padding-bottom: 20px;
	border-bottom: 1px solid #e7e7e7;
}

.goods-view .goods .info .top {
	position: relative;
	overflow: hidden;
}

.goods-view .goods .info .top .tit {
	display: block;
	float: none;
	width: auto;
}

.goods-view .goods .info .top .tit h2 {
	padding-right: 60px;
	line-height: 34px;
	color: #000000;
	font-weight: normal;
	font-size: 28px;
	font-family: "notokrM";
}

.goods-view .goods .info .top .hashtag {
	padding-top: 8px;
	font-size: 16px;
	color: #808080;
}

.goods-view .goods .info .sns {
	position: absolute;
	top: 3px;
	right: 33px;
	font-size: 0px;
	z-index: 1;
}

.goods-view .goods .info .sns>a.target-sns-share {
	width: 20px;
	height: 20px;
	border: 0;
	padding: 0;
	margin: 0;
	font-size: 0;
	background: url(../../resources/img/etc/share.png) no-repeat;
}

.normal-btn {
	display: inline-block;
	padding: 0 10px !important;
	color: #333;
	text-align: center;
	vertical-align: top;
	box-sizing: border-box;
	cursor: pointer;
	font-family: "notokrR";
}

.goods-view .goods .info .sns>a.target-sns-share em {
	display: none;
}

.normal-btn img {
	margin: 0 0 0 5px;
	vertical-align: middle;
}

.sns-share-layer {
	position: absolute;
	top: 24px;
	right: 0px;
	z-index: 10;
	width: 350px;
	background: #fff;
}

.sns-share-layer .wrap {
	position: relative;
	width: 348px;
	border: 1px solid #555;
}

.sns-share-layer .wrap>strong {
	display: block;
	height: 30px;
	padding: 10px 0 0 17px;
	background: #f4f4f4;
	color: #000;
	font-size: 14px;
}

.sns-share-layer .wrap>div {
	overflow-x: hidden;
	overflow-y: auto;
	padding: 0 21px 20px;
}

.sns-share-layer .wrap>div ul {
	clear: both;
	overflow: hidden;
	margin: 0 0 15px;
}

.sns-share-layer .wrap>div ul li {
	float: left;
	width: 25%;
	padding: 20px 0 0;
	font-size: 12px;
	text-align: center;
}

.sns-share-layer .wrap>div ul li img {
	width: 35px;
	height: 35px;
}

.sns-share-layer .wrap > div ul li span {
    display: inline-block;
    padding: 5px 0 0;
}

.sns-share-layer .wrap>div .copyurl {
	clear: both;
}

input.text.field-b {
	height: 31px;
	padding: 0 10px;
	background: #fff;
	border: 1px solid #d0d0d0;
}

.sns-share-layer .gd_clipboard.gd_clipboard.skinbtn.point2 {
	width: 80px;
	height: 33px;
}

.skinbtn.point2 {
	background: #ffffff;
	border: 1px solid #000000;
	color: #000000;
	transition: all 0.10s ease-out;
	font-weight: bold;
}

.skinbtn {
	display: inline-block;
	padding: 0;
	text-align: center;
	vertical-align: top;
	box-sizing: border-box;
	cursor: pointer;
	font-size: 12px;
	border-radius: 0;
}

.skinbtn * {
	font-size: 100%;
}

button {
	cursor: pointer;
	border: none;
	outline: none;
	font-family: "notokrR";
}

button em {
	font-family: "notokrR";
}

.sns-share-layer .wrap .close {
	display: block;
	position: absolute;
	top: 11px;
	right: 12px;
	width: 18px;
	height: 18px;
	text-indent: -9999px;
	background: url(../../resources/img/etc/layer_close.png) no-repeat left
		top;
}

.goods-view .goods .info .top_zzim {
	position: absolute;
	top: 3px;
	right: 0px;
	z-index: 1;
	width: 20px;
	height: 20px;
	border: 0;
	padding: 0;
	margin: 0;
	font-size: 0;
	background: url(../../resources/img/etc/zzim.png) no-repeat;
}

.goods-view .goods .info .item {
	border-bottom: 0;
}

a {
    color: #1e1e1e;
}

.review_underline {
	border-bottom: 1px solid #333;
}

/* Good To Know */
.mt10 {
    margin-top: 10px;
}

.toggle_w {
    position: relative;
}

.toggle_btn {
    display: inline-block;
    margin: 0;
    width: 14px;
    height: 14px;
    vertical-align: middle;
    background: url(../../resources/img/etc/icon_tooltip_off.png) no-repeat;
    cursor: pointer;
    position: relative;
}

.toggle_content {
    display: none;
    position: absolute;
    top: -5px;
    left: 20px;
    width: 575px;
    border: 1px solid #e7e7e7;
    background: #fff;
    z-index: 1;
}

.toggle_content .toggle_close {
    position: absolute;
    top: 10px;
    right: 10px;
    width: 19px;
    height: 18px;
    background: url(../../resources/img/etc/layer_close.png) no-repeat left top;
    font-size: 0;
}

.toggle_content .inner {
    padding: 10px 30px 10px 10px;
    font-size: 12px;
    color: #808080;
}

.inner {
    margin: 0 auto;
}


.goodToKnow>table>tbody>tr>td{
	height: 60px;
	font-size: 13px;
	font-weight: 600;
}
.goodToKnow>table>tbody>tr>td>span{
	font-size: 12px;
	font-weight: 500;
}
.goodToKnowImg{
	text-align: center;
	width: 92px;
}
.goodToKnowImg>img{
	/*width: 55px;*/
}

table, th, td {
    margin: 0;
    padding: 0;
    border-spacing: 0;
    border: 0;
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

goodToKnow>table>tbody>tr>td {
    height: 60px;
    font-size: 13px;
    font-weight: 600;
}

.goodToKnowImg {
    text-align: center;
    width: 92px;
}

.goodToKnow>table>tbody>tr>td>span {
    font-size: 12px;
    font-weight: 500;
}

/* 판매가 */
.goods-view .goods .info .item {
	border-bottom: 0;
}

.mt_10 {
	margin-top: 10px;
}

.goods-view .goods .info .item ul {
	padding-top: 25px;
}

.goods-view .goods .info .item ul li:first-child {
	display: block;
	border-top: none;
}

.goods-view .goods .info .item ul li>strong {
	display: table-cell;
	float: left;
	line-height: 25px;
	width: 80px;
	color: #333;
	font-weight: normal;
	vertical-align: top;
}

.goods-view .goods .info .item ul li > div {
    display: table-cell;
    position: relative;
    width: 100%;
    vertical-align: middle;
}

.goods-view .goods .info .item ul li.price>div strong {
	color: #000;
	font-size: 16px;
	font-weight: normal;
	font-family: "notokrM";
}

.goods-view .goods .info .choice {
	display: table;
	width: 100%;
	padding: 5px 0;
}

.goods-view .goods .info .choice .list {
	display: table;
	width: 100%;
}

.goods-view .goods .info .choice .list>strong {
	display: table-cell;
	float: left;
	width: 80px !important;
	line-height: 30px;
	color: #111111;
	padding: 0 0 0 0;
	vertical-align: middle;
	font-weight: normal;
}

.goods-view .goods .info .choice .list>div {
	display: table-cell;
	vertical-align: middle;
	width: 100% !important;
}

.goods-view .goods .info .btn {
	display: block;
	width: 100%;
	float: left;
	margin: 40px 0 0;
	padding: 0;
	font-size: 0px;
}

#cartBtn {
	width: 285px;
	height: 50px;
	line-height: 50px;
	margin: 0;
	color: #000000;
	font-size: 15px;
	font-weight: normal;
	background: #ffffff;
	border: 1px solid #000;
	border-radius: 0;
}

#orderBtn {
	float: right;
	width: 285px;
	height: 50px;
	line-height: 50px;
	margin: 0 !important;
	color: #fff;
	font-size: 15px !important;
	background: #000;
	border: 1px solid #000;
	border-radius: 0;
}

/* 리뷰 */
.plusreview-container {
    width: 100%;
}

.plusreview-container .title-container {
    margin-bottom: 15px;
}

.plusreview-container .title-container .text {
    font-family: 'HelveticaNeue-Bold','notokrB';
    font-size: 20px;
    color: #222222;
}

.plusreview-container .summary_new .photoreview-container {
    float: left;
    width: 745px;
    height: 190px;
    border: 1px solid #f2f2f2;
    box-sizing: border-box;
}

.plusreview-container .summary_new .photoreview-container .inner {
    position: relative;
    padding: 27px 20px 0;
}

.plusreview-container .summary_new .photoreview-container .title {
    padding-bottom: 10px;
    font-size: 18px;
    color: #000;
    font-family: 'notokrM';
}

.plusreview-container .summary_new .photoreview-container .photo_list {
    overflow: hidden;
    width: 660px;
    height: 100px;
}

.plusreview-container .photoreview-container .photo-info {
    padding-top: 20px;
    text-align: center;
}

.plusreview-container .summary_new .photoreview-container .inner .more {
    position: absolute;
    bottom: 0;
    right: 20px;
    font-size: 12px;
}

.plusreview-container .summary_new .score-container {
    float: right;
    width: 428px;
    height: 190px;
    border: 1px solid #f2f2f2;
    box-sizing: border-box;
}

.plusreview-container .summary_new .score-container .inner {
    display: table;
    width: 100%;
    table-layout: fixed;
}

.plusreview-container .summary_new .score-container .average {
    display: table-cell;
    width: 215px;
    height: 188px;
    vertical-align: middle;
    text-align: center;
}

.plusreview-container .summary_new .score-container .average .title {
    font-size: 18px;
    font-family: 'notokrM';
    color: #333;
}

.plusreview-container .summary_new .score-container .average .score {
    font-size: 45px;
    font-family: 'HelveticaNeue-Bold';
    color: #000;
}

.plusreview-container .summary_new .score-container .average .star {
    font-size: 16px;
}

.plusreview-container .summary_new .score-container .counter {
    display: table-cell;
    width: 208px;
    height: 188px;
    vertical-align: middle;
    font-size: 16px;
}

.plusreview-container .summary_new .score-container .counter > div {
    position: relative;
    padding: 12px 0;
}

.plusreview-container .summary_new .score-container .counter .title {
    color: #808080;
}

.plusreview-container .summary_new .score-container .counter .content {
    position: absolute;
    top: 12px;
    right: 64px;
    color: #333;
}

.plusreview-container .reward {
    display: none;
}

.plusreview-container .reward {
    width: 100%;
    margin-bottom: 10px;
}

.plusreview-container .reward .selectbox {
    width: 700px;
    height: 34px;
    float: left;
    margin-right: 10px;
    padding: 0;
}

select {
    outline: none;
    vertical-align: top;
    color: #717171;
}

option {
    font-weight: normal;
    display: block;
    white-space: nowrap;
    min-height: 1.2em;
    padding: 0px 2px 1px;
}

.plusreview-container .chosen-container {
    background-color: #ffffff;
}

.chosen-container {
    position: relative;
    display: inline-block;
    vertical-align: middle;
    font-size: 14px;
    zoom: 1;
    user-select: none;
}

.plusreview-container .chosen-single.chosen-sch {
    height: 33px;
}

.chosen-container-single .chosen-sch {
    height: 40px;
    line-height: 38px;
    margin: 0 !important;
    background: none;
}

.chosen-container-single .chosen-sch {
    border: 1px solid #ccc;
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

.plusreview-container .reward .selectbox span {
    font-size: 15px;
    color: #ffcc00;
}

.chosen-container-single .chosen-single span {
    display: block;
    overflow: hidden;
    margin-right: 26px;
    text-overflow: ellipsis;
    white-space: nowrap;
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
	border: 1px solid #ccc;
    overflow-y: auto;
    max-height: 400px;
    box-sizing: border-box;
  		box-shadow: none;
  		position: absolute;
    top: 100%;
    left: -9999px;
    z-index: 1010;
    width: 100%;
    background: #fff;
}

.chosen-container-single .chosen-drop {
    margin-top: -1px;
    border-radius: 0;
    padding: 5px 0;
    background-clip: padding-box;
}

.chosen-container-single.chosen-container-single-nosearch .chosen-search {
    position: absolute;
    left: -9999px;
}

.chosen-container-single .chosen-search {
    z-index: 1010;
    margin: 0;
    padding: 3px 4px;
    white-space: nowrap;
}

.chosen-container-single .chosen-search input[type="text"] {
    border: 1px solid #ccc;
}

.chosen-container-single .chosen-search input[type="text"] {
    margin: 1px 0;
    padding: 4px 20px 4px 5px;
    width: 100%;
    height: auto;
    outline: 0;
    background: url(../../resources/img/etc/chosen_sprite.png) no-repeat 100% -20px;
    font-size: 1em;
    font-family: sans-serif;
    line-height: normal;
    border-radius: 0;
}

.chosen-container .chosen-results {
    margin: 0;
    padding: 0;
    color: #444;
    position: relative;
    overflow-x: hidden;
    overflow-y: auto;
    max-height: 240px;
}

.plusreview-container .reward .showreward {
    height: 34px;
    width: 290px;
    border: #dbdbdb 1px solid;
    background-color: #f8f8f8;
    margin-bottom: 10px;
    float: left;
    vertical-align: middle;
    text-align: center;
}

.plusreview-container .benefit-layer {
    position: absolute;
    top: 40px;
    left: 648px;
    z-index: 10;
    width: 350px;
    height: auto;
    background: #fff;
}

.plusreview-container .benefit-layer .wrap {
    position: relative;
    width: 350px;
    border: 1px solid #555;
}

.plusreview-container .benefit-layer strong {
    display: block;
    height: 27px;
    padding: 13px 0 0 17px;
    background: #f4f4f4;
    color: #222;
}

.plusreview-container .benefit-layer .info {
    padding: 10px;
}

.clear-both {
    clear: both;
}

.plusreview-container .write-form {
    display: none;
}

.plusreview-container .write-form {
    margin-bottom: 10px;
    border: #dbdbdb 1px solid;
    width: 99.8%;
}

.plusreview-container .write-form .goods-info {
    background-color: #f8f8f8;
    border-bottom: #e8e8e8 solid 1px;
    padding-top: 11px;
    padding-bottom: 11px;
    width: 100%;
}

.plusreview-container .write-form .goods-info .option {
    width: 100%;
}

.plusreview-container .write-form .textarea {
    height: 200px;
    border-bottom: #dbdbdb solid 1px;
    padding: 20px;
}

.plusreview-container .write-form .textarea .reviewText {
    width: 100%;
    height: 100%;
    border: none;
}

.textarea textarea {
    box-sizing: border-box;
    padding: 5px;
    color: #333;
}

textarea {
    outline: none;
    color: #717171;
    font-size: 12px;
    font-family: "notokrR",Malgun Gothic,'맑은 고딕',Helvetica,AppleGothic,dotum,'돋움',sans-serif;
}

.plusreview-container .write-form .private-container {
    border-bottom: #dbdbdb solid 1px;
    padding: 20px;
}

.plusreview-container .write-form .private-container .title {
    margin-bottom: 12px;
}

.plusreview-container .write-form .private-container .showall {
    font-size: 12px;
    color: #484848;
    text-decoration: underline;
    margin-left: 20px;
}

.plusreview-container .write-form .private-container .agreement {
    border: #dbdbdb 1px solid;
    width: 100%;
    height: 60px;
    overflow-y: scroll;
}

.plusreview-container .write-form .private-container .personal-information {
    margin-top: 10px;
    float: left;
    width: 810px;
}

.plusreview-container .write-form .private-container .username {
    padding-left: 10px;
    border: 1px solid #cecece;
    width: 100px;
    height: 28px;
    margin-left: 10px;
    margin-right: 30px;
}

.plusreview-container .write-form .private-container .agree {
    float: right;
    margin-top: 15px;
}

.plusreview-container .write-form .private-container .agree .checkbox {
    position: absolute;
    z-index: -1;
}

input.checkbox {
    width: 13px;
    height: 13px;
    vertical-align: top;
}

.plusreview-container .write-form .attach-container {
    padding: 0 0 0 10px;
}

.plusreview-container .write-form .attach-container .filelist {
    float: left;
}

.plusreview-container .write-form .attach-container .filelist .file {
    width: 40px;
    height: 40px;
    margin-right: 8px;
    margin-top: 10px;
    float: left;
    cursor: pointer;
    position: relative;
}

.plusreview-container .write-form .attach-container .filelist .image-upload-button {
    position: absolute;
    width: 40px;
    height: 40px;
    border-color: transparent;
    cursor: pointer;
    background-image: url(../../resources/img/etc/ico_camera.png);
    background-position: center;
    background-repeat: no-repeat;
}

.plusreview-container .write-form .attach-container .buttons {
    float: right;
    width: 140px;
}

.plusreview-container .write-form .attach-container .buttons .button {
    background-color: #fff;
    border: 1px solid #000;
    font-weight: bold;
    font-size: 15px;
    color: #333;
    width: 140px;
    height: 60px;
}

/* 본문 */
.multiple-topics>div {
	padding: 100px 0 0;
}

.multiple-topics h3 {
	display: none;
	padding: 0 0 17px;
	color: #000;
	font-size: 20px;
}

.multiple-topics .tab {
	display: table;
	width: 100%;
	table-layout: fixed;
	position: relative;
	height: 47px;
	padding: 0 0 80px;
	line-height: 47px;
	text-align: center;
	overflow: initial;
}

.multiple-topics .tab a.on {
	position: relative;
	height: 45px;
	line-height: 45px;
	border: 1px solid #333;
	background: #ffffff;
	color: #111;
	font-weight: normal;
	z-index: 1;
}

.multiple-topics .tab a.on:after {
	content: '';
	display: block;
	width: 100%;
	height: 2px;
	background: #fff;
	position: absolute;
	bottom: -1px;
	left: 0;
}

.multiple-topics .tab a {
	float: none;
	display: table-cell;
	position: relative;
	height: 45px;
	line-height: 45px;
	padding: 0;
	margin: 0 0 0 -1px;
	border: 1px solid #e9e9e9;
	border-bottom: 1px solid #333;
	color: #8f8f8f;
	font-family: "notokrM";
	font-size: 14px;
	text-align: center;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.section-header {
    padding-top: 144px;
}

.detail-section {
    margin-bottom: 144px;
}

.detail-section {
    color: #000;
    font-family: 'notokr', sans-serif;
    font-size: 18px;
    font-weight: 400;
    line-height: 1;
}

.section-header {
    margin: 0 0 10px 0;
    position: relative;
}

.section-header .inner {
    text-align: center;
}

.section-header .inner .category {
    margin-bottom: 24px;
}

.detail-section p {
    font-size: 18px;
}

.detail-section h1 {
    font-size: 36px;
    font-weight: 700;
}

.section-header .inner .title .title-kr {
    margin-bottom: 16px;
    line-height: 1.35;
}

.section-header .inner .title span {
    display: block;
}

.section-header .inner .title .title-en {
    font-family: 'HelveticaNeue-Bold';
    font-size: 24px;
    line-height: 1.38;
}

.detail-section {
    margin-bottom: 144px;
}

.early-review .inner {
    position: relative;
    overflow: hidden;
}

.early-review .bg-image {
    position: absolute;
    top: 0;
    right: 0;
    width: 986px;
    height: calc( 100% - 1px );
    overflow: hidden;
    z-index: 1;
}

.early-review .bg-image img {
    position: absolute;
    top: 50%;
    left: 50%;
    width: 100%;
    height: auto;
    transform: translate(-50%, -50%);
}

.early-review .review-box {
    position: relative;
    float: left;
    width: 480px;
    margin-top: 166px;
    margin-left: 26px;
    background-color: #fff;
    z-index: 2;
}

.early-review .review-box .box-inner {
    padding: 48px 48px 48px 72px;
}

.early-review .review-box .box-inner .title {
    margin-bottom: 24px;
}

.detail-section h2 {
    font-size: 24px;
    font-weight: 700;
}

.early-review .review-box .box-inner .title .title-text {
    float: left;
    display: block;
}

.early-review .review-box .box-inner .title .stars {
    float: left;
    margin-left: 16px;
    font-size: 0;
}

.early-review .review-box .box-inner .title .stars .star-item {
    display: inline-block;
    width: 21px;
    height: 21px;
    margin-right: 9px;
    background: url('https://lush.co.kr/data/newdetail/img/star-fill.png') no-repeat center / cover;
}

.description .text-wrap {
    margin-bottom: 80px;
    text-align: center;
}

.detail-section p {
    font-size: 18px;
}

.description .text-wrap .desc {
    line-height: 34px;
}

.description .text-wrap .tip {
    margin-top: 16px;
    color: #6b6b6b;
    font-weight: 400;
    line-height: 30px;
}

.description .image-wrap:last-child {
    margin-bottom: 0;
}

.description .image-wrap img {
    position: absolute;
    top: 50%;
    left: 50%;
    width: 100%;
    height: auto;
    transform: translate(-50%, -50%);
}

.usage {
    padding: 80px 0;
    background-color: #f8f8f8;
}

.usage .inner {
    position: relative;
    overflow: hidden;
}

.usage .bg-image {
    position: absolute;
    top: 0;
    right: 0;
    width: 600px;
    height: calc( 100% - 1px );
    overflow: hidden;
    z-index: 1;
}

.usage .bg-image img {
    position: absolute;
    top: 50%;
    left: 50%;
    height: 100%;
    width: auto;
    max-width: none;
    transform: translate(-50%, -50%);
}

.usage .usage-box {
    position: relative;
    float: left;
    width: 600px;
    margin-top: 88px;
    margin-left: 56px;
    background-color: #fff;
    z-index: 2;
}


.usage .usage-box .box-inner {
    padding: 80px;
    text-align: left;
}

.usage .usage-box .box-inner .title {
    margin-bottom: 24px;
}

.usage .usage-box .box-inner .content {
    margin-bottom: 16px;
    color: #6b6b6b;
    line-height: 34px;
}
.usage .usage-box .box-inner .hashtags {
    margin-bottom: -16px;
    
}

.hashtags {
	display: inline-block;
    margin: 0 10px 16px 0;
    padding-bottom: 2px;
    border-bottom: 1px solid #1ea24d;
    color: #1ea24d;
    font-size: 18px;
    line-height: 1;
    letter-spacing: -0.24px;
}

.packing .inner {
    max-width: 937px;
    margin: 0 auto;
    text-align: center;
}

.packing .packing-cont {
    position: relative;
}

.packing .packing-cont .desc {
    margin-top: 17px;
    letter-spacing: -0.02em;
    line-height: 1.7;
}

.packing .break {
    display: none;
}

.packing .packing-tip {
    display: block;
    margin-top: 16px;
    color: #6b6b6b;
    letter-spacing: -0.02em;
}

.packing .packing-tip strong {
    color: #6b6b6b;
}

.packing .packing-tip .i {
    padding-right: 10px;
    font-weight: 700;
    font-style: italic;
    color: #6b6b6b;
}

.qus{	
	font-style: italic;
	font-weight: bold;
}

.packing .graphics {
    position: relative;
    margin-top: 80px;
}

.packing .graphics img {
    width: 100%;
}

.packing .m-only {
    display: none;
}

.packing .item {
    position: absolute;
    text-align: left;
    line-height: 1.7;
    letter-spacing: -0.02em;
}

.packing .item strong {
    display: block;
}

.packing .item.paper {
    left: 66.5%;
    top: 22%;
}

.packing .item.box {
    left: 8.2%;
    top: 71.2%;
}

.packing .item.corn {
    left: 74%;
    top: 52.7%;
}

.packing .check .tit {
    margin-top: 140px;
    font-family: 'HelveticaNeue-Bold';
    font-size: 42px;
}

.packing .check-list {
    margin-top: 74px;
    overflow: hidden;
}

.detail-section ul {
    list-style: none;
}

.blackpot .inner {
    max-width: 937px;
    margin: 0 auto;
    text-align: center;
}

.blackpot .blackpot-box {
    position: relative;
    margin-top: 78px;
}

.blackpot .blackpot-box img {
    width: 100%;
}

.blackpot .m-only {
    display: none;
}

.blackpot .blackpot-box .desc {
    position: absolute;
    left: 8.5%;
    top: 26.013%;
    color: #fff;
    line-height: 1.7;
    letter-spacing: -0.013em;
    text-align: left;
}

.blackpot .break {
    display: none;
}

.blackpot .blackpot-box .btn-more {
    position: absolute;
    left: 8.6%;
    top: 55.067%;
    width: 206px;
    height: 56px;
    border: 1px solid #fff;
    font-weight: 200;
    font-size: 16px;
    color: #fff;
    line-height: 54px;
    letter-spacing: 0.089em;
}

.multiple-topics .image-manual img, .multiple-topics .txt-manual img {
    max-width: 100%;
}

.description .image-wrap {
    position: relative;
    height: 460px;
    margin-bottom: 48px;
    overflow: hidden;
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

.packing .check-list li {
    float: left;
    width: 46%;
    padding-left: 37px;
    text-align: left;
}

.packing .check-list li img {
    display: inline-block;
    width: 32.26%;
    margin-right: 20px;
    vertical-align: middle;
}

.packing .check-list li .txt {
    display: inline-block;
    color: #6b6b6b;
    line-height: 30px;
    vertical-align: middle;
}

.dg {
 	display: list-item;
}

.early-review .review-box .box-inner .content {
    line-height: 32px;
    text-align: left;
}

/* 리뷰 */
.multiple-topics .tab {
    display: table;
    width: 100%;
    table-layout: fixed;
    position: relative;
    height: 47px;
    padding: 0 0 80px;
    line-height: 47px;
    text-align: center;
    overflow: initial;
}

.multiple-topics .tab a.on {
    position: relative;
    height: 45px;
    line-height: 45px;
    border: 1px solid #333;
    background: #ffffff;
    color: #111;
    font-weight: normal;
    z-index: 1;
}

.multiple-topics .tab a:first-child {
    margin: 0 0 0 0;
}

.multiple-topics .tab a {
    float: none;
    display: table-cell;
    position: relative;
    height: 45px;
    line-height: 45px;
    padding: 0;
    margin: 0 0 0 -1px;
    border: 1px solid #e9e9e9;
    border-bottom: 1px solid #333;
    color: #8f8f8f;
    font-family: "notokrM";
    font-size: 14px;
    text-align: center;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

.multiple-topics h3 {
    display: none;
    padding: 0 0 17px;
    color: #000;
    font-size: 20px;
}

.top-reviews {
    overflow: hidden;
    padding: 0 0 0;
}

.top-reviews .tit {
    float: left;
}

.top-reviews .tit h3 {
    display: block;
    width: auto;
    height: 30px;
    line-height: 30px;
    margin: 0;
    padding: 0 0;
    color: #000000;
    font-size: 30px;
    font-weight: normal;
    text-align: center;
    border: none;
    font-family: 'HelveticaNeue-Bold',"notokrB";
    float: left;
}

.top-reviews .tit h3 .star {
    padding-left: 15px;
    font-size: 16px;
    font-family: "notokrR";
}

.top-reviews .tit h3 .reviewCount {
    padding-left: 15px;
    font-size: 16px;
    font-family: "notokrR";
}

.top-reviews .tit p {
    display: block;
    width: 100%;
    padding: 8px 0 0 0;
    line-height: 30px;
    color: #333;
    font-size: 18px;
    font-weight: normal;
    float: left;
}

.top-reviews .btn {
    float: right;
    font-size: 0;
    display: none;
}

.multiple-topics .btn {
    text-align: right;
}

.top-reviews .btn .skinbtn {
    width: 200px;
    height: 56px;
    line-height: 54px;
    font-size: 15px;
    margin: 0 0 0 0;
    background: #000;
    color: #fff;
    font-weight: normal;
}

.plusreview-add {
    width: 99.8%;
    margin-top: 20px;
    border: 1px solid #dbdbdb;
    border-bottom: 0;
}

.plusreview-add dl {
    position: relative;
    padding: 20px;
}

.plusreview-add dl dt {
    position: absolute;
    top: 20px;
    left: 20px;
}

.plusreview-add dl dd {
    padding-left: 100px;
}

.plusreview-add dl dd ul li {
    float: left;
    margin-right: 20px;
}

.plusreview-add dl dd ul li input.radio {
    margin: 4px 4px;
}

input.radio {
    width: 13px;
    height: 13px;
    vertical-align: top;
}

label {
    cursor: pointer;
    vertical-align: top;
}

.rating02 {
    display: inline-block;
    width: 70px;
    height: 15px;
    background: url(../../resources/img/etc/star.png) no-repeat left top;
    vertical-align: middle;
    text-indent: -9999px;
    background-size: 70px;
}

.rating02 span {
    display: block;
    background: url(../../resources/img/etc/star_fill.png) no-repeat left top;
    font-size: 13px;
    background-size: 70px;
}

.plusreview-container {
    width: 100%;
}

.plusreview-container .write-form {
    margin-bottom: 10px;
    border: #dbdbdb 1px solid;
    width: 99.8%;
}

.plusreview-container .write-form .textarea {
    height: 200px;
    border-bottom: #dbdbdb solid 1px;
    padding: 20px;
}

.plusreview-container .write-form .private-container {
    border-bottom: #dbdbdb solid 1px;
    padding: 20px;
}

.plusreview-container .write-form .private-container .title {
    margin-bottom: 12px;
}

.plusreview-container .write-form .private-container .showall {
    font-size: 12px;
    color: #484848;
    text-decoration: underline;
    margin-left: 20px;
}

.plusreview-container .write-form .private-container .agreement {
    border: #dbdbdb 1px solid;
    width: 100%;
    height: 60px;
    overflow-y: scroll;
}

.plusreview-container .write-form .private-container .personal-information {
    margin-top: 10px;
    float: left;
    width: 810px;
}

.plusreview-container .write-form .private-container .username {
    padding-left: 10px;
    border: 1px solid #cecece;
    width: 100px;
    height: 28px;
    margin-left: 10px;
    margin-right: 30px;
}

.plusreview-container .write-form .private-container .password {
    border: 1px solid #cecece;
    width: 170px;
    height: 28px;
    margin-left: 10px;
}

.plusreview-container .write-form .private-container .agree {
    float: right;
    margin-top: 15px;
}

.plusreview-container .write-form .private-container .agree .checkbox {
    position: absolute;
    z-index: -1;
}

input.checkbox {
    width: 13px;
    height: 13px;
    vertical-align: top;
}

.plusreview-container .write-form .private-container .agree label:hover {
    background: #fff url(../../resources/img/etc/check_ov.png) no-repeat left top;
}

.plusreview-container .write-form .private-container .agree label {
    display: block;
    min-height: 20px;
    padding: 0 0 0 27px;
    background: #fff url(../../resources/img/etc/check_off.png) no-repeat left top;
    text-align: right;
}

.plusreview-container .write-form .attach-container {
    padding: 0 0 0 10px;
}

.plusreview-container .write-form .attach-container .filelist {
    float: left;
}

.plusreview-container .write-form .attach-container .filelist .file {
    width: 40px;
    height: 40px;
    margin-right: 8px;
    margin-top: 10px;
    float: left;
    cursor: pointer;
    position: relative;
}

.plusreview-container .write-form .attach-container .filelist .image-upload-button {
    position: absolute;
    width: 40px;
    height: 40px;
    border-color: transparent;
    cursor: pointer;
    background-image: url(../../resources/img/etc/ico_camera.png);
    background-position: center;
    background-repeat: no-repeat;
}

.plusreview-container .write-form .attach-container .filelist .image-upload {
    width: 40px;
    height: 40px;
    border-color: transparent;
    font-size: 25px;
    color: #fff;
    cursor: pointer;
    opacity: 0;
    position: relative;
}

.plusreview-container .write-form .attach-container .buttons {
    float: right;
    width: 140px;
}

.plusreview-container .write-form .attach-container .buttons .button {
    background-color: #fff;
    border: 1px solid #000;
    font-weight: bold;
    font-size: 15px;
    color: #333;
    width: 140px;
    height: 60px;
}

.plusreview-container-list .title-container {
    border-bottom: #dbdbdb 2px solid;
    padding-bottom: 0px;
    margin-top: 30px;
    width: 100%;
}

.plusreview-container-list .no-data {
    height: 86px;
    line-height: 86px;
    color: #8f8f8f;
    border-bottom: 1px solid #dbdbdb;
}

.pagination {
    padding: 20px 0 0;
    text-align: center;
}

.multiple-topics .admin-msg {
    width: 90%;
    margin: 0 auto;
    line-height: 1.8;
}

h1, h2, h3, h4, h5, h6 {
    color: #717171;
}

.multiple-topics h3 {
    display: none;
    padding: 0 0 17px;
    color: #000;
    font-size: 20px;
}

.multiple-topics .type-col {
    width: 100%;
    margin: 0 0 30px;
}

table, th, td {
    margin: 0;
    padding: 0;
    border-spacing: 0;
    border: 0;
    border-collapse: collapse;
    vertical-align: middle;
}

.multiple-topics .type-col th {
    height: 42px;
    padding: 10px 10px 10px 14px;
    background: #f9f9f9;
    border: 1px solid #dbdbdb;
    color: #555;
    text-align: left;
}

.multiple-topics .type-col td {
    padding: 10px 10px 10px 18px;
    border: 1px solid #dbdbdb;
}

/* 확대 */
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

#zoom-layer {
	position: fixed;
	left: 0;
	top: 0;
	z-index: 100;
	overflow-y: auto;
	width: 100%;
	height: 100%;
	background: rgba(0,0,0,0.3);
}

#zoom-layer .wrap {
    position: relative;
    width: 920px;
    height: 666px;
    min-height: 662px;
    padding: 0 19px;
    background: #fff;
    border: 3px solid #555;
}

#zoom-layer .wrap .ctt {
    position: relative;
}

#zoom-layer .wrap .txt {
    overflow: hidden;
    padding: 13px 0;
    border-bottom: 1px solid #717171;
}

#zoom-layer .wrap .txt h4 {
    float: left;
    padding: 0 0 0 4px;
    color: #000;
    font-size: 18px;
}

#zoom-layer .wrap .txt p {
    float: left;
    padding: 5px 0 0 10px;
    color: #777;
}

#zoom-layer .wrap .view {
    display: table;
    padding: 30px 0 0 31px;
}

#zoom-layer .wrap .view .detail {
    display: block;
    float: left;
    width: 560px;
    height: 550px;
    overflow: auto;
    vertical-align: middle;
    text-align: center;
}

#zoom-layer .wrap .view .detail img {
    max-width: 560px;
    vertical-align: middle;
}

#zoom-layer .wrap .view .list {
    float: left;
    position: relative;
    width: 70px;
    height: 550px;
    margin: 0 0 0 117px;
}

#zoom-layer .wrap .view .list .slide {
    overflow: hidden;
    height: 485px;
    margin: 33px 0 0;
}

#zoom-layer .wrap .view .list .prev {
    top: 0;
    background: url(../../resources/img/etc/vertical_prev.png) no-repeat left top;
}

#zoom-layer .wrap .view .list .prev, #zoom-layer .wrap .view .list .next {
    display: block;
    position: absolute;
    left: 50%;
    margin-left: -13px;
    width: 26px;
    height: 15px;
}

#zoom-layer .wrap .view .list .next {
    bottom: 0;
    background: url(../../resources/img/etc/vertical_next.png) no-repeat left top;
}

#zoom-layer .wrap .view .list .prev, #zoom-layer .wrap .view .list .next {
    display: block;
    position: absolute;
    left: 50%;
    margin-left: -13px;
    width: 26px;
    height: 15px;
}

#zoom-layer .wrap .close {
    display: block;
    position: absolute;
    top: 18px;
    right: 0;
    width: 20px;
    height: 20px;
    text-indent: -9999px;
    background: url(../resources/img/etc/zl_close.png) no-repeat left top;
}

button {
    cursor: pointer;
    background: none;
    border: none;
    outline: none;
}

</style>
</head>
<body>
	<c:import url="../main/mainHeader.jsp"></c:import>

	<div id="container" class="goodsv_container">
		<div id="content">
			<div class="goods-view">
			
				<%--------------- 상품 주문 : 카테고리 ---------------%>
				<div class="location">
					<div class="path">
						<h3 class="dn">현재 위치</h3>
						<span>홈</span>

						<!-- 토글1 -->
						<div class="navi">
							<div class="this">
								<a href="/spa/list">러쉬</a>
								<div class="drop">
									<a href="/product/list">러쉬</a>
									<a href="/spa/list">LUSH SPA</a>
								</div>
							</div>
						</div>
						<!-- 토글2 -->
						<div class="navi">
							<div class="this">
								<a href="/spa/list">페이스</a>
								<div class="drop">
									<a href="/product/list">베스트</a>
									<a href="#">신제품</a>
									<a href="#">배쓰</a>
									<a href="#">샤워</a>
									<a href="#">보디</a>
									<a href="#">페이스</a>
									<a href="#">헤어</a>
									<a href="#">메이크업</a>
									<a href="#">퍼퓸</a>
									<a href="#">기프트</a>
									<a href="#">비건</a>
								</div>
							</div>
						</div>
						<!-- 토글3 -->
						<div class="navi">
							<div class="this">
								<a href="/spa/list">클렌저</a>
								<div class="drop">
									<a href="#">클렌저</a>
									<a href="#">페이스 마스크</a>
									<a href="#">토너</a>
									<a href="#">모이스춰라이저</a>
									<a href="#">프라이머</a>
									<a href="#">립</a>
									<a href="#">쉐이빙크림</a>
								</div>
							</div>
						</div>
					</div>
					<%-- path end --%>
				</div>
				<%-- location end --%>
			
				<div class="goods">
					<div class="image">
						<!-- 큰썸네일 -->
						<div class="thumbnail">
							<img src="${product.photo}" width="380" alt="" title=""
								class="middle productPhoto">
						</div>
						
						<!-- 작은썸네일 -->
						<div class="more-thumbnail">
							<div class="slide">
								<div class="slider-wrap cycle slider-image-thumbnail slick-initialized slick-slider">
									<div aria-live="polite" class="slick-list">
										<div class="slick-track" role="listbox"
											style="opacity: 1; width: 80px; transform: translate3d(0px, 0px, 0px);">
											<span
												class="swiper-slide slick-slide slick-current slick-active"
												data-slick-index="0" aria-hidden="false" tabindex="-1"
												role="option" aria-describedby="slick-slide20"
												style="width: 80px;"> <a
												href="javascript:change_image('0','detail');" tabindex="0">
													<img
													src="${product.photo}"
													width="68" alt="" title=""
													class="middle">
											</a>
											</span>
										</div>
									</div>
								</div>
							</div>
							<div
								class="prev slider-image-thumbnail-prev slick-arrow slick-hidden"
								title="이전 상품 이미지" aria-disabled="true" tabindex="-1"></div>
							<div
								class="next slider-image-thumbnail-next slick-arrow slick-hidden"
								title="다음 상품 이미지" aria-disabled="true" tabindex="-1"></div>
						</div>
					</div>
					
					<div class="info">
						<div class="info_wrap">
							<div class="goods-header">
								<div class="top">
									<div class="tit">
										<h2 class="productName">${product.name}</h2>

									</div>
									<div class="hashtag">${product.hashTag}</div>
								</div>
								
								<div class="sns">
									<a class="normal-btn small1 target-sns-share">
										<em>공유<img
											class="arrow" src="../../resources/img/etc/bl_arrow.png"
											alt="">
										</em>
									</a>
									
									<div class="sns-share-layer dn">
										<div class="wrap">
											<strong>SNS 공유하기</strong>
											<div>
												<ul>
													<li>
														<a href="https://www.facebook.com/sharer/sharer.php?display=popup&amp;redirect_uri=http%3A%2F%2Fwww.facebook.com&amp;u=https%3A%2F%2Fwww.lush.co.kr%3A443%2Fgoods%2Fgoods_view.php%3FgoodsNo%3D1000001808&amp;t=%ED%83%B1%EA%B8%80%EB%93%9C+%ED%97%A4%EC%96%B4+%ED%8A%B8%EB%A6%AC%ED%8A%B8%EB%A8%BC%ED%8A%B8%EC%95%88%EB%85%95%ED%95%98%EC%84%B8%EC%9A%94.+%ED%94%84%EB%A0%88%EC%89%AC+%ED%95%B8%EB%93%9C%EB%A9%94%EC%9D%B4%EB%93%9C+%EC%BD%94%EC%8A%A4%EB%A9%94%ED%8B%B1+%EB%9F%AC%EC%89%AC%EC%BD%94%EB%A6%AC%EC%95%84%EC%9E%85%EB%8B%88%EB%8B%A4." 
															data-width="750" data-height="300" data-sns="facebook" class="btn-social-popup">
															<img src="../../resources/img/etc/sns_facebook.png"><br>
															<span>페이스북</span></a>
													</li>
													<li>
														<a href="https://twitter.com/intent/tweet?text=%ED%83%B1%EA%B8%80%EB%93%9C+%ED%97%A4%EC%96%B4+%ED%8A%B8%EB%A6%AC%ED%8A%B8%EB%A8%BC%ED%8A%B8%EC%95%88%EB%85%95%ED%95%98%EC%84%B8%EC%9A%94.+%ED%94%84%EB%A0%88%EC%89%AC+%ED%95%B8%EB%93%9C%EB%A9%94%EC%9D%B4%EB%93%9C+%EC%BD%94%EC%8A%A4%EB%A9%94%ED%8B%B1+%EB%9F%AC%EC%89%AC%EC%BD%94%EB%A6%AC%EC%95%84%EC%9E%85%EB%8B%88%EB%8B%A4.&amp;url=https%3A%2F%2Fwww.lush.co.kr%3A443%2Fgoods%2Fgoods_view.php%3FgoodsNo%3D1000001808" 
															data-width="500" data-height="250" data-sns="twitter" class="btn-social-popup">
															<img src="../../resources/img/etc/sns_twitter.png"><br>
															<span>트위터</span></a>
													</li>
													<li>
														<a href="https://www.pinterest.com/pin/create/button/?url=https%3A%2F%2Fwww.lush.co.kr%3A443%2Fgoods%2Fgoods_view.php%3FgoodsNo%3D1000001808&amp;description=%5B%EB%9F%AC%EC%89%AC%EC%BD%94%EB%A6%AC%EC%95%84%5D+%ED%83%B1%EA%B8%80%EB%93%9C+%ED%97%A4%EC%96%B4+%ED%8A%B8%EB%A6%AC%ED%8A%B8%EB%A8%BC%ED%8A%B8FRESH+HANDMADE+COSMETIC+LUSH+KOREA&amp;media=https%3A%2F%2Flush.co.kr%3A443%2F%2Fdata%2Fgoods%2F21%2F06%2F26%2F1000001808%2F1000001808_detail_089.jpg" 
															data-width="750" data-height="570" data-sns="pinterest" class="btn-social-popup">
															<img src="../../resources/img/etc/sns_pinterest.png"><br>
															<span>핀터레스트</span></a>
													</li>
													<li>
														<a href="javascript:shareStory();" 
														id="shareKakaoStoryBtn" data-sns="kakaostory">
														<img src="../../resources/img/etc/sns_kakaostory.png"><br>
														<span>카카오스토리</span></a>
													</li>
												</ul>
												
												<div class="copyurl">
													<input type="text" value="https://www.lush.co.kr:443/goods/goods_view.php?goodsNo=1000001808" 
														class="text field-b" style="width:196px;margin-right:8px;margin-left:0;">
													<button type="button" class="gd_clipboard skinbtn point2" 
														data-clipboard-text="https://www.lush.co.kr:443/goods/goods_view.php?goodsNo=1000001808" 
														title="상품주소">
														<em class="h28">URL복사</em>
													</button>	
												</div>
											</div>
											<button type="button" class="close target-sns-share" title="닫기">닫기</button>
										</div>
									</div>
									<script>
										$(document).ready(function(){
											$('.target-sns-share').click(function(){
												$('.sns-share-layer').toggleClass("dn");
											});
										});
									</script>
								</div>
								
								<a href="#option_display_area" id="wishBtn"
									class="top_zzim btn-add-wish"> <em>찜하기</em>
								</a>
								<script>
									$('.btn-add-wish').on('click', function(e){
							            goods_order('w');
							            return false;
							        });
								</script>
							</div>
							
							<div class="item">
								<div>
									<a href="#reviews">
										<span class="-moslow">
											<span class="review_underline">0</span> 
											개의 후기 보기
										</span>
									</a>
								</div>
										
								<div class="mt10">
									Good to Know
									<span class="toggle_w">
										<span class="toggle_btn"></span>
										<div class="toggle_content" style="width: 500px; display: none;">
											<a href="#;" class="toggle_close">닫기</a>
											<div class="inner">
												<div class="goodToKnow" style="width: 100%;">
													<table style="width: 100%; border-collapse: collapse;">
														<tbody>
															<tr>
																<td class="goodToKnowImg"><img
																	src="../../resources/img/goods/know/vegan.png"
																	alt="비건(Vegan)"></td>
																<td>비건(Vegan)<br> 
																	<span>동물성 원료를 전혀 포함하지 않은 영국 비건협회 인증된 제품입니다.</span>
																</td>
															</tr>
															<tr>
																<td class="goodToKnowImg"><img
																	src="../../resources/img/goods/know/vegetarian.png"
																	alt="베지터리언(Vegetarian)"></td>
																<td>베지테리언(Vegetarian)<br> 
																	<span>우유, 달걀, 꿀을 제외한 동물성 원료를 포함하지 않은 영국 베지테리언 협회 인증 제품입니다.</span>
																</td>
															</tr>
															<tr>
																<td class="goodToKnowImg"><img
																	src="../../resources/img/goods/know/suitable_vegan.png"
																	alt="비건/베지터리언에게 적합한 제품(Suitable for Vegans / Suitable for Vegetarian)">
																</td>
																<td>비건/베지테리언에게 적합한 제품(Suitable for Vegans / Suitable for Vegetarians)<br> 
																	<span>동물성 원료를 포함하지 않은 제품입니다.</span>
																</td>
															</tr>
															<tr>
																<td class="goodToKnowImg"><img
																	src="../../resources/img/goods/know/selfpreserving.png"
																	alt="셀프-프리저빙(Self-Preserving)"></td>
																<td>셀프-프리저빙(Self-Preserving)<br>
																	<span>자연에서 얻은 원재료로 스스로 보존 가능한 제품입니다.</span>
																</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</span>
									<script>
										$(document).ready(function(){
											$('.toggle_btn').click(function(){
												$('.toggle_content').toggle();
											});
											$('.toggle_close').click(function(){
												$('.toggle_content').hide();
											});
											$('.sns > a').click(function(){
												$('.toggle_content').hide();
											});
										});
									</script>
								</div>
								
								
								<ul>
									<li class="price"><strong>판매가</strong>
										<div>
											<strong class="productPrice">￦${product.price}</strong><span></span>
											<!-- 글로벌 참조 화폐 임시 적용 -->
										</div></li>
								</ul>
							</div>
							<div class="choice">
								<div class="list">
									<strong>용량</strong>
									<div class="productWeight">${product.weight}g</div>
								</div>
							</div>
							<div class="btn">
							<div class="productCategory" style="display: none;">${product.category}</div>
							<div class="memberId"  style="display: none;">${memberVO.id}</div>
								<button id="cartBtn">장바구니</button>
								<button id="orderBtn">주문하기</button>
							</div>

						</div>
					</div>
				</div>
				
				<%--------------- 상품 주문 : 리뷰 ---------------%>
				<div class="adpic_detail"></div>
				
				<div class="in_width_wrap">
					<div class="section m2">
						<div class="section-body">
							<form target="ifrmProcess" method="post" action="../board/plus_review_ps.php" enctype="multipart/form-data">
								<input type="hidden" name="mode" value="get_benefit">
								<input type="hidden" name="goodsNo" value="1000001808">
								<input type="hidden" name="orderGoodsNo" value="">
								
								<div class="plusreview-container">
									<div class="title-container">
										<span class="text">Plus Review<span style="display:none;">(0)</span></span>
										<span class="menu"><a href="../board/plus_review_article.php">전체리뷰</a></span>
										<span class="separator">|</span><span class="menu"><a href="../board/plus_review_goods.php">상품별리뷰</a></span>
									</div>
									
									<div class="summary_new">
					                    <div class="graph-container" style="display:none;">
					                        <div class="title">세부평가</div>
					                        <div class="star">★</div>
					                        <div class="number">5</div>
					                        <div class="graph-base">
					                            <div class="graph" style="width:0%;"></div>
					                        </div>
					                        <div class="score">0</div>
					                        <div class="star">★</div>
					                        <div class="number">4</div>
					                        <div class="graph-base">
					                            <div class="graph" style="width:0%;"></div>
					                        </div>
					                        <div class="score">0</div>
					                        <div class="star">★</div>
					                        <div class="number">3</div>
					                        <div class="graph-base">
					                            <div class="graph" style="width:0%;"></div>
					                        </div>
					                        <div class="score">0</div>
					                        <div class="star">★</div>
					                        <div class="number">2</div>
					                        <div class="graph-base">
					                            <div class="graph" style="width:0%;"></div>
					                        </div>
					                        <div class="score">0</div>
					                        <div class="star">★</div>
					                        <div class="number">1</div>
					                        <div class="graph-base">
					                            <div class="graph" style="width:0%;"></div>
					                        </div>
					                        <div class="score">0</div>
					                    </div>
					
					                    <div class="photoreview-container">
					                        <div class="inner">
												<div class="title">포토리뷰 모아보기</div>
					                        	<div class="photo_list">
					                        		<div class="photo-info">정성 가득 포토 후기를 남겨주시면 깜짝 선물을 드려요!</div>
												</div>
					             				<a href="../board/plus_review_photo.php?searchWord=탱글드 헤어 트리트먼트" target="_blank" class="more">더보기 &gt;</a>
											</div>
					                    </div>
					
										<div class="score-container">
					                        <div class="inner">
					                        	<div class="average">
					                        	    <div class="title">평가</div>
					                        	    <div class="score">0</div>
					                        	    <div class="star">
					                        	    </div>
					                        	</div>
					
					                        	<div class="counter">
					                        	    <div>
					                        	    	<div class="title">리뷰등록</div>
					                        	    	<div class="content">0 건</div>
					                        	    </div>
					                        	    <div>
					                        	    	<div class="title">포토리뷰</div>
					                        	    	<div class="content">0 건</div>
					                        	    </div>
					                        	    <div>
					                        	    	<div class="title">상품조회수</div>
					                        	    	<div class="content">0 건</div>
					                        	    </div>
					                        	</div>
					                        </div>
					                    </div>
					                    <div class="clear-both"></div>
					                </div>
					                
					                <div class="reward" style="position:relative">
					                    <div class="selectbox js-pr-star-select">
					                        <select class="tune" name="goodsPt" style="width: 700px; display: none;" tabindex="-1">
					                            <option data-info="아주만족 " value="5">★★★★★</option>
					                            <option data-info="만족 " value="4">★★★★</option>
					                            <option data-info="보통 " value="3">★★★</option>
					                            <option data-info="미흡 " value="2">★★</option>
					                            <option data-info="불만족" value="1">★</option>
					                        </select><div class="chosen-container chosen-container-single chosen-container-single-nosearch" style="width: 0px;" title=""><a class="chosen-single chosen-sch" tabindex="-1"><span>★★★★★</span><div><b></b></div></a><div class="chosen-drop"><div class="chosen-search"><input type="text" autocomplete="off" readonly="" tabindex="-1"></div><ul class="chosen-results"></ul></div></div>
					                    </div>
					                    <button type="button" class="showreward js-pr-target-benefit">혜택안내</button>
					                    <div class="benefit-layer dn js-pr-benefit">
					                        <div class="wrap">
					                            <strong>구매혜택</strong>
					                            <div class="info"></div>
					                        </div>
					                    </div>
					                    <div class="clear-both"></div>
					                </div>
					                
					                <div class="write-form">
					                    <div class="goods-info">
					                        <div class="option">
					                        </div>
					                    </div>
					
					                    <div class="textarea"><textarea name="contents" class="reviewText" required="" placeholder=""></textarea></div>
					                    <div class="private-container">
					                        <div>
					                            <div class="title"><span><strong>비회원 개인정보 수집동의</strong></span><span class="showall"><a href="../service/private.php" target="_blank">전체보기</a></span></div>
					                            <div class="agreement">- 수집항목: 이름, 전화번호, 이메일주소
					                                - 수집/이용목적: 게시글 접수 및 결과 회신
					                                - 이용기간: 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다.
					                                단, 관계법령의 규정에 의하여 보전할 필요가 있는 경우 일정기간 동안 개인정보를 보관할 수 있습니다.
					                                그 밖의 사항은 (주)러쉬코리아 개인정보처리방침을 준수합니다.
					                            </div>
					                        </div>
					
					                        <div class="personal-information">
					                            <span>작성자</span>
					                            <span><input type="text" class="username" name="writerNm" required=""></span>
					                            <span>비밀번호</span>
					                            <span><input type="password" class="password" name="writerPw" required=""></span>
					                        </div>
					
					                        <div class="agree"><input type="checkbox" class="checkbox require" id="termsAgree" name="agreeFl"><label for="termsAgree">위 내용에 동의 합니다.</label></div>
					                        <div class="clear-both"></div>
					                    </div>
					                    <div class="attach-container">
					                        <div class="filelist">
					                            <div class="file">
					                                <button class="image-upload-button"></button>
					                                <input type="file" name="upfiles[]" class="image-upload"></div>
					                            <div class="js-pr-attach-list" style="float: left">
					                            </div>
					                            <div class="clear-both"></div>
					                        </div>
					                        <div class="buttons">
					                            <button class="button" type="submit">리뷰등록</button>
					                        </div>
					                        <div class="clear-both"></div>
					                    </div>
					                </div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<%--------------- 상품 주문 : 상품 정보 ---------------%>
				<div class="multiple-topics">
					<div id="detail">
						<div class="in_width_wrap">
							<div class="tab">
								<a href="#detail" class="on">상품상세정보</a><a href="#reviews">상품후기
									(220)</a><a href="#delivery">배송/교환 및 반품안내</a>
							</div>
						</div>
						<c:if test="${!product.youtube eq ''}">
						<div style="padding: 10px 0; text-align: center"
							id="external-video">
							<iframe width="1180" height="551" src="${product.youtube}"
								frameborder="0" allowfullscreen=""></iframe>
						</div>
						</c:if>

						<div class="txt-manual">
							<!-- 상품상세 공통정보 관리를 상세정보 상단에 노출-->

							<!--<a href="https://lush.co.kr/goods/goods_view.php?goodsNo=12" target="_blank"><img src="http://img.lush.co.kr/pns/noti/201028_bn_beautysleep_1180.jpg"></a>-->



							<div id="wrap">
								<div class="container">

									<section class="detail-section section-header">
										<!-- 제품 타이틀 영역 -->
										<div class="inner">
											<p class="category">${product.innerText}</p>
											<h1 class="title">
												<span class="title-kr">${product.innerText2}</span> <span class="title-en">${product.innerText3}</span>
											</h1>
										</div>
									</section>
									<!-- // 제품 타이틀 영역 -->

									<section class="detail-section early-review is-soup">
										<!-- 미리 써 본 후기 -->
										<div class="inner clearfix">
											<div class="bg-image">
												<img alt="뷰티슬립 미리 써 본 후기 배경 이미지"
													src="${product.bgImage}">
											</div>
											<div class="review-box">
												<div class="box-inner">
													<h2 class="title clearfix">
														<span class="title-text">미리 써 본 후기</span>
														<div class="stars">
															<span class="star-item"></span> <span class="star-item"></span>
															<span class="star-item"></span> <span class="star-item"></span>
															<span class="star-item"></span>
															<!-- 빈 별은 empty 클래스 삽입 -->
														</div>
													</h2>
													<div class="content">${product.review}</div>
													
												</div>
											</div>
										</div>
									</section>
									<!-- // 미리 써 본 후기 -->

									<section class="detail-section description">
										<!-- 제품 설명 및 사진 -->
										<div class="inner">
											<div class="text-wrap">
												<p class="desc">
													${product.text}


												</p>
												<p class="tip">
													<strong>TIP<i class="qus">!&nbsp;&nbsp;</i></strong>${product.tip}
												</p>
											</div>
											<div class="image-wrap">
												<img alt="뷰티슬립 이미지"
													src="${product.imageWrap}">
											</div>
										</div>
									</section>
									<!-- // 제품 설명 및 사진 -->

									
								</div>
								

								<section class="detail-section usage">
									<!-- 사용방법 -->
									<div class="inner clearfix">
										<div class="bg-image">
											<img alt="사용방법 배경 이미지"
												src="${product.bgImage2}">
										</div>
										<div class="usage-box">
											<div class="box-inner">
												<h1 class="title">사용 방법</h1>
												<div class="content">
													${product.usageText}

												</div>
												<div class="hashtags">
													${product.hashTag}

												</div>
											</div>
										</div>
									</div>
								</section>
								<!-- // 사용방법 -->
							</div>
							

							<section class="detail-section packing">
								<!-- 친환경 포장 -->
								<div class="inner">
									<h1 class="section-title">친환경 포장</h1>
									<div class="packing-cont">
										<p class="desc">
											환경을 생각하는 마음을 담아 신선하게 배송해 드립니다.<br> 배송 상자는 운송장을 떼어 분리배출하고
											<br class="break">완충재는 부피를 줄여 일반 쓰레기로 배출해주세요.
										</p>
										<p class="packing-tip">
											<strong>TIP<span class="i">!</span></strong>냉장배송이 필요한 제품은
											100% 물이 담긴 <br class="break">종이 아이스 팩과 함께 출발합니다. (5~9월에
											해당)
										</p>
										<div class="graphics">
											<img src="https://lush.co.kr/data/newdetail/img/bg_packing.jpg" class="pc-only"
												alt=""> <img
												src="https://lush.co.kr/data/newdetail/img/bg_packing_m.jpg" class="m-only"
												alt=""> <span class="item paper"><strong>종이
													완충재</strong>종이 분리배출</span> <span class="item box"><strong>비접착
													끼움 상자</strong>종이 분리배출</span> <span class="item corn"><strong>옥수수
													전분 완충재</strong>부피를 줄여 <br class="break">일반쓰레기 배출<br>(자연
												분해)</span>
										</div>
									</div>
									<div class="check">
										<h2 class="tit">Check Point!</h2>
										<ul class="check-list">
											<li class="dg"><img
												src="https://lush.co.kr/data/newdetail/img/img_packing_check01.png" alt="">
												<span class="txt"> 제품에 부착된 스티커에서<br> 제조자와 사용 기한을
													확인하세요.<br> 스티커 속에서 깜짝 메세지도<br> 찾아볼 수 있습니다.
											</span></li>
											<li class="dg"><img
												src="https://lush.co.kr/data/newdetail/img/img_packing_check02.png" alt="">
												<span class="txt"> 러쉬는 정직한 재료를 사용하여<br> 모든 제품을
													손으로 만듭니다.<br> 어떤 모양의 제품이 오더라도<br> 사랑해 주실거죠?
											</span></li>
										</ul>
									</div>
								</div>
							</section>
							<!-- // 친환경 포장 -->

							<section class="detail-section blackpot">
								<!-- 블랙팟의 환생 참여 방법 -->
								<div class="inner">
									<h1 class="section-title">블랙 팟의 환생 참여방법</h1>
									<div class="blackpot-box">
										<img src="https://lush.co.kr/data/newdetail/img/bg_blackpot_pc.jpg"
											class="pc-only" alt=""> <img
											src="https://lush.co.kr/data/newdetail/img/bg_blackpot_m.jpg" class="m-only"
											alt="">
										<p class="desc">
											모두 사용한 블랙 팟 공병을 <br class="break">깨끗이 씻어 매장에 방문해보세요!<br>신선한
											프레쉬 페이스 마스크 1종을 <br class="break">선물해드립니다.
										</p>
										<a href="/board/view.php?&amp;bdId=article&amp;sno=110"
											class="btn-more">자세히 보기</a>
									</div>	
								</div>
							</section>
							<!-- //블랙팟의 환생 참여 방법 -->


							<p>&nbsp;</p>
						</div>

					</div>
					
					<div id="reviews">
						<div class="in_width_wrap">
							<div class="tab">
								<a href="#detail">상품상세정보</a>
								<a href="#reviews" class="on">상품후기(0)</a>
								<a href="#delivery">배송/교환 및 반품안내</a>
							</div>
							
							<div class="top-reviews">
								<div class="tit">
									<h3>Product Reviews
										<span class="star">
			                            </span>
										<span class="reviewCount">
										0
										</span>
									</h3>
									<p>나만의 꿀팁이나 제품을 사용하는 생생한 모습을 보여주세요!</p>
								</div>
								
								<div class="btn">
									<a href="javascript:openWriteLayer('goodsreview','1000001808')" class="skinbtn point2 gv-reviewwrite"><em>후기작성</em></a>
									<!-- <a href="../board/list.php?bdId=goodsreview" class="skinbtn point1 gv-reviewlist"><em>전체보기</em></a> -->
								</div>
							</div>
							
							<div>
								<div class="section m2">
									<div class="section-body">
										<form target="ifrmProcess" id="plusReviewForm" method="post" action="../board/plus_review_ps.php" enctype="multipart/form-data" onsubmit="ztu_form_chk();" novalidate="novalidate">
											<input type="hidden" name="mode" value="get_benefit">
											<input type="hidden" name="goodsNo" value="1000001808">
											<input type="hidden" name="orderGoodsNo" value="">
											
											<div class="plusreview-add">     
												<dl>
													<dt>평가</dt>
													<dd>
														<ul class="choice-rating">
															<li> 
																<input type="radio" name="goodsPt" value="5" class="radio goodsPt" id="rating5">
																<label for="rating5"><span class="rating02"><span style="width:100%;">별5</span></span></label>
															</li>
															<li> 
																<input type="radio" name="goodsPt" value="4" class="radio goodsPt" id="rating4">
																<label for="rating4"><span class="rating02"><span style="width:80%;">별4</span></span></label>
															</li>
															<li> 
																<input type="radio" name="goodsPt" value="3" class="radio goodsPt" id="rating3">
																<label for="rating3"><span class="rating02"><span style="width:60%;">별3</span></span></label>
															</li>
															<li> 
																<input type="radio" name="goodsPt" value="2" class="radio goodsPt" id="rating2">
																<label for="rating2"><span class="rating02"><span style="width:40%;">별2</span></span></label>
															</li>
															<li> 
																<input type="radio" name="goodsPt" value="1" class="radio goodsPt" id="rating1">
																<label for="rating1"><span class="rating02"><span style="width:20%;">별1</span></span></label>
															</li>
														</ul>
													</dd>
												</dl>
											</div>
											
											<div class="plusreview-container">               
								                <div class="write-form" style="display:block;"> 
								
								                    <div class="textarea"><textarea name="contents" class="reviewText" required="" placeholder="" aria-required="true"></textarea></div>
								                    <div class="private-container">
								                        <div>
								                            <div class="title"><span><strong>비회원 개인정보 수집동의</strong></span><span class="showall"><a href="../service/private.php" target="_blank">전체보기</a></span></div>
								                            <div class="agreement">- 수집항목: 이름, 휴대전화번호, 작성 비밀번호
								                                - 수집/이용목적: 게시글 접수 및 결과 회신
								                                - 이용기간: 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다.
								                                단, 관계법령의 규정에 의하여 보전할 필요가 있는 경우 일정기간 동안 개인정보를 보관할 수 있습니다.
								                                위와 같이 수집하는 개인정보에 대해, 동의하지 않거나 거부할 수 있습니다. 다만, 동의하지 않거나 거부할 경우 회원에게 제공되는 서비스가 제한될 수 있습니다.
								                                그 밖의 사항은 (주)러쉬코리아 개인정보처리방침을 준수합니다.
								                            </div>
								                        </div>
								
								                        <div class="personal-information">
								                            <span>작성자</span>
								                            <span><input type="text" class="username" name="writerNm" required="" aria-required="true"></span>
								                            <span>비밀번호</span>
								                            <span><input type="password" class="password" name="writerPw" required="" aria-required="true"></span>
								                        </div>
								
								                        <div class="agree"><input type="checkbox" class="checkbox require" id="termsAgree" name="agreeFl"><label for="termsAgree">위 내용에 동의 합니다.</label></div>
								                        <div class="clear-both"></div>
								                    </div>
								                    <div class="attach-container">
								                        <div class="filelist">
								                            <div class="file">
								                                <button class="image-upload-button"></button>
								                                <input type="file" name="upfiles[]" class="image-upload"></div>
								                            <div class="js-pr-attach-list" style="float: left">
								                            </div>
								                            <div class="clear-both"></div>
								                        </div>
								                        <div class="buttons">
								                            <button class="button" type="submit">후기작성</button>
								                        </div>
								                        <div class="clear-both"></div>
								                    </div>
								                </div>
								            </div>
										</form>
										
										<div class="plusreview-container-list">
											<div class="title-container"></div>
											
											<div class="js-pr-list">
												<div class="no-data">등록된 상품 후기가 없습니다.</div>
												<div class="clear-both" style="margin-top:20px">
													<nav><ul class="pagination pagination-sm"></ul></nav>
												</div>
												
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div id="ajax-goods-goodsreview-list">
							</div>
							
							
						</div>
					</div>
					
					<div id="delivery">
			            <div class="in_width_wrap">
							<div class="tab">
								<a href="#detail">상품상세정보</a><a href="#reviews">상품후기(0)</a><a href="#delivery" class="on">배송/교환 및 반품안내</a>
							</div>
						</div>
						<div class="in_width_wrap">
							<h3>배송안내</h3>
							<div class="admin-msg"><h4 style="margin: 0px; padding: 25px 0px 10px; letter-spacing: -0.5px; font-family: notokrR, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, AppleGothic, Dotum, 돋움, sans-serif; font-size: 16px;">스파 바우처 주문</h4><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">자세한 주문 내역은 [ 마이페이지 &gt; 스파 &gt; 스파 주문내역 ]에서 확인할 수 있습니다. (바우처 번호 확인/등록/선물)</p><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">스파 바우처는 비회원 구매 / 일반 상품과 동시 결제 / 혜택 사용 등을 할 수 없습니다.</p><h4 style="margin: 0px; padding: 25px 0px 10px; letter-spacing: -0.5px; font-family: notokrR, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, AppleGothic, Dotum, 돋움, sans-serif; font-size: 16px;">스파 바우처 사용</h4><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">구매일 기준으로 1년 안에 사용할 수 있습니다.</p><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">선물하기나 예약완료 문자(LMS) 발송을 [ 마이페이지 &gt; 스파 &gt; 스파 주문내역 ]에서 최대 3회까지 직접 발송할 수 있습니다</p><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">러쉬코리아에서 구매한 스파 바우처는 국내 스파 매장에서만 사용할 수 있습니다.</p><h4 style="margin: 0px; padding: 25px 0px 10px; letter-spacing: -0.5px; font-family: notokrR, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, AppleGothic, Dotum, 돋움, sans-serif; font-size: 16px;">스파 바우처 교환/환불</h4><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">사이트에서 직접 [결제취소]를 하려면 바우처 등록 전에만 가능합니다.</p><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">바우처 등록 후, 환불을 하려면 고객센터로 연락 주세요. (구매일로부터 1년 내 100% / 5년 내 90% 환불 가능)</p><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">스파 바우처는 일반 제품이나, 다른 바우처로 교환할 수 없습니다.</p><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">러쉬코리아에서 구매한 스파 바우처는 국내 매장에서만 이용할 수 있습니다.</p><h4 style="margin: 0px; padding: 25px 0px 10px; letter-spacing: -0.5px; font-family: notokrR, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, AppleGothic, Dotum, 돋움, sans-serif; font-size: 16px;">스파 예약</h4><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">커플 스파나 당일 이용을 하려면 예약하기 전에 스파 매장으로 미리 문의해 주시기 바랍니다. (커플 스파 불가 : 테일즈 오브 배쓰 / 카마 / 더 플래니츠)&nbsp;</p><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">스파 바우처 번호 등록은[ 마이페이지 &gt; 스파 &gt; 스파 등록/예약 ]에서 하고 [예약하기]로 신청할 수 있습니다.</p><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">사이트 예약은 현재에서 2일 이후 날짜로 선택할 수 있습니다.</p><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">예약하기를 신청하면 스파 매장에서 고객님께 직접 전화를 드려서 희망하는 예약 일시로 조율해 드립니다.</p><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">예약이 완료되면 안내 문자가 발송되며, 예약 당일 스파 매장에서 예약 문자를 확인하고 이용할 수 있습니다.</p><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">예약이 완료된 일정으로 진행되므로, 예정된 시간 전에 매장에 미리 도착해 주시기 바랍니다.</p><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">예약일시를 변경하고 싶다면 스파 매장으로 전화해 주시기 바랍니다.</p><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">예약을 취소하려면 스파 매장이나 고객센터로 문의해 주시기 바랍니다.</p><h4 style="margin: 0px; padding: 25px 0px 10px; letter-spacing: -0.5px; font-family: notokrR, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, AppleGothic, Dotum, 돋움, sans-serif; font-size: 16px;">스파 이용</h4><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">스파 소요시간은 약 2시간 내외입니다.</p><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">속옷, 렌즈통 등의 일회용 제품은 제공하지 않습니다.</p><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">샤워는 15분동안 하실 수 있고, 같은 시간대에 여러분들이 예약한 경우 샤워실 이용이 어려울 수 있습니다. (15분 지각 시 샤워 불가)</p><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">예약한 시간보다 30분 이상 지각하면 예약이 취소될 수 있습니다.</p><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">발렛 파킹은 무료이며, 사전 예약이 필요하므로 매장에 문의해주시기 바랍니다.</p><h4 style="margin: 0px; padding: 25px 0px 10px; letter-spacing: -0.5px; font-family: notokrR, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, AppleGothic, Dotum, 돋움, sans-serif; font-size: 16px;">스파 이용</h4><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">압구정 스파 매장 02-549-5872</p><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">경리단길 스파 매장 02-790-7561</p><h4 class="noti mt30" style="margin: 30px 0px 0px; padding: 30px 0px 10px; letter-spacing: -0.5px; font-family: notokrR, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, AppleGothic, Dotum, 돋움, sans-serif; font-size: 16px;">※ 아래 내용을 꼭 읽어주세요!</h4><h4 style="margin: 0px; padding: 25px 0px 10px; letter-spacing: -0.5px; font-family: notokrR, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, AppleGothic, Dotum, 돋움, sans-serif; font-size: 16px;">1. 임신</h4><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">러쉬는 임신/임산부에게도 완벽한 트리트먼트의 경험이 되기를 바랍니다.</p><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">- 초기 임신부 : 어떤 상황에서도 트리트먼트를 진행할 수 없습니다. ​</p><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">- 모든 임신/임산부 : 가능한 트리트먼트가 있는지 ​매장으로 문의해 주시기 바랍니다.</p><h4 style="margin: 0px; padding: 25px 0px 10px; letter-spacing: -0.5px; font-family: notokrR, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, AppleGothic, Dotum, 돋움, sans-serif; font-size: 16px;">2. 연령</h4><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">연령에 맞는 완벽한 트리트먼트 경험이 되기를 바랍니다.</p><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">- 12세 미만 : 어떤 트리트먼트도 진행할 수 없습니다.</p><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">- 16세 미만 : 부모의 동의서가 있고, 부모 혹은 법적 보호자가 트리트먼트 룸에 동행할 경우에 한하여 ‘발리데이션 페이셜, 더 스펠 트리트먼트’를 진행할 수 있습니다.</p><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">- 16세 이상 : 부모의 동의서가 있는 경우나 부모 혹은 법적 보호자가 트리트먼트 룸에 동행할 경우에 한하여 ‘더 플래닛츠, 카마, 테일즈 오브 배쓰’를 제외한 모든 트리트먼트를 진행할 수 있습니다.</p><p style="color: rgb(51, 51, 51); line-height: 22px; letter-spacing: -0.5px; font-family: notokrR; font-size: 14px;">- 18세 이상 : 스파 규정의 다른 유의 사항에 해당하지 않는다면 모든 트리트먼트를 진행할 수 있습니다.</p></div>
						</div>
			
			
			
						<div class="in_width_wrap">
			            <h3>상품필수 정보</h3>
			            <table class="type-col " cellspacing="0" border="1" style="margin-top:50px;">
			                <colgroup>
			                    <col width="20%">
			                    <col>
			                </colgroup>
			                <tbody>
			                <tr>
			                    <th style="width:20%">
			                        기능성 제품 식약청 심사 필 유무
			                    </th>
			                    <td colspan="3" style="width:80%">식품의약품안전처 심사 대상 아님</td>
			                </tr>
			                <tr>
			                    <th style="width:20%">
			                        품질 보증 기준
			                    </th>
			                    <td colspan="3" style="width:80%">공정거래위원회 고시 소비자분쟁해결기준에 의거 교환 또는 보상 받을 수 있습니다.</td>
			                </tr>
			                <tr>
			                    <th style="width:20%">
			                        제조원 / 발행판매업자
			                    </th>
			                    <td colspan="3" style="width:80%">제조원: LUSH Ltd., 29 High St. Poole, Dorset, BH15 1AB, England. 발행판매업자: ㈜ 러쉬코리아 서울특별시 서초구 서운로 138</td>
			                </tr>
			
			                </tbody>
						</table>
						</div>
			        </div>
			        
			        <div id="qna" style="display: none;">
						<div class="in_width_wrap">
				            <div class="tab">
								<a href="#detail">상품상세정보</a><a href="#reviews">상품후기(0)</a><a href="#delivery">배송/교환 및 반품안내</a>
							</div>
				            <div class="top-reviews">
				                <div class="tit">
				                    <h3>상품Q&amp;A</h3>
				                    <p>상품에 대한 문의를 남겨주세요. 게시판의 성격과 다른 글은 임의로 삭제되거나 다른 게시판으로 이동될 수 있습니다.</p>
				                </div>
								<div class="btn">
									<a href="javascript:openWriteLayer('goodsqa','1000001808')" class="skinbtn point2 gv-qnawrite"><em>상품문의</em></a>
									<!-- <a href="../board/list.php?bdId=goodsqa" class="skinbtn point1 gv-qnalist"><em>전체보기</em></a> -->
								</div>
				            </div>
				            11
				            <div id="ajax-goods-goodsqa-list"></div>
				
				        </div>
					</div>
					
				</div>
			</div>
			
			<%--------------- 확대보기 ---------------%>
			<div id="zoom-layer" class="layer-wrap dn">
		        <div class="wrap" style="position: absolute; margin: 0px; top: 124px; left: 61px;">
		            <div class="ctt">
		                <div class="txt">
		                    <h4>이미지 확대보기</h4>
		                    <p>${product.name}</p>
		                </div>
		                <div class="view">
		                    <div class="detail" id="magnifyImage">
		                        <img src="${product.photo}" width="500" alt="" title="" class="middle">
		                    </div>
		                    <div class="list">
		                        <div class="slide">
		                            <div class="slider-image-magnify slick-initialized slick-slider slick-vertical">
		                                <div aria-live="polite" class="slick-list" style="height: 500px;">
		                                	<div class="slick-track" role="listbox" style="opacity: 1; height: 100px; transform: translate3d(0px, 0px, 0px);">
		                                		<div class="swiper-slide slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide10" style="width: 0px;">
		                                			<a href="javascript:change_image('0','magnify');" tabindex="0">
		                                				<img src="${product.photo}" width="68" alt="" title="" class="middle">
                              			</a></div></div></div>
		                            </div>
		                        </div>
		                        <div class="prev slider-image-magnify-prev slick-arrow slick-hidden" title="이전 상품 이미지" aria-disabled="true" tabindex="-1"></div>
		                        <div class="next slider-image-magnify-next slick-arrow slick-hidden" title="다음 상품 이미지" aria-disabled="true" tabindex="-1"></div>
		                    </div>
		                </div>
		                <button type="button" class="close zoom-close" title="닫기">닫기</button>
		            </div>
		        </div>
		    </div>
		    <script>
		    	$(document).ready(function(){
		    		$('.thumbnail').click(function(){
		    			$('.layer-wrap').toggleClass("dn");
		    		});
		    		$('.zoom-close').click(function(){
		    			$('.layer-wrap').toggleClass("dn");
		    		})
		    	});
		    </script>
			
		</div>
	</div>
	<c:import url="../main/mainFooter.jsp"></c:import>
	
	<script type="text/javascript">
	
	$('#cartBtn').click(function(){
		
		let member = "${memberVO.id}";
		
		let category = "${product.category}";
		let name = "${product.name}";
		let price = "${product.price}";
		let photo = "${product.photo}";
		let num = "${product.num}";
		console.log(member);
		console.log(category);
		console.log(name);
		console.log(price);
		console.log(photo);
		console.log(num);
		
		
		$.ajax({
			
			type : "GET",
			url : "../cart/cartInsert",
			data : {
				cart_num : num,
				member_id : member,
				ps_group : category,
				ps_name : name,
				ps_price : price,
				ps_amount : 1,
				ps_photo : photo
			},
			success : function(result) {
				if(confirm("장바구니에 담겼습니다 확인하시겠습니까?")==true){
					window.location.href="../cart/cartPage";
				} else {
					window.location.href="./list";
				}
				
				
			}

		});
	});
	
	</script>
</body>
</html>