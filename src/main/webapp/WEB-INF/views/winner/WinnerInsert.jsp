<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"	rel="stylesheet">
<script	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<script	src=" https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/lang/summernote-ko-KR.min.js"></script>

</head>
<body>
	<h1>Winner Insert Page</h1>

	<form action="./Winnerinsert" method="post"
		enctype="multipart/form-data">
		
		<div class="container">
				<input	type="text" class="form-control" name="title" id="title"
					placeholder="Enter Title">
			</div>
			<div class="container">
				
				<textarea class="summernote" name="contents"
					id="contents" ></textarea>
			</div>
	

		<button type="submit">Insert</button>
	</form>
	<script type="text/javascript">
	$('.summernote').summernote({
		height: 150
	});
	</script>
</body>
</html>