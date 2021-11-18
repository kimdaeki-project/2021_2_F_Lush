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

	
	<h1>ShopInfo List Page</h1>
	
	<form action="./list" id="frm">
	<table>
		<tr>
			<td>Name</td>
		</tr>
		
		<c:forEach items="${shopInfo}" var="shopInfo">
			<tr>
				<td><a href="./select?num=${shopInfo.num}">${shopInfo.name}</a></td>
								
			</tr>
		
		</c:forEach>
		
		<div>
			<a href="./insert" class="btn btn-danger">Insert</a>
		</div>
		
	</table>
	</form>
	
</body>
</html>