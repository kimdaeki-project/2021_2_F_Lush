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
   <h1>MemberJoin Page</h1>
   <form action="./memberJoin" method="post">
      <div>
         <label>id : </label> <input type="text" name="id" />
      </div>
      <div>
         <label>pw : </label> <input type="text" name="pw" />
      </div>
      <div>
         <label>name : </label> <input type="text" name="name" />
      </div>
      <div>
         <label>nickName : </label> <input type="text" name="nickName" />
      </div>
      <div>
         <label>email : </label> <input type="text" name="email" />
      </div>
      <div>
         <label>phone : </label> <input type="text" name="phone" />
      </div>
      <div>
         <label>address : </label> <input type="text" name="address" />
      </div>
      <div>
         <label>role : </label> <input type="text" name="role" />
      </div>
      <div>
         <button type="submit">ADD</button>
      </div>
   </form>
</body>
</html>