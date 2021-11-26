<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	display: block;
	vertical-align: top;
	table-layout: fixed;
	position: relative;
	margin: 0 auto;
	width: 100%;
	height: 100%;
	min-height: 100%;
	padding-top: 100px;
	max-width: 1217px;
}

#container #content {
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

.member .box .login {
	width: 335px;
	margin: 55px auto 0;
	overflow: hidden;
}

.member .box .login .input-info div {
	position: relative;
	margin: 10px 0 0;
}

.member .box .login .input-info div .inp_login {
	position: relative;
	padding-left: 44px;
	border: 1px solid #8f8f8f;
}

.member .box .login .input-info div .icon {
	position: absolute;
	top: 13px;
	left: 12px;
}

.icon {
	display: inline-block;
	vertical-align: middle;
}

img {
	border: none;
	vertical-align: top;
}

input.text, input.password, input.edit {
	padding: 0 5px;
	outline: none;
	font-size: 14px;
}

.member .box .login .input-info div .text {
	width: 245px;
	height: 48px;
	line-height: 48px;
	padding: 0 0;
	text-align: center;
	border: 0;
	color: #8c8c8c;
	font-size: 16px;
}

.member .box .login .input-info div label {
	position: absolute;
	top: 9px;
	left: 13px;
	color: #8c8c8c;
	font-size: 13px;
	cursor: text;
}

label {
	vertical-align: top;
}

.member .skinbtn.point2.l-login {
	width: 100%;
	height: 55px;
	line-height: 55px;
}

.member .box .login button {
	margin: 20px 0 0;
}

.member .skinbtn.point2 {
	background: #000;
	border: 1px solid #000;
	color: #fff;
}

.skinbtn.point1.l-confirm, .skinbtn.point2.l-login, .skinbtn.point2.fi-id
	{
	font-size: 16px;
	font-weight: bold;
}

.member .caution-msg1 {
	text-align: center;
	background: none;
}

.caution-msg1 {
	min-height: 17px;
	margin: 15px 0 0;
	padding: 0 0 0 19px;
	color: #3e3d3c;
	line-height: 20px;
}

.dn {
	display: none !important;
}

.member .box .btn {
	margin: 20px 0 0;
	font-size: 0;
	text-align: center;
}

.login_menu .skinbtn {
	width: auto;
	height: auto;
	color: #8f8f8f;
	font-size: 13px;
	font-family: 'notokrR';
}

.skinbtn {
	display: inline-block;
	padding: 0;
	text-align: center;
	vertical-align: top;
	box-sizing: border-box;
	cursor: pointer;
	border: 0px solid #000000;
	border-radius: 0;
}

.skinbtn * {
	font-size: 100%;
}

button {
	background: none;
	outline: none;
}

button em {
	font-family: "notokrR";
}

.login_menu .skinbtn+.skinbtn {
	position: relative;
	margin-left: 8px;
	padding-left: 8px;
	margin: 0 0 0 10px;
}
</style>
</head>
<body>
	<c:import url="../main/mainHeader.jsp"></c:import>

	<div id="container" class="">


		<!-- 본문 시작 : start -->
		<div id="content">

			<div class="member">
				<h2>아이디찾기</h2>

				<form id="formFindId" method="post" action="./find_id2"
					novalidate="novalidate">
					<div class="box">
						<div id="divFindId">
							<!-- <h3>회원 아이디찾기</h3> -->

							<div class="login">
								<div class="input-info">
									<div>
										<div class="inp_login">
											<span class="icon"><img
												src="https://www.lush.co.kr/data/skin/front/howling/img/etc/icon_id.png"
												alt=""></span> <input type="text" class="text" id="userName"
												name="name" placeholder="이름"> <label
												for="name"></label>
										</div>
									</div>
									<div>
										<div class="inp_login">
											<input type="email" class="text" id="userEmail"
												name="email" placeholder="가입메일주소"> <label
												for="email"></label>
										</div>
									</div>
								</div>
								<button type="submit" class="skinbtn point2 l-login fi-id">
									<em>아이디 찾기</em>
								</button>
							</div>
							<p class="dn caution-msg1">일치하는 회원정보가 없습니다. 다시 입력해 주세요.</p>
						</div>
						<div class="btn login_menu">
							<button class="skinbtn fi-pw find-id btn-find-password">
								<em>비밀번호 찾기</em>
							</button>
							<button class="skinbtn fi-login find-id btn-login">
								<em>로그인하기</em>
							</button>
						</div>
					</div>
				</form>
			</div>


		
		</div>
		<!-- 본문 끝 : end -->

	</div>

</body>
</html>