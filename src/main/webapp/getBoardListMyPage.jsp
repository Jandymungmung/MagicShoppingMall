<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>board</title>
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
	<!-- 검색 시작 -->
	<br>
	<br>
	<div style="width: 80%; margin: 0 auto;">
	<h4>📋  ${loginOk.userName}님이 작성하신 게시글 목록 📋</h4>
		<br>
		<br>
		<form action="getBoardListMyPage.do" method="post">
			<table border="1">
				<tr>
					<td><select name="searchCondition">
							<option value="title">제목</option>
							<option value="content">내용</option>
					</select> <input name="searchKeyword" type="text" /> <input type="submit"
						value="검색" /></td>
				</tr>
			</table>
		</form>
		<br>
		<!--  검색 종료 -->

		<table class="table table-striped" id="table">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>등록일</th>
				<th>조회수</th>
			</tr>

			<c:forEach items="${boardList}" var="board">
				<tr>
					<td>${board.seq}</td>
					<td><a href="getBoard.do?seq=${board.seq}">${board.title}</a></td>
					<td>${board.writer}</td>
					<td>${board.upload_time}</td>
					<td>${board.viewCnt}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<br>
	<br>

	<%@ include file="/WEB-INF/include/footer.jsp"%>
	<!-- footer include -->
</body>
</html>