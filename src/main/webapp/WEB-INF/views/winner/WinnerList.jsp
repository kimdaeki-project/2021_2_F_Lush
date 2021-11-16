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
   <table>
      <tr>
         <td>Num</td>
         <td>Title</td>
         <td>Contents</td>
         <td>hits</td>
         <td>state</td>
         <td>regDate</td>
      </tr>

      <c:forEach items="${winnerList}" var="eventVO">
         <tr>
            <td>${eventVO.num}</td>
            <td><a href="./selectOne?num=${eventVO.num}">${eventVO.title}</a></td>
            <td>${eventVO.contents}</td>
            <td>${eventVO.hits}</td>
            <td>${eventVO.state}</td>
            <td>${eventVO.regDate}</td>
         </tr>
      </c:forEach>
   </table>

   <a href="./Winnerinsert">Insert</a>
</body>
</html>