<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Notice Select Page</h1>
	
	<h3>title : ${noticeVO.title}</h3>
	<h3>contents : ${noticeVO.contents}</h3>
	<h3>writer : ${noticeVO.writer}</h3>
	<h3>regDate : ${noticeVO.regDate}</h3>
	
	
	<a href="./delete?num=${noticeVO.num}">Delete</a>
	<a href="./update?num=${noticeVO.num}">Update</a>

</body>
</html>