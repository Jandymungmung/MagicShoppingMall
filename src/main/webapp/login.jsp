<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>login</title>
<script src="js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="./css/login.css">

</head>
<body>
	<c:if test="${not empty message}">
    <script>
        window.onload = function() {
            alert("${message}");
        }
    </script>
	</c:if>
    
	<%@ include file="/WEB-INF/include/header.jsp" %>
	<!-- header include -->
	
	<div id="wrap">
        <div id="login_container">
            <div id="login_inner">
                <div id="path">
                    <h2>현재 위치</h2>
                    <ol>
                        <li>
                            <a href="">HOME</a>
                        </li>
                        <li title="현재위치">
                            <strong>LOGIN</strong>
                        </li>
                    </ol>
                </div>
                <form action="login.do" method="post">
                            <div class="titleArea">
                                <h3>LOGIN</h3>
                                <span>WELCOME BACK</span>
                            </div>
                            <div id="loginBox">
                                <label class="id">
                                    <input id="userId" name="userId" type="text" placeholder="아이디">
                                </label>
                                <label class="password">
                                    <input id="userPsword" name="userPsword" autocomplete="off" type="password" placeholder="비밀번호">
                                </label>
                                <br>
                                <input type="image" src="./img/btn/btn_login.gif" alt="로그인">
                                <p class="security">
                                    <img src="./img/btn/ico_access.gif" alt="보안접속">
                                    보안접속
                                </p>
                                <ul>
                                    <li>
                                        <a href="">아이디 찾기</a>
                                    </li>
                                    <li>
                                        <a href="">비밀번호 찾기</a>
                                    </li>
                                    <li>
                                        <a href="">회원가입</a>
                                    </li>
                                </ul>
                                <ul class="snsArea">
                                    <li>
                                        <a href="#none" onclick="">
                                            <img src="./img/btn/btn_login_naver.gif" alt="네이버 로그인">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <br>
                            <br>
                            <br>
                            
                </form>
                
                <script>
                	$('form').on('image', function(event){
                		
                	})
                </script>
                
            </div>
        </div>
    </div>
	
	<%@ include file="/WEB-INF/include/footer.jsp" %>
	<!-- footer include -->
</body>
</html>