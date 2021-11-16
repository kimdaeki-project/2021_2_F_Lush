<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Product Update Page</h1>
      
 	<form action="./update" method="post">
 		
 			<input type="hidden" name="num" value="${product.num}">
        
            Category :<input type="text" class="form-control" name="category">
  
            name :<input type="text" class="form-control" name="name">
            
            HashTag :<input type="text" class="form-control" name="hashTag">
            
            Price :<input type="text" class="form-control" name="price">
            
            Weight :<input type="text" class="form-control" name="weight">
            
            photo :<input type="text" class="form-control" name="photo">
            
            Heart :<input type="text" class="form-control" name="heart">
            
    
    
         <div>
            <button type="submit" class="btn btn-primary">Update</button>
         </div>
         </form>

</body>
</html>