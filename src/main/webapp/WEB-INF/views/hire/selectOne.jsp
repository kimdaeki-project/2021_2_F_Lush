<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hire selectOne Page</h1>
	
	<h3>num : ${hireVO.num}</h3>
	<h3>tilte : ${hireVO.title}</h3>
	<h3>writer : ${hireVO.writer}</h3>
	<h3>regDate : ${hireVO.regDate}</h3>	
	<h3>contents : ${hireVO.contents}</h3>
	
	
	<a href="./delete?num=${hireVO.num}">DELETE</a>
</body>
</html>