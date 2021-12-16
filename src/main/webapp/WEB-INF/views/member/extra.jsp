<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RESULT</title>
<script type="text/javascript">
	a();
	function a() {
		alert('${message}')
		if ('${message}' == "본인 인증에 성공하였습니다") {
			location.href = '${url}';
		} else {
			location.href = '${url}';
		}
	}
</script>
</head>
</html>