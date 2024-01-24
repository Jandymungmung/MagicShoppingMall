<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>get search product list</title>
<link rel="stylesheet" href="./css/searchProduct.css">
</head>
<body>

	<%@ include file="/WEB-INF/include/header.jsp"%>
	<!-- header include -->

	<div id="section">
		<h2>✨ ${products[0].categories} 상품 목록 ✨</h2>
		<div id="img_container">
			<c:forEach var="product" items="${products}">
                <div class="imgBox" onclick="loadProductDetail(${product.product_number});">
                    <c:choose>
                        <c:when
                            test="${product.categories eq '카드마술' or product.categories eq '동전마술' or product.categories eq '플레잉카드' or product.categories eq '클로즈업' or product.categories eq '스테이지' or product.categories eq '파이어' or product.categories eq 'DVD' or product.categories eq '악세서리'}">
                            <div class="imgBox" onclick="loadProductDetail(${product.product_number});">
                                <img
                                    src="<c:out value='./img/thumbnail/${product.thumbnail_file_name}' />">
                                <div class="productInfo">
                                    <p class="productName">${product.product_name}</p>
                                    <p class="productPrice"><fmt:formatNumber value="${product.price}" pattern="##,###,###원" /></p>
                                </div>
                            </div>
                        </c:when>
                    </c:choose>
                </div>
            </c:forEach>
		</div>
	</div>

	<script>
    function loadProductDetail(product_number) {
        // 클릭한 상품 번호를 이용하여 상세 정보를 서버로 요청하는 로직
        location.href = 'detailProduct.do?product_number=' + product_number;
    }
	</script>

	<%@ include file="/WEB-INF/include/footer.jsp"%>
	<!-- footer include -->
</body>
</html>