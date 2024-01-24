<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/home.css">
</head>
<body>
	<%@ include file="/WEB-INF/include/header.jsp" %>
	<!-- header include -->

	<form action="updateProduct.do" method="post"
		enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td>상품명</td>
				<td><input type="text" name="product_name" value="${product.product_name}"></td>
			</tr>
			<tr>
				<td>상품 영어명</td>
				<td><input type="text" name="product_english_name" value="${product.product_english_name}"></td>
			</tr>
			<tr>
				<td>원산지</td>
				<td><input type="text" name="origin" value="${product.origin}"></td>
			</tr>
			<tr>
				<td>가격</td>
				<td><input type="text" name="price" value="${price}"></td>
			</tr>
			<tr>
				<td>재고수</td>
				<td><input type="text" name="stock_count" value="${stock_count}"></td>
			</tr>
			<tr>
				<td>상품 간략 설명</td>
				<td><textarea name="brief_description" cols="25" rows="2" style="resize: none;">${brief_description}</textarea></td>
			</tr>
			<tr>
				<td>썸네일</td>
				<td><input type="file" name="thumbnail" value="${thumbnail}"></td>
			</tr>
			<tr>
				<td>디테일 사진</td>
				<td><input type="file" name="detail_cut" value="${detail_cut}"></td>
			</tr>
			<tr>
				<td>품절 여부</td>
				<td><input type="checkbox" name="sold_out" ${sold_out ? 'checked' : ''}></td>
			</tr>
			<tr>
				<td>카테고리</td>
				<td><select name="categories" value="${categories}">
						<option value="카드마술">카드마술</option>
						<option value="동전마술">동전마술</option>
						<option value="플레잉카드">플레잉카드</option>
						<option value="클로즈업">클로즈업</option>
						<option value="스테이지">스테이지</option>
						<option value="파이어">파이어</option>
						<option value="DVD">DVD</option>
						<option value="악세서리">악세서리</option>
				</select></td>
			</tr>
			<tr>
				<td>상세 설명</td>
				<td><textarea name="detail_description" cols="50" rows="10" style="resize: none;">${detail_description}</textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="등록"></td>
			</tr>
		</table>
	</form>
	<a href="getProductList.do">상품 목록 가기</a>

	<%@ include file="/WEB-INF/include/footer.jsp" %>
	<!-- footer include -->
</body>
</html>