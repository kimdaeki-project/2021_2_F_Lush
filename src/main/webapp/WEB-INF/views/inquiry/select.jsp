<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<h3>문의날짜 : ${inquiryVO.regDate}</h3>
		<h3>카테고리 : ${inquiryVO.category}</h3>
		<h3>제목 : ${inquiryVO.category}</h3>
		<h3>문의상태 : ${inquiryVO.status}</h3>
		
		<a href="./update?num=${inquiryVO.num}">수정하기</a>
		<a href="./delete?num=${inquiryVO.num}">삭제하기</a>
	</body>

</html>