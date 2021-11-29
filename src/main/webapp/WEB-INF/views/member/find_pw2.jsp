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
    display: block;    
    margin: 50px auto;
    padding: 0 0 50px;
    vertical-align: top;
    max-width: 1217px;    
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

.member .box h3 {
    padding: 0 0 3px;
    color: #222;
    font-size: 20px;
    font-weight: normal;
    text-align: center;
    font-family: "notokrR",Malgun Gothic,"맑은 고딕",AppleGothic,Dotum,"돋움",sans-serif;
}

.member .box .guide {
    padding: 3px 0 0;
    text-align: center;
    font-size: 14px;
    font-family: "notokrR",Malgun Gothic,"맑은 고딕",AppleGothic,Dotum,"돋움",sans-serif;
}

.member .certify {
    margin: 16px 0 0; 
}

.member .certify .bx_form {
    margin: 10px 0 0;
    padding: 20px;
    border: 1px solid #dbdbdb;
}

.member .certify .form-element label {
    color: #444;
}

.form-element label {
    position: relative;
    top: 0;
    left: 0;
    display: inline-block;
    min-width: 20px;
    min-height: 20px;    
    font-size: 14px;
    font-family: "notokrR",Malgun Gothic,"맑은 고딕",AppleGothic,Dotum,"돋움",sans-serif;
}

.member .certify .form-element strong {
	font-weight: bold;
	font-size: 14px;
    color: #3e3d3c;
    font-family: "notokrR",Malgun Gothic,"맑은 고딕",AppleGothic,Dotum,"돋움",sans-serif;
}

.member .certify .form-element p {
    padding: 10px 0 0 27px;
    font-size: 14px;
    color: #888;
    font-family: "notokrR",Malgun Gothic,"맑은 고딕",AppleGothic,Dotum,"돋움",sans-serif;
}

.member .certify .form-element span {
    color: #888;
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

.skinbtn.base3.uc-next{
	width: 149px;
    height: 50px;
    line-height: 48px;
    font-size: 14px;
    font-weight: bold;
}

.skinbtn.base3 {
    background: #000;
    border: 1px solid #000;
    color: #fff;
}

.skinbtn {
    display: inline-block;    
    padding: 0;
    text-align: center;
    vertical-align: top;
    box-sizing: border-box;
    cursor: pointer;    
    border-radius: 0;
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
				<div style="display: none;" id="ppwCheck">${memberVO.pw}</div>
				<div class="box" id="divAuth">
					<form name="formAuth" id="formAuth" method="post" action="../certify/pwCheck2"
						novalidate="novalidate">
						<input type="hidden" name="act" value="Y"> <input
							type="hidden" name="rncheck" value="none"> <input
							type="hidden" name="dupeinfo" value=""> <input
							type="hidden" name="token"
							value="MTYzNzkxMDE2NjU0MTU4OTI3MDY0MjE1ODc2NjYwOTM1MjA1OTY0Nzcw">
						<fieldset>
							<legend>비밀번호 찾기 폼</legend>
							<h3>인증수단 선택</h3>

							<p class="guide">본인인증 방법을 선택해 주세요.</p>

							<div class="certify">
								<!--   -->
								<div class="bx_form">
									<div class="form-element">
										<input type="radio" name="authType" id="authEmail"
											value="authEmail" class="radio"> <label
											class="choice" for="authEmail">이메일 인증</label> <strong>(
											${memberVO.email} )</strong>

										<p>가입시 등록한 이메일로 인증번호가 발송됩니다.</p>
									</div>
								</div>
								<!--  -->
								<!--   -->
								<div class="bx_form">
									<div class="form-element">
										<input type="radio" name="authType" id="authSms"
											value="authSms" class="radio"> <label class="choice"
											for="authSms">SMS 인증</label> <span>( ${memberVO.phone} )</span>
									</div>
								</div>
								<!--  -->
								<!--   -->
								<div class="bx_form">
									<div class="form-element">
										<input type="radio" name="authType" id="authIpin"
											value="authIpin" class="radio"> <label class="choice"
											for="authIpin">아이핀 본인인증</label>
										<iframe id="ifrmRnCheck" name="ifrmRnCheck"
											style="width: 500px; height: 500px; display: none;"></iframe>
									</div>
								</div>
								<!--  -->
								<!--   -->
								<div class="bx_form">
									<div class="form-element">
										<input type="radio" name="authType" id="authCellphone"
											value="authCellphone" class="radio"> <label
											class="choice" for="authCellphone">휴대폰 본인인증</label>
									</div>
								</div>
								<iframe id="ifrmHpauth" name="ifrmHpauth"
									style="width: 500px; height: 500px; display: none;"></iframe>
								<!--  -->
								<p class="dn" id="errorMessage"></p>
							</div>
							<div class="btn">
								<button class="skinbtn base3 uc-next" type="button">
									<em>다음</em>
								</button>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
			<hr>			
		</div>
		<!-- 본문 끝 : end -->

	</div>
	<c:import url="../main/mainFooter.jsp"></c:import>
	
	<script type="text/javascript">	
		/* console.log($('input[name=authType]:checked').val()); */
		
		$(".radio").click(function(){
			const a = $(this).val();
			$(".skinbtn").click(function(){
				const pw = $('#ppwCheck').text();
				console.log(pw);
				if(a == "authCellphone"){
					window.open('../certify/pwCheck', 'check', 'status=no, height=400, width=600, left=600, top=400');					
					 
				}	
			})								
		});
	
		/* $("input[name='authType']:checked").each(function(){
			console.log($(this).val());
		}); */
	</script>
</body>
</html>