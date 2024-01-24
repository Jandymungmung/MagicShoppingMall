<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>update member</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="./css/bootstrapHR.css">
</head>
<body>
	<%@ include file="/WEB-INF/include/header.jsp"%>
	<!-- header include -->
	<br>
	<br>
	
	<div style="width:60% ; margin: 0 auto;">
	<h4>회원정보 수정</h4>
	<br>
	<div class="container">
		<form action="updateMember.do" class="was-validated" method="post" onsubmit="return check();">
			<div class="form-group">
				<label for="userId">아이디</label> <input type="text"
					class="form-control" id="userId" placeholder="아이디 입력" name="userId" value="${loginOk.userId}"
					required readonly>
				<div id="idValid" class="valid-feedback">사용 가능합니다.</div>
				<div class="invalid-feedback">입력해주세요.</div>
			</div>
			<div class="form-group">
				<label for="userName">이름</label> <input type="text"
					class="form-control" id="userName" placeholder="이름 입력"
					name="userName" required value="${loginOk.userName}">
				<div class="valid-feedback">&nbsp;</div>
				<div class="invalid-feedback">입력해주세요.</div>
			</div>
			<div class="form-group">
				<label for="userPsword">비밀번호</label> <input type="password"
					class="form-control" id="userPsword" placeholder="비밀번호 입력"
					name="userPsword" value="${loginOk.userPsword}" required>
				<div class="valid-feedback">&nbsp;</div>
				<div class="invalid-feedback">입력해주세요.</div>
			</div>
			<div class="form-group">
				<label for="userPsword">비밀번호 확인</label> <input type="password"
					class="form-control" id="passwordCheck" placeholder="비밀번호 확인"
					required>
				<div class="valid-feedback">&nbsp;</div>
				<div class="invalid-feedback">입력해주세요.</div>
			</div>
			<div class="form-group">
				<label for="userEmail">이메일</label> <input type="text"
					class="form-control" id="userEmail" placeholder="이메일 입력"
					name="userEmail" value="${loginOk.userEmail}" required>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">입력해주세요.</div>
			</div>
			<input type="text" name="sample4_postcode" id="sample4_postcode"
				placeholder="우편번호" value="${loginOk.sample4_postcode}" readonly> <input type="button"
				onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
			<input type="text" name="sample4_roadAddress"
				id="sample4_roadAddress" placeholder="도로명주소" value="${loginOk.sample4_roadAddress}" readonly> 
			<input type="text" name="sample4_jibunAddress" id="sample4_jibunAddress"
				placeholder="지번주소" value="${loginOk.sample4_jibunAddress}" readonly> <span id="guide"
				style="color: #999; display: none"></span> 
			<input type="text" name="sample4_detailAddress" id="sample4_detailAddress"
				placeholder="상세주소" value="${loginOk.sample4_detailAddress}"> 
			<input type="text" name="sample4_extraAddress" id="sample4_extraAddress"
				placeholder="참고항목" value="${loginOk.sample4_extraAddress}" readonly><br>
			<br>

			<div class="form-group">
				<label for="birthday">생년월일</label> <input type="text"
					class="form-control" id="birthday" placeholder="생년월일 입력"
					name="birthday" value="${loginOk.birthday}" required readonly>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">입력해주세요.</div>
			</div>
			<div class="form-group">
				<label for="phoneNum">연락처</label> <input type="text"
					class="form-control" id="phoneNum" placeholder="연락처 입력"
					name="phoneNum" value="${loginOk.phoneNum}" required>
				<div class="valid-feedback"></div>
				<div class="invalid-feedback">사용 불가능합니다.</div>
			</div>
			<div class="container">
				<div class="form-group">
					<label for="gender">성별</label> <select
						class="form-control" id="gender" name="gender">
						<option value="남성" ${loginOk.gender == '남성' ? 'selected' : ''}>남성</option>
						<option value="여성" ${loginOk.gender == '여성' ? 'selected' : ''}>여성</option>
					</select> <br>
				</div>
			</div>
			

			<button type="submit" class="btn btn-primary">회원 수정 완료</button>
		</form>
		<br>
		<br>


		</div>
	</div>

	<%@ include file="/WEB-INF/include/footer.jsp"%>
	<!-- footer include -->

	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
		function sample4_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var roadAddr = data.roadAddress; // 도로명 주소 변수
							var extraRoadAddr = ''; // 참고 항목 변수

							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraRoadAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraRoadAddr += (extraRoadAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraRoadAddr !== '') {
								extraRoadAddr = ' (' + extraRoadAddr + ')';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('sample4_postcode').value = data.zonecode;
							document.getElementById("sample4_roadAddress").value = roadAddr;
							document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

							// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
							if (roadAddr !== '') {
								document.getElementById("sample4_extraAddress").value = extraRoadAddr;
							} else {
								document.getElementById("sample4_extraAddress").value = '';
							}

							var guideTextBox = document.getElementById("guide");
							// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
							if (data.autoRoadAddress) {
								var expRoadAddr = data.autoRoadAddress
										+ extraRoadAddr;
								guideTextBox.innerHTML = '(예상 도로명 주소 : '
										+ expRoadAddr + ')';
								guideTextBox.style.display = 'block';

							} else if (data.autoJibunAddress) {
								var expJibunAddr = data.autoJibunAddress;
								guideTextBox.innerHTML = '(예상 지번 주소 : '
										+ expJibunAddr + ')';
								guideTextBox.style.display = 'block';
							} else {
								guideTextBox.innerHTML = '';
								guideTextBox.style.display = 'none';
							}
						}
					}).open();
		}
	</script>

	<script src="js/jquery-3.6.0.min.js"></script>

	<script>
		$('#userId').on(
				'keyup',
				function() {
					console.log("테스트");
					let id = $('#userId').val();

					$.ajax({
						url : "idCheck.do", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소
						type : "post", // HTTP 요청방식 (get/post)
						data : {
							"userId" : id
						}, // HTTP 요청과 함께 서버로 보낼 데이터
						dataType : 'text', // 서버에서 보내줄 데이터의 타입
						// 성공적으로 값을 서버로 보냈을 경우 처리하는 코드
						success : function(result) {
							console.log(result);
							if (result == 0) {
								$("#idValid").html('사용 불가능합니다.').css('color',
										'red');
							} else {
								$("#idValid").html('사용할 수 있는 아이디 입니다.').css(
										'color', 'green');
							}
						},
						error : function() {
							alert("서버요청실패");
						}
					})
				})
	</script>

	<script>
		function check() {
			let pw = document.getElementById("userPsword").value;
			let pwCk = document.getElementById("passwordCheck").value;

			if (pw === "") {
				alert("비밀번호를 입력하세요");
				document.getElementById("userPsword").focus();
				return false;
			} else if (pw === pwCk) {
				return true;
			} else {
				alert("암호가 일치하지 않습니다.");
				document.getElementById("passwordCheck").focus();
				return false;
			}

		}
		
	</script>
</body>

</html>