<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>insert board</title>
<link rel="stylesheet" href="./css/layout.css">
</head>
<body>

	<%@ include file="/WEB-INF/include/header.jsp" %>
	<!-- header include -->
	<div style="width: 75%; margin: 0 auto;">
	<br>
	<h2>📋 게시글 작성하기 📋</h2>
	<br>
	<form action="insertBoard.do" method="post" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td><strong>작성자</strong></td><td><input style="background-color: black; color: white; width: 150px" type="text" name="writer" value="${loginOk.userId}" readonly></td>
			</tr>
			<tr>
				<td><strong>제목</strong></td><td><input style="background-color: black; color: white; width: 630px;" type="text" name="title"></td>
			</tr>
			<tr>
				<td><strong>내용</strong></td><td><textarea style="background-color: black; color: white; resize: none;" name="content" cols="78" rows="23"></textarea></td>
			</tr>
			<tr>
				<td><strong>업로드</strong></td><td><input style="background-color: black; color: white;" type="file" name="uploadFile"></td>
			</tr>			
			<tr>
				<td colspan="2"><input type="image" src="./img/btn/write.jpg" value="등록" style="float: right;"></td>
			</tr>
		</table>
	</form>
	<br>
	<a href="getBoardList.do"><img alt="글 목록" src="./img/btn/list.jpg"></a>
	</div>
	<br>
	
	<%@ include file="/WEB-INF/include/footer.jsp" %>
	<!-- footer include -->
</body>
</html>