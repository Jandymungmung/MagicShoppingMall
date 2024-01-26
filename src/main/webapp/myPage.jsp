<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/myPage.css">
</head>
<body>
	<%@ include file="/WEB-INF/include/header.jsp"%>
	<!-- header include -->
	<div style="width: 80%; margin: 0 auto;">
	<br>
	<c:if test="${not empty sessionScope.loginOk and not empty sessionScope.loginOk.userName}">
		<h4>🃏  ${sessionScope.loginOk.userName}님 안녕하세요. 즐거운 쇼핑 되세요! 🃏</h4>
		<br>
	</c:if>
	<a href="updateMember.jsp" class="menu-link">나의 정보 수정하기</a><br><br>
	<a href="getWishList.do?userId=${loginOk.userId}" class="menu-link">관심목록 보기</a><br><br>
	<a href="getShoppingCartList.do?userId=${loginOk.userId}" class="menu-link">장바구니 보기</a><br><br>
	<a href="getBoardListMyPage.do" class="menu-link">내가 쓴 게시글 목록 보기</a>
	<br>
	<br>
	<br>
	<br>
	</div>
	
	
	<%@ include file="/WEB-INF/include/footer.jsp"%>
	<!-- footer include -->
</body>
</html>