<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

.check {
	outline: none;
	font-family: "notokrR", Malgun Gothic, '맑은 고딕', Helvetica, AppleGothic,
		dotum, '돋움', sans-serif;
	color: black;
	font-size: 20px;
	text-align: center;
}

.form {
	width: 390px;
	height: 150px;
	background-color: #dcdcdc;
	text-align: center;
}

.phone{
	margin: 25px 0 0;
}
</style>
</head>
<body>
	<div class="check">휴대폰 본인 인증</div>

	<div class="form">
		<form action="/message" method="post">
			<div class="phone">
				전화번호 입력 : <input type="text" name="phonNumber">
				<button type="submit">submit</button>
			</div>
		</form>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			window.resizeTo(400, 500);
		});
	</script>
</body>
</html>