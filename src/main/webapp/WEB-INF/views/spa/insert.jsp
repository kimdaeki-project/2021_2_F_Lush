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
	<h1>Spa Insert Page</h1>
	<form action="./insert" method="post">
		<div>
			<label>Name : </label> <input type="text" name="name" />
		</div>
		<div>
			<label>Price : </label> <input type="text" name="price" />
		</div>
		<div>
			<label>Amount : </label> <input type="text" name="amount" />
		</div>
		<div>
			<label>VoucherNumber : </label> <input type="text" name="voucherNumber" />
		</div>
		<div>
			<label>BookingDate : </label> <input type="date" name="bookingDate" />
		</div>
		<div>
			<button type="submit">ADD</button>
		</div>
	</form>
</body>
</html>