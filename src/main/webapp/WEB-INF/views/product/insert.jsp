<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Product Insert Page</h1>
	<form action="./insert" method="post">
         <div class="">
            <label for="category" class="form-label">Category :</label>
          <input type="text" class="form-control" name="category" id="category">
            
         </div>
         <div class="">
            <label for="name" class="form-label">Name :</label>
            <input type="text" class="form-control" name="name" id="name">
            
         </div>
         <div class="">
            <label for="hashTag">HashTag :</label>            
           <input type="text" class="form-control" name="hashTag" id="hashTag">
         </div>
         <div class="">
            <label for="amount">Amount :</label>            
           <input type="text" class="form-control" name="amount" id="amount">
         </div>
         <div class="">
            <label for="price">Price :</label>            
           <input type="text" class="form-control" name="price" id="price">
         </div>
         <div class="">
            <label for="weight">Weight :</label>            
           <input type="text" class="form-control" name="weight" id="weight">
         </div>
         <div class="">
            <label for="photo">Photo :</label>            
           <input type="text" class="form-control" name="photo" id="photo">
         </div>
         <div class="">
            <label for="heart">Heart :</label>            
           <input type="text" class="form-control" name="heart" id="heart">
         </div>
           

         <div>
            <button type="submit" class="btn btn-primary">Insert</button>
         </div>
	</form>

</body>
</html>