<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
@font-face {
	font-family: 'notokrR';
	src: url('/resources/fonts/NotoSansKR-Regular.otf') format('opentype');
}

@font-face {
	font-family: 'notokrB';
	src: url('/resources/fonts/NotoSansKR-Bold.otf') format('opentype');
}

@font-face {
	font-family: 'HelveticaNeue-Heavy';
	src: url('/resources/fonts/HelveticaNeue-Heavy.otf') format('opentype');
}

#container {
    height: 100%;
    min-height: 100%;
    padding-top: 100px;
    max-width: 1217px;
    display: block;        
    max-width: 1180px;    
    vertical-align: top;
    table-layout: fixed;
    position: relative;
    margin: 0 auto;
}

#content {
    width: 100%;
    max-width: 1217px;
    display: block;    
    margin: 50px auto;
    padding: 0 0 50px;
    vertical-align: top;    
}

.member {
    width: 600px;
    margin: 0 auto;
    padding: 50px 0 50px 0;
    letter-spacing: -0.5px;
}

.member h2 {
    color: #222;
    font-size: 28px;
    text-align: center;
    font-family: "notokrB";
}

.member.find-pw-page .box {
    padding-top: 42px;
}

caption, legend {
    width: 0;
    height: 0;
    visibility: hidden;
    font-size: 0;
    line-height: 0;
    text-indent: -9999px;
}

.member .box h3 {
    padding: 0 0 3px;
    color: #222;
    font-size: 20px;
    font-weight: normal;
    text-align: center;
}

.member .box .guide {
    padding: 3px 0 0;
    text-align: center;
}

.member .new-pw {
    padding: 20px 0 0 140px;
}

element.style {
    width: 309px;
}
.member .new-pw .txt-field {
    margin: 11px 0 0;
}
.member.find-pw-page .txt-field {
    height: 36px;
}
.txt-field {
    position: relative;    
    padding: 0 10px;
    background: #fff;
    border: 1px solid #ccc;
    vertical-align: middle;
}

.member.find-pw-page .txt-field .text {
    height: 34px;
    color: #8c8c8c;
    line-height: 34px;
}
.txt-field .text {
    width: 100%;    
    padding: 0;
    border: 1px solid #fff;    
}
input.text, input.password, input.edit {    
    outline: none;
    font-size: 14px;
}

.member.find-pw-page .box .btn {
    border-top: none;
    margin: 20px 0 0;
    padding: 0;
}
.member .box .btn { 
    font-size: 0;
    text-align: center;
}

.member .skinbtn.point1.l-confirm, .member .skinbtn.point2 {
    background: #000;
    border: 1px solid #000;
    color: #fff;
}

.skinbtn.point2.fp-confirm, .skinbtn.point2.fp-login, .skinbtn.base3.fp-next {
    width: 149px;
    height: 50px;
    line-height: 48px;
    font-size: 14px;
    font-weight: bold;
}

.skinbtn * {
    font-size: 100%;
}
button em {
    font-family: "notokrR";
}
</style>
</head>
<body>
	<c:import url="../main/mainHeader.jsp"></c:import>
	<div id="container" class="">


        <!-- 본문 시작 : start -->
        <div id="content">
<div class="member find-pw-page">
    <h2>비밀번호 찾기</h2>

    <div class="box">
        <form name="formReset" id="formReset" action="../member/find_password_reset_ps.php" method="post">
            <fieldset>
                <legend>비밀번호 찾기 폼</legend>
                <h3>비밀번호 변경</h3>

                <p class="guide">새로운 비밀번호를 등록해 주세요.</p>

                <div class="new-pw">
                    <div class="input-pw">
                        <div class="txt-field" style="width:309px;">
                            <input type="password" class="text input-pw" id="passwordMsg" name="memPw" autocomplete="off" placeholder="영문대/소문자, 숫자, 특수문자 중 2가지 이상 조합하세요" data-min-length="10" data-max-length="16">
                        </div>
                    </div>
                    <div class="input-pw">
                        <div class="txt-field" style="width:309px;">
                            <input type="password" class="text check-id" name="memPwRe" autocomplete="off" id="newPwRe" placeholder="새 비밀번호 확인">
                        </div>
                    </div>
                </div>
                <div class="btn">
                    <button class="skinbtn point2 fp-confirm" type="button" id="btnConfirm"><em>확인</em></button>
                </div>
            </fieldset>
        </form>
    </div>
</div>

</div>
        <!-- 본문 끝 : end -->

    </div>
    <c:import url="../main/mainFooter.jsp"></c:import>
    <script type="text/javascript">
    	
    </script>
</body>
</html>