<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<form action="./update" method="post">
			<div>
				제목 : <input type="text" name="title" value="${inquiryVO.title}"><br>
				말머리 : <input type="text" name="category" value="${inquiryVO.category}"><br>
				작성자 : <input type="text" name="writer" value="${inquiryVO.category}"><br>
				첨부파일 : <br>
				본문 : <input type="text" name="contents" value="${inquiryVO.contents}"><br>
				자동등록방지 :  <br>
				<button type="button" onClick="location.href='./selectList'">취소</button>
				<button type="submit">작성완료</button>
			</div>
		</form>
	</body>

</html>