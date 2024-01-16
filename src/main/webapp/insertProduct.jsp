<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>insert product</title>
</head>
<body>
	<%@ include file="/WEB-INF/include/header.jsp"%>
	<!-- header include -->
	
	<form action="insertProduct.do" method="post" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td>상품명</td><td><input type="text" name="product_name"></td>
			</tr>
			<tr>
				<td>상품 영어명</td><td><input type="text" name="product_english_name"></td>
			</tr>
			<tr>
				<td>원산지</td><td><input type="text" name="origin"></td>
			</tr>
			<tr>
				<td>가격</td><td><input type="text" name="price"></td>
			</tr>
			<tr>
				<td>재고수</td><td><input type="text" name="stock_count"></td>
			</tr>
			<tr>
				<td>상품 간략 설명</td><td><input type="text" name="brief_description"></td>
			</tr>
			<tr>
				<td>썸네일</td><td><input type="file" name="thumbnail"></td>
			</tr>
			<tr>
				<td>디테일 사진</td><td><input type="file" name="detail_cut"></td>
			</tr>
			<tr>
				<td>품절 여부</td><td><input type="text" name="sold_out"></td>
			</tr>
			<tr>
				<td>카테고리</td><td><input type="text" name="categories"></td>
			</tr>
			<tr>
				<td>상세 설명</td><td><textarea name="detail_discription" cols="80" rows="12"></textarea></td>
			</tr>	
			<tr>
				<td colspan="2"><input type="submit" value="등록"></td>
			</tr>
		</table>
	</form>
	<a href="getProductList.do">상품 목록 가기</a>
	
	<%@ include file="/WEB-INF/include/footer.jsp"%>
	<!-- footer include -->
</body>
</html>