<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		<title>러쉬코리아 FAQ</title>
	</head>
	
	<body>
	
		<table>
		<tr>
			<td>Num</td><td>Title</td><td>Category</td><td>Contents</td>
		</tr>
		
		<c:forEach items="${qnaList}" var="qnaVO">
			<tr>
				<td>${qnaVO.num}</td>
				<td><a href="./selectOne?num=${qnaVO.num}">${qnaVO.title}</a></td>
				<td>${qnaVO.category}</td>
				<td>${qnaVO.contents}</td>
			</tr>
		</c:forEach>
		
		</table>
		
		<a href="./insert">(admin전용) 작성</a>
	
		
	
	</body>

</html>