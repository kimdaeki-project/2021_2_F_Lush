<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Spa selectOne Page</h1>
	
	<h3>name : ${spaVO.name}</h3>
	<h3>price : ${spaVO.price}</h3>
	<h3>amount : ${spaVO.amount}</h3>
	<h3>voucherNumber : ${spaVO.voucherNumber}</h3>
	<h3>bookingDate : ${spaVO.bookingDate}</h3>
	
	<a href="./delete?name=${spaVO.name}">DELETE</a>
	<a href="./update?name=${spaVO.name}">UPDATE</a>
</body>
</html>