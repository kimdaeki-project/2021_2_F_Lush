<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		<title>러쉬코리아(LUSH KOREA)</title>
	</head>
	
	<body>
		<table>
		<tr>
			<td>문의날짜</td><td>카테고리</td><td>제목</td><td>문의상태</td>
		</tr>
		
		<c:forEach items="${inquiryList}" var="inquiryVO">
			<tr>
				<td>${inquiryVO.regDate}</td>
				<td>${inquiryVO.category}</td>
				<td><a href="./selectOne?num=${inquiryVO.num}">${inquiryVO.title}</a></td>
				<td>${inquiryVO.status}</td>
			</tr>
		</c:forEach>
		
	</table>
	
	<a href="./insert">1:1 문의하기</a>
	
	</body>

</html>