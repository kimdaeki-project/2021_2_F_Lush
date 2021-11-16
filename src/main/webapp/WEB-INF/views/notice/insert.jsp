<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <h1>Notice Insert Page</h1>
      
 	<form action="./insert" method="post">
         <div class="">
            <label for="title" class="form-label">Title :</label>
          <input type="text" class="form-control" name="title" id="title">
            
         </div>
         <div class="">
            <label for="Writer" class="form-label">Writer :</label>
            <input type="text" class="form-control" name="Writer" id="Writer">
            
         </div>
         <div class="">
            <label for="contents">Contents :</label>            
           <input type="text" class="form-control" name="contents" id="contents">
         </div>
           

         <div>
            <button type="submit" class="btn btn-primary">Write</button>
         </div>
	</form>
</body>
</html>