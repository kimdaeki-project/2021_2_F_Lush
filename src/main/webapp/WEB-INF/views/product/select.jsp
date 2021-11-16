<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Product Select Page</h1>
	
	<h3>Group : ${product.category}</h3>
	<h3>Name : ${product.name}</h3>
	<h3>Price : ${product.price}</h3>
	<h3>weight : ${product.weight}</h3>
	
	<a href="./delete?num=${product.num}">delete</a>
	<a href="./update?num=${product.num}">update</a>
	


</body>
</html>