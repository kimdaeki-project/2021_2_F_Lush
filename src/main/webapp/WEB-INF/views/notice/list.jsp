<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Notice List Page</h1>
	
	<form action="./list" id="frm">
	<table>
		<tr>
			<td>Num</td><td>title</td><td>writer</td><td>regDate</td><td>contents</td><td>hits</td>
		</tr>
		
		<c:forEach items="${noticeVO}" var="noticeVO">
			<tr>
				<td>${noticeVO.num}</td>
				<td><a href="./select?num=${noticeVO.num}">${noticeVO.title}</a></td>
				<td>${noticeVO.writer}</td>
				<td>${noticeVO.regDate}</td>
				<td>${noticeVO.contents}</td>
				<td>${noticeVO.hits}</td>
				
				
			</tr>
		
		</c:forEach>
		
		<div>
			<a href="./insert" class="btn btn-danger">Insert</a>
		</div>
		
	</table>
	</form>

</body>
</html>