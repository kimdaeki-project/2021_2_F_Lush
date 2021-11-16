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
	<h1>Winner Insert Page</h1>

	<form action="./Winnerinsert" method="post" enctype="multipart/form-data">
		title : <input type="text" name="title"> <br>
		contents : <input type="text" name="contents"> <br>
		
		<button type="submit">Insert</button>
	</form>
</body>
</html>