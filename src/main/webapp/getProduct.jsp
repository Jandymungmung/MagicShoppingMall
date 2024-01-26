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
	<%@ include file="/WEB-INF/include/header.jsp"%>
	<!-- header include -->
	<div style="width: 80%; margin: 0 auto;">
	<h2>🛠 상품 수정 🛠</h2>
    <br>
	<form action="updateProduct.do" method="post"
		enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td><input type="hidden" name="product_number" value="${product.product_number}"></td>
			</tr>
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
				<td><input type="text" name="price" value="${product.price}"></td>
			</tr>
			<tr>
				<td>재고수</td>
				<td><input type="text" name="stock_count" value="${product.stock_count}"></td>
			</tr>
			<tr>
				<td>상품 간략 설명</td>
				<td><textarea name="brief_description" cols="25" rows="2" style="resize: none;">${product.brief_description}</textarea></td>
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
				<td><input type="checkbox" name="sold_out" value="true" ${sold_out ? 'checked' : ''}></td>
			</tr>
			<tr>
				<td>카테고리</td>
				<td><select name="categories">
				<option value="카드마술" ${product.categories == '카드마술' ? 'selected' : ''}>카드마술</option>
				<option value="동전마술" ${product.categories == '동전마술' ? 'selected' : ''}>동전마술</option>
            	<option value="플레잉카드" ${product.categories == '플레잉카드' ? 'selected' : ''}>플레잉카드</option>
         	  	<option value="클로즈업" ${product.categories == '클로즈업' ? 'selected' : ''}>클로즈업</option>
         	  	<option value="스테이지" ${product.categories == '스테이지' ? 'selected' : ''}>스테이지</option>
         	  	<option value="파이어" ${product.categories == '파이어' ? 'selected' : ''}>파이어</option>
         	  	<option value="DVD" ${product.categories == 'DVD' ? 'selected' : ''}>DVD</option>
         	  	<option value="악세서리" ${product.categories == '악세서리' ? 'selected' : ''}>악세서리</option>
				</select></td>
			</tr>
			<tr>
				<td>상세 설명</td>
				<td><textarea name="detail_description" cols="60" rows="10" style="resize: none;">${product.detail_description}</textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="상품 수정 완료"></td>
			</tr>
		</table>
	</form>
	<br>
	<a href="deleteProduct.do?product_number=${product.product_number}"><img alt="상품 삭제" src="./img/btn/delete.jpg"></a>
	<a href="getProductList.do"><img style="height: 31px;" alt="상품 목록 가기" src="./img/btn/list.jpg"></a>
	</div>
	<br>
	<%@ include file="/WEB-INF/include/footer.jsp"%>
	<!-- footer include -->
</body>
</html>