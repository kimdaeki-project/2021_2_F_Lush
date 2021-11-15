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
	<h1>MemberLogin Page</h1>
	
	<form action="./memberLogin" method="post">
		
		id : <input type="text" name="id"><br>
		pw : <input type="text" name="pw"><br>
					
		<button type="submit">INSERT</button>
		
	</form>
</body>
</html>