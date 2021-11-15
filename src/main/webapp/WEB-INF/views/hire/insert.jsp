<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hire Insert Page</h1>
	<form action="./insert" method="post">
		<div>
			<label>num : </label> <input type="text" name="num" />
		</div>
		<div>
			<label>title : </label> <input type="text" name="title" />
		</div>
		<div>
			<label>writer : </label> <input type="text" name="writer" />
		</div>
		<div>
			<label>regDate : </label> <input type="date" name="regDate" />
		</div>
		<div>
			<label>contents : </label> <input type="text" name="contents" />
		</div>		
		<div>
			<button type="submit">ADD</button>
		</div>
	</form>
</body>
</html>