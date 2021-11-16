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
   <h1>Spa Update Page</h1>
   
   <form action="./update" method="post">      
      name : <input type="text" name="name" value="${spaVO.name}"><br>
      price : <input type="text" name="price" value="${spaVO.price}"><br>
      amount : <input type="text" name="amount" value="${spaVO.amount}"><br>
      voucherNumber : <input type="text" name="voucherNumber" value="${spaVO.voucherNumber}"><br>
      bookingDate : <input type="text" name="bookingDate" value="${spaVO.bookingDate}"><br>
      
      
      <button type="submit">UPDATE</button>
      <a href="../../">GO HOME</a>
   </form>
</body>
</html>