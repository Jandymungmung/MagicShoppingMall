<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>get wish list</title>
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
	<%@ include file="/WEB-INF/include/header.jsp"%>
	<!-- header include -->
	<br>
	<br>
	<div style="width: 80%; margin: 0 auto;">

		<c:choose>
            <c:when test="${empty wishList}">
                <h1>등록된 관심상품이 없습니다.</h1>
            </c:when>
            <c:otherwise>
            <c:if test="${not empty sessionScope.loginOk and not empty sessionScope.loginOk.userName}">
				<h4>${sessionScope.loginOk.userName}님의 관심 상품 목록입니다.</h4>
			</c:if>
			<br>
                <table class="table table-striped" id="table">
                    <tr>
                        <th>이미지</th>
                        <th>상품 정보</th>
                        <th>가격</th>
                        <th>장바구니</th>
                        <th>삭제</th>
                    </tr>

                    <c:forEach items="${wishList}" var="wish">
                        <tr>
                            <td><a href="detailProduct.do?product_number=${wish.product_number}"><img style="width: 110px; height: 110px" src="./img/thumbnail/${wish.thumbnail_file_name}"></a></td>
                            <td><a href="detailProduct.do?product_number=${wish.product_number}">${wish.product_name}</a></td>
                            <td><fmt:formatNumber value="${wish.price}" pattern="##,###,###원" /></td>
                            <td><a href="insertShoppingCart.do?product_number=${wish.product_number}">장바구니 추가</a></td>
                            <td><a href="deleteWish.do?product_number=${wish.product_number}&userId=${loginOk.userId}">관심목록 삭제</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </c:otherwise>
        </c:choose>
	</div>
	<br>
	<%@ include file="/WEB-INF/include/footer.jsp"%>
	<!-- footer include -->
</body>
</html>