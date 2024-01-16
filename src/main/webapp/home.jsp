<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>home</title>
<link rel="stylesheet" href="./css/home.css">
</head>
<body>

	<%@ include file="/WEB-INF/include/header.jsp"%>
	<!-- header include -->

	<div id="section">
		<div id="video">
			<div style="margin: 50px 0 20px;">
				<iframe width="1100" height="667"
					src="https://www.youtube.com/embed/Z8Ws4PEky28?si=WXt4LHXDT4v-RpQd"
					title="YouTube video player" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
					allowfullscreen></iframe>
			</div>
		</div>
		<h2>✨ 추천 상품 ✨</h2>
		<div id="img_container">
			<div class="imgBox" onclick="location.href='detail.jsp#none';">
				<img src="./img/product/1.큰카드재생마술.jpg">
			</div>
			<div class="imgBox" onclick="location.href='detail.jsp#none';">
				<img src="./img/product/2.어피어링버드케이지.jpg">
			</div>
			<div class="imgBox" onclick="location.href='detail.jsp#none';">
				<img src="./img/product/3.마스크목걸이.jpg">
			</div>
			<div class="imgBox" onclick="location.href='detail.jsp#none';">
				<img src="./img/product/4.커버케이스.jpg">
			</div>
			<div class="imgBox" onclick="location.href='detail.jsp#none';">
				<img src="./img/product/5.오디세이.jpg">
			</div>
			<div class="imgBox" onclick="location.href='detail.jsp#none';">
				<img src="./img/product/6.나도마술사베스트3.jpg">
			</div>
			<div class="imgBox" onclick="location.href='detail.jsp#none';">
				<img src="./img/product/7.클리어카드가드.jpg">
			</div>
			<div class="imgBox" onclick="location.href='detail.jsp#none';">
				<img src="./img/product/8.의자공중부양.jpg">
			</div>
			<div class="imgBox" onclick="location.href='detail.jsp#none';">
				<img src="./img/product/9.보타니아.jpg">
			</div>
			<div class="imgBox" onclick="location.href='detail.jsp#none';">
				<img src="./img/product/10.좀비볼.jpg">
			</div>
			<div class="imgBox" onclick="location.href='detail.jsp#none';">
				<img src="./img/product/11.케인투플라워.jpg">
			</div>
			<div class="imgBox" onclick="location.href='detail.jsp#none';">
				<img src="./img/product/12.더플로팅.jpg">
			</div>
		</div>
	</div>

	<%@ include file="/WEB-INF/include/footer.jsp"%>
	<!-- footer include -->
</body>
</html>