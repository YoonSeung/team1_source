<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
<link rel="stylesheet" href="/resources/css/admin.css">
<script src="/resources/js/admin.js"></script>
</head>
<body>
	<div class="loginForm">
		<h1>ADMIN</h1>
		<h2><c:out value="${error}" /></h2>
		<h2><c:out value="${logout}" /></h2>
		
		<form action="/login" method="post" name="frm">
			<input type="text" name="username" placeholder="아이디">
			<input type="password" name="password" placeholder="비밀번호">
			<input type="submit" value="로그인" class="btn" onclick="return adminCheck();">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		</form>
	</div>
</body>
</html>