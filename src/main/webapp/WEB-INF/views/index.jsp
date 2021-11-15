<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Home</h1>
	
	<c:choose>
		<c:when test="${sessionScope.member != null}">
		
			<h3>${member.name}님</h3>			
			<a href="./member/myPage">MyPage</a>
			<a href="./member/memberLogout">LOGOUT</a>
		</c:when>
		<c:otherwise>
		
			<a href="./member/memberLogin">LOGIN</a>
			<br>
			<a href="./member/memberJoin">JOIN</a>
			<br>
			
		</c:otherwise>
	</c:choose>
</body>
</html>