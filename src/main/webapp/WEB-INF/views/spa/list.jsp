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
   <h1>Spa list page</h1>
   <table>
      <tr>
         <td>Name</td>
         <td>price</td>
         <td>amount</td>
         <td>voucherNumber</td>
         <td>bookingDate</td>
      </tr>   
      <c:forEach items="${spaList}" var="spaList">
         <tr>
            <td><a href="./selectOne?name=${spaList.name}">${spaList.name}</a></td>
            <td>${spaList.price}</td>
            <td>${spaList.amount}</td>
            <td>${spaList.voucherNumber}</td>
            <td>${spaList.bookingDate}</td>
         </tr>
      </c:forEach>
      
   </table>
</body>
</html>