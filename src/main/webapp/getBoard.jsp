<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>get board</title>
<link rel="stylesheet" href="./css/layout.css">
</head>
<body>
	<%@ include file="/WEB-INF/include/header.jsp"%>
	<!-- header include -->
	<br>
	<div style="width: 75%; margin: 0 auto;">
	<h2>📋 게시글 상세보기 📋</h2>
	<form action="updateBoard.do" method="post">
		<input name="seq" type="hidden" value="${board.seq}" />
		<table border="1">
			<tr>
				<td style="width: 80px;"><strong>제목</strong></td>
				<td><c:if test="${sessionScope.loginOk.userId == board.writer}">
						<input style="background-color: black; color: white; border: none;" name="title" type="text" value="${board.title}" />
					</c:if> <c:if test="${sessionScope.loginOk.userId != board.writer}">
                ${board.title}
            </c:if></td>
			</tr>
			<tr>
				<td style="width: 80px;"><strong>작성자</strong></td>
				<td>${board.writer}</td>
			</tr>
			<tr>
				<td style="width: 80px;"><strong>내용</strong></td>
				<td>
					<div
						style="display: flex; flex-direction: column; align-items: center; text-align: center;">
						<c:if test="${not empty board.file}">
							<img src="./img/board_img/${board.file}" alt="Uploaded Image"
								style="width: 400px; height: 400px; margin-bottom: 10px;">
						</c:if>
						<textarea name="content" cols="70" rows="10"
							style="margin-top: 10px; text-align: left; background-color: black; color: white; resize: none; border: none;"
							<c:if test="${sessionScope.loginOk.userId != board.writer}">
            readonly
        </c:if>>${board.content}</textarea>
					</div>
				</td>
			</tr>
			<tr>
				<td style="width: 80px;"><strong>등록일</strong></td>
				<td>${board.upload_time}</td>
			</tr>
			<tr>
				<td style="width: 80px;"><strong>조회수</strong></td>
				<td>${board.viewCnt}</td>
			</tr>
			<c:if test="${sessionScope.loginOk.userId == board.writer}">
				<tr>
					<td colspan="2">&nbsp;
						<input type="image" src="./img/btn/modify.jpg" alt="글 수정" /></td>
				</tr>
			</c:if>
		</table>
		<br>
		
		<a href="insertBoard.jsp" class="btn"><img alt="글 등록" src="./img/btn/write.jpg"></a>&nbsp;&nbsp;&nbsp; 
		<a href="getBoardList.do" class="btn"><img alt="글 목록" src="./img/btn/list.jpg"></a>&nbsp;&nbsp;&nbsp;
		<c:if test="${sessionScope.loginOk.userId == board.writer}">
			<a href="deleteBoard.do?seq=${board.seq}"><img style="width: 110px; height: 28px" alt="글 삭제" src="./img/btn/delete.jpg"></a>
		</c:if>
	</form>
	</div>
	<br>
	<br>
	<%@ include file="/WEB-INF/include/footer.jsp"%>
	<!-- footer include -->
</body>
</html>