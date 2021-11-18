<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<h1>Product List Page</h1>
	<form action="./productList" id="frm">

		<input type="hidden" name="pn" value="1" id="pn"> 
			<select
				name="kind" id="kind">
				<option class="s" value="name">name</option>
				<option class="s" value="category">category</option>
				<option class="s" value="hashTag">hashTag</option>
			</select> 
		<input type="text" name="search" id="search">

		<button type="submit" id="btn">SEARCH</button>

		<table>
			<tr>
				<td>Num</td>
				<td>category</td>
				<td>name</td>
				<td>hashTag</td>
				<td>price</td>
				<td>weight</td>
				<td>photo</td>
				<td>heart</td>
			</tr>

			<c:forEach items="${productList}" var="product">
				<tr>
					<td>${product.num}</td>
					<td>${product.category}</td>
					<td><a href="./select?num=${product.num}">${product.name}</a></td>
					<td>${product.hashTag}</td>
					<td>${product.price}</td>
					<td>${product.weight}</td>
					<td>${product.photo}</td>
					<td>${product.heart}</td>

				</tr>

			</c:forEach>

		</table>

		<!-------------------------- pager ------------------------------>


		<button class="p" data-list-pn="${pager.startNum-1}" type="button">PRE</button>

		<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
			<span class="p" data-list-pn="${i}">${i}</span>
		</c:forEach>


		<c:if test="${!pager.lastCheck}">
			<button class="p" data-list-pn="${pager.lastNum+1}" type="button">NEXT</button>
		</c:if>
		<br>
		<!-------------------------- pager ------------------------------>


		<a href="./insert">insert</a>
	</form>
	<script type="text/javascript">
		let kind = '${pager.kind}';
		let search = '${pager.search}';
		let pn = ${pager.pn};
		
		$('.s').each(function () {
			if($(this).val() == kind){
				$(this).prop("selected", true);
			}
		});
		
		$('#search').val(search);
		
		$('.p').click(function () {
			const n = $(this).attr("data-list-pn")
			$('#pn').val(n);
			$('#search').val(search);
			$('#kind').val(kind);
			$('#frm').submit();
		});
		/* $('#kind').val(kind); */
		console.log(kind, search, pn);
	</script>
</body>
</html>