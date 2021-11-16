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
   <h1>Hire Update Page</h1>
   
   <form action="./update" method="post">
      num : <input type="text" name="num" readonly="readonly" value="${hireVO.num}"><br>
      title : <input type="text" name="title" value="${hireVO.title}"><br>
      writer : <input type="text" name="writer" value="${hireVO.writer}"><br>
      regDate : <input type="date" name="regDate" value="${hireVO.regDate}"><br>
      contents : <input type="text" name="contents" value="${hireVO.contents}"><br>      
      <button type="submit">UPDATE</button>
      <a href="../../">GO HOME</a>
   </form>
</body>
</html>