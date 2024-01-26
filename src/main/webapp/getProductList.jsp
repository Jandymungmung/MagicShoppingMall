<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

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
	<h3>🛠 상품 관리 페이지 🛠</h3>
	<div id="back" style="width:80% ; margin: 0 auto;">
		<br>
		<br>
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
		<br>
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
					<td><a class="back" href="getProduct.do?product_number=${product.product_number}">${product.product_name}</a></td>
					<td><fmt:formatNumber value="${product.price}" pattern="##,###,###원" /></td>
					<td>${product.registration_date}</td>
					<td><img src="./img/thumbnail/${product.thumbnail_file_name}" style="width: 80px; height: 80px"></td>
				</tr>
			</c:forEach>
		</table>
		<a class="btn btn-light btn-sm" href="getProductList.do?pageNum=${(pageNum.pageNum > 1) ? pageNum.pageNum-1 : 1}"><span class="bi bi-caret-left-fill"></span></a>
		<c:forEach var="num" begin="1" end="${pageNum.totalPage}">
			<a class="btn btn-light btn-sm" href="getProductList.do?pageNum=${num}">${num}</a>
		</c:forEach>
		<a class="btn btn-light btn-sm" href="getProductList.do?pageNum=${(pageNum.pageNum < pageNum.totalPage) ? pageNum.pageNum + 1 : pageNum.totalPage}"><span class="bi bi-caret-right-fill"></span></a><br><br>
		<a id="writeBtn" class="btn btn-default" href="insertProduct.jsp" style="color: black; background-color: white;">상품 등록</a>
	</div>
		<br>
	
	<%@ include file="/WEB-INF/include/footer.jsp" %>
	<!-- footer include -->
</body>
</html>