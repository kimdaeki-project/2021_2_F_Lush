<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
	<form action="./update" method="post">
	<input type="hidden" name="num" value="${eventVO.num}">
		title : <input type="text" name="title" value="${eventVO.title}"><br>
		contents : <textarea rows="" cols="" name="contents">${eventVO.contents}</textarea> <br>
		
		<button type="submit">Update</button>
	</form>
</body>
</html>