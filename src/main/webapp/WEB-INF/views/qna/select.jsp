<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<h3>Title : ${qnaVO.title}</h3>
		<h3>Category : ${qnaVO.category}</h3>
		<h3>Contents : ${qnaVO.contents}</h3>
		
		<a href="./update?num=${qnaVO.num}">수정하기</a>
		<a href="./delete?num=${qnaVO.num}">삭제하기</a>
	</body>

</html>