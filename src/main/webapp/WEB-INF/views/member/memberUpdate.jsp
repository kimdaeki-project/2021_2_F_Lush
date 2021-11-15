<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>          
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>MemberUpdate Page</h1>
	
	<form action="./memberUpdate" method="post">
		id : <input type="text" name="id" value="${memberVO.id}"><br>
		pw : <input type="text" name="pw" value="${memberVO.pw}"><br>
		name : <input type="text" name="name" value="${memberVO.name}"><br>
		nickName : <input type="text" name="nickName" value="${memberVO.nickName}"><br>
		email : <input type="text" name="email" value="${memberVO.email}"><br>
		phone : <input type="text" name="phone" value="${memberVO.phone}"><br>
		address : <input type="text" name="address" value="${memberVO.address}"><br>
		role : <input type="text" name="role" value="${memberVO.role}"><br>
		
		<button type="submit">UPDATE</button>
	</form>
</body>
</html>