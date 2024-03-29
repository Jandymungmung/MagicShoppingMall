<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>insert product</title>
<link rel="stylesheet" href="./css/home.css">
</head>
<body>
	<%@ include file="/WEB-INF/include/header.jsp"%>
	<!-- header include -->
	<div style="width: 65%; margin: 0 auto;">
	<h2>🛠 상품 등록 🛠</h2>
	<br>
	<form action="insertProduct.do" method="post"
		enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td>상품명</td>
				<td><input type="text" name="product_name"></td>
			</tr>
			<tr>
				<td>상품 영어명</td>
				<td><input type="text" name="product_english_name"></td>
			</tr>
			<tr>
				<td>원산지</td>
				<td><input type="text" name="origin"></td>
			</tr>
			<tr>
				<td>가격</td>
				<td><input type="text" name="price"></td>
			</tr>
			<tr>
				<td>재고수</td>
				<td><input type="text" name="stock_count"></td>
			</tr>
			<tr>
				<td>상품 간략 설명</td>
				<td><textarea name="brief_description" cols="25" rows="2" style="resize: none;"></textarea></td>
			</tr>
			<tr>
				<td>썸네일</td>
				<td><input type="file" name="thumbnail"></td>
			</tr>
			<tr>
				<td>디테일 사진</td>
				<td><input type="file" name="detail_cut"></td>
			</tr>
			<tr>
				<td>품절 여부</td>
				<td><input type="checkbox" name="sold_out" value="true"></td>
			</tr>
			<tr>
				<td>카테고리</td>
				<td><select name="categories">
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
				<td><textarea name="detail_description" cols="60" rows="10" style="resize: none;"></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="등록"></td>
			</tr>
		</table>
	</form>
	<br>
	<a href="getProductList.do"><img alt="상품 목록" src="./img/btn/list.jpg"></a>
	</div>
	<br>
	<%@ include file="/WEB-INF/include/footer.jsp"%>
	<!-- footer include -->
</body>
</html>