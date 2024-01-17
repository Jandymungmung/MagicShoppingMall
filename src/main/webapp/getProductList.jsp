<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>get board list</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="./css/board.css">
</head>
<body>
	<%@ include file="/WEB-INF/include/header.jsp" %>
	<!-- header include -->
	<br>
	<br>
	
	<div id="back">
		<form action="getProductList.do" method="post">
			<table border="1">
				<tr>
					<td><select name="searchCondition">
							<option value="product_name">상품명</option>
					</select> <input name="searchKeyword" type="text" /> <input type="submit"
						value="검색" /></td>
				</tr>
			</table>
		</form>
		<!--  검색 종료 -->

		<table class="table table-striped" id="table">
			<tr>
				<th>번호</th>
				<th>상품명</th>
				<th>판매가</th>
				<th>등록일</th>
				<th>상품 이미지</th>
			</tr>

			<c:forEach items="${productList}" var="product">
				<tr>
					<td>${product.product_number}</td>
					<td><a href="getProduct.do?product_number=${product.product_number}">${product.product_name}</a></td>
					<td>${product.price}원</td>
					<td>${product.registration_date}</td>
					<td><img src="./img/thumbnail/${product.thumbnail_file_name}" style="width: 90px; height: 90px"></td>
				</tr>
			</c:forEach>
		</table>
		
	<a href="insertProduct.jsp">상품 등록</a>
	
	</div>
	
	<%@ include file="/WEB-INF/include/footer.jsp" %>
	<!-- footer include -->
</body>
</html>