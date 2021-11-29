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

body {
	margin: 0px;
}

.top {
	outline: none;
	font-family: "notokrR", Malgun Gothic, '맑은 고딕', Helvetica, AppleGothic,
		dotum, '돋움', sans-serif;
	color: black;
	font-size: 20px;
	text-align: center;
	background-color: #dcdcdc;
	height: 30px;
}

.check {
	height: 30px;
}

/* .check1 {
	background:
		url("https://cdn.icon-icons.com/icons2/2182/PNG/512/mail_message_email_letter_icon_133481.png");
	width: 50px;
	height: 30px;
	float:
	text-align:center;
} */
.check2 {
	outline: none;
	font-family: "notokrR", Malgun Gothic, '맑은 고딕', Helvetica, AppleGothic,
		dotum, '돋움', sans-serif;
	color: black;
	font-size: 20px;
	margin: 0 auto;
	width: 200px;
}

.form {
	width: 390px;
	height: 150px;
	margin: 0 auto;
	text-align: center;
}

.phone {
	margin: 0 auto;
	margin-top: 15px;
	margin-bottom: 15px;
}

.btn {
	margin-top: 10px;
	width: 285px;
}
</style>
</head>
<body>
	<div class="top"></div>
	<div class="check">
		<!-- <div class="check1"></div> -->
		<div class="check2">휴대폰본인확인(문자)</div>
	</div>	
	<div class="form">
		<form action="./pwCheck2" method="post">		
		<input type="text" name="pw" style="display: none;" id="cpwCheck" value="">		
			<div class="phone">
				전화번호 입력 : <input type="text" name="phonNumber">
			</div>
			<button type="submit" class="btn">문자전송</button>
			<button type="button" class="btn" id="close">취소</button>
		</form>
	</div>
	<script type="text/javascript">
		/* $(document).ready(function() {
			window.resizeTo(400, 500);
		}); */
		
		var id = opener.$("#ppwCheck").text(); 
		$("#cpwCheck").val(id);
		console.log($("#cpwCheck").val());
		
		$("#close").click(function() {
			self.opener = self;
			window.close();
		});
	</script>
</body>
</html>