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
   <h3>Num : ${eventVO.num}</h3>
   <h3>Title : ${eventVO.title}</h3>
   <c:if test="${not empty eventVO.term}">
      <h3>Term : ${eventVO.term}</h3>
   </c:if>
   <h3>Contents : ${eventVO.contents}</h3>
   <h3>Hits : ${eventVO.hits}</h3>
   <h3>State : ${eventVO.state}</h3>
   <h3>regDate : ${eventVO.regDate}</h3>
   
   <a href="./delete?num=${eventVO.num}">Delete</a>
   <a href="./update?num=${eventVO.num}">Update</a>
</body>
</html>