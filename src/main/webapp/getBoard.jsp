<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
	<div style="width: 65%; margin: 0 auto;">
	<form action="updateBoard.do" method="post">
		<input name="seq" type="hidden" value="${board.seq}" />
		<table border="1">
			<tr>
				<td>제목</td>
				<td><c:if test="${sessionScope.loginOk.userId == board.writer}">
						<input style="background-color: black; color: white;" name="title" type="text" value="${board.title}" />
					</c:if> <c:if test="${sessionScope.loginOk.userId != board.writer}">
                ${board.title}
            </c:if></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${board.writer}</td>
			</tr>
			<tr>
				<td>내용</td>
				<td>
					<div
						style="display: flex; flex-direction: column; align-items: center; text-align: center;">
						<c:if test="${not empty board.file}">
							<img src="./img/board_img/${board.file}" alt="Uploaded Image"
								style="width: 400px; height: 400px; margin-bottom: 10px;">
						</c:if>
						<textarea name="content" cols="70" rows="10"
							style="margin-top: 10px; text-align: left; background-color: black; color: white;"
							<c:if test="${sessionScope.loginOk.userId != board.writer}">
            readonly
        </c:if>>${board.content}</textarea>
					</div>
				</td>
			</tr>
			<tr>
				<td>등록일</td>
				<td>${board.upload_time}</td>
			</tr>
			<tr>
				<td>조회수</td>
				<td>${board.viewCnt}</td>
			</tr>
			<c:if test="${sessionScope.loginOk.userId == board.writer}">
				<tr>
					<td colspan="2"><a href="deleteBoard.do?seq=${board.seq}">글삭제</a>
						<input type="submit" value="글 수정" /></td>
				</tr>
			</c:if>
		</table>
		<hr>
		<a href="insertBoard.jsp">글등록</a>&nbsp;&nbsp;&nbsp; <a
			href="getBoardList.do">글목록</a>
	</form>
	</div>
	<%@ include file="/WEB-INF/include/footer.jsp"%>
	<!-- footer include -->
</body>
</html>