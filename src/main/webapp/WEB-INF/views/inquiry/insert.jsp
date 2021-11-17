<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		<title>러쉬코리아 1:1 문의</title>
	</head>
	
	<body>
		
		<form action="./insert" method="post" enctype="multipart/form-data">
			<div>
				제목 : <input type="text" name="title"><br>
				말머리 : <input type="text" name="category"><br>
				작성자 : <input type="text" name="writer"><br>
				첨부파일 : <br>
				본문 : <input type="text" name="contents"><br>
				문의상태 : <input type="number" name="status"><br>
				자동등록방지 :  <br>
				<button type="button" onClick="location.href='./selectList'">취소</button>
				<button type="submit">작성완료</button>
			</div>
		</form>
		
	</body>
	
</html>