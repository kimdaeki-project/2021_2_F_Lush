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

		
      <h1>Campaign Insert Page</h1>
      
 	<form action="./insert" method="post">
         <div class="">
            <label for="name" class="form-label">이름 :</label>
          <input type="text" class="form-control" name="name" id="name">
            
         </div>
         <div class="">
            <label for="address" class="form-label">주소 :</label>
            <input type="text" class="form-control" name="address" id="address">
            
         </div>
         <div class="">
            <label for="email">이메일 :</label>            
           <input type="text" class="form-control" name="email" id="email">
         </div>
         
         <div class="">
            <label for="comment">응원 한마디 :</label>            
            <textarea name="comment" id="comment" rows="5" cols="10"></textarea>
         </div>
      

         <div>
            <button type="submit" class="btn btn-primary">Write</button>
         </div>
	</form>


</body>
</html>