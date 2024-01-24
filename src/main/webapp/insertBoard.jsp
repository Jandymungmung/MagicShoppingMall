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
	<div style="width: 65%; margin: 0 auto;">
	<form action="insertBoard.do" method="post" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td>작성자</td><td><input style="background-color: black; color: white;" type="text" name="writer" value="${loginOk.userId}" readonly></td>
			</tr>
			<tr>
				<td>제목</td><td><input style="background-color: black; color: white;" type="text" name="title"></td>
			</tr>
			<tr>
				<td>내용</td><td><textarea style="background-color: black; color: white; resize: none;" name="content" cols="70" rows="23"></textarea></td>
			</tr>
			<tr>
				<td>업로드</td><td><input style="background-color: black; color: white;" type="file" name="uploadFile"></td>
			</tr>			
			<tr>
				<td colspan="2"><input style="background-color: black; color: white;" type="submit" value="등록"></td>
			</tr>
		</table>
	</form>
	<a href="getBoardList.do">글 목록 가기</a>
	</div>
	
	<%@ include file="/WEB-INF/include/footer.jsp" %>
	<!-- footer include -->
</body>
</html>