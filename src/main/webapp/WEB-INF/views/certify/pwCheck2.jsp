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

.numStr {
	display: none;
}

.check2 {
	outline: none;
	font-family: "notokrR", Malgun Gothic, '맑은 고딕', Helvetica, AppleGothic,
		dotum, '돋움', sans-serif;
	color: black;
	font-size: 20px;
	margin: 0 auto;
	width: 200px;
}

.number {
	margin: 0 auto;
	margin-top: 15px;
	margin-bottom: 15px;
}

.btn {
	margin: 0 auto;
	width: 285px;
}

.form {
	width: 390px;
	height: 150px;
	margin: 0 auto;
	text-align: center;
}
</style>
</head>
<body>

	<div class="top"></div>
	<div class="numStr">${numStr}</div>	
	<div class="a" style="display: none;">${pwCheck}</div>
	<div class="check2">휴대폰본인확인(문자)</div>
	<div class="form">
		인증번호 입력 : <input type="text" name="number" class="number">
		<button type="button" class="btn">확인</button>
	</div>
	

	<script type="text/javascript">		
		$(".btn").click(function() {
			var a = $(".numStr").text();
			var b = $(".number").val();
			const name = $('.a').text();
			console.log(a);
			console.log(b);
			console.log(name);
			if (a != b) {
				alert("인증번호가 일치하지 않습니다.\n재인증 부탁드립니다.")
				window.location.href = './pwCheck'; 				
			} else {
				alert("인증이 완료되었습니다.");
				opener.parent.location = '../member/pwReset?name='+name;
				window.close();
				/* $.ajax({
					type : "GET",
					url : "../member/pwReset",
					data : {
						name : name
					},
					success : function(result){
						opener.parent.location='../member/pwReset';
						window.close();			
					}
				});  */											
				
			}
		});
	</script>
</body>
</html>