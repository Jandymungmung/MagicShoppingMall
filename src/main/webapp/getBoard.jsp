<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>get board</title>
</head>
<body>
	<%@ include file="/WEB-INF/include/header.jsp"%>
	<!-- header include -->
	<div></div>
	<form action="updateBoard.do" method="post">
	<input name="seq" type="hidden" value="${board.seq}" />
	<table border="1">
		<tr>
			<td>제목</td>
			<td><input name="title" type="text" value="${board.title}"/></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td>${board.writer}</td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea name="content" cols="40" rows="10">${board.content}</textarea></td>
		</tr>
		<tr>
			<td>등록일</td>
			<td>${board.upload_time}</td>
		</tr>
		<tr>
			<td>조회수</td>
			<td>${board.viewCnt}</td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="글 수정"/></td>
		</tr>
	</table>
	<hr>
	<a href="insertBoard.jsp">글등록</a>&nbsp;&nbsp;&nbsp;
	<a href="deleteBoard.do?seq=${board.seq}">글삭제</a>&nbsp;&nbsp;&nbsp;
	<a href="getBoardList.do">글목록</a>
</form>
	<%@ include file="/WEB-INF/include/footer.jsp"%>
	<!-- footer include -->
</body>
</html>