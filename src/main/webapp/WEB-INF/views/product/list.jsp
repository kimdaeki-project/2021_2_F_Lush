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
	<h1>Product List Page</h1>
	<form action="./productList" id="frm">
	<table>
		<tr>
			<td>Num</td><td>category</td><td>name</td><td>hashTag</td><td>price</td><td>weight</td><td>photo</td><td>heart</td>
		</tr>
		
		<c:forEach items="${productList}" var="product">
			<tr>
				<td>${product.num}</td>
				<td>${product.category}</td>
				<td><a href="./select?num=${product.num}">${product.name}</a></td>
				<td>${product.hashTag}</td>
				<td>${product.price}</td>
				<td>${product.weight}</td>
				<td>${product.photo}</td>
				<td>${product.heart}</td>
				
			</tr>
		
		</c:forEach>
		
	</table>
	
	<a href="./insert">insert</a>
	</form>

</body>
</html>