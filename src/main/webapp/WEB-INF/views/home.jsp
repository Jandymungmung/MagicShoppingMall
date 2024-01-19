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
			<c:forEach var="product" items="${products}">
        <div class="imgBox" onclick="location.href='detail.jsp#none';">
            <img src="<c:out value='./img/thumbnail/${product.thumbnail_file_name}' />">
        </div>
    </c:forEach>
		</div>
	</div>

	<%@ include file="/WEB-INF/include/footer.jsp"%>
	<!-- footer include -->
</body>
</html>