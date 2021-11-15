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
	<h1>Hire list page</h1>
	<table>
		<tr>
			<td>num</td>
			<td>title</td>
			<td>regDate</td>
			<td>contents</td>
			<td>hits</td>
		</tr>	
		<c:forEach items="${hireList}" var="hireList">
			<tr>
				<td>${hireList.num}</td>
				<td><a href="./selectOne?num=${hireList.num}">${hireList.title}</a></td>
				<td>${hireList.writer}</td>
				<td>${hireList.regDate}</td>
				<td>${hireList.contents}</td>
				<td>${hireList.hits}</td>
			</tr>
		</c:forEach>
		
	</table>
</body>
</html>