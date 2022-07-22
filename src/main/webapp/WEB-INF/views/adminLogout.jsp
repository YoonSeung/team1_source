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
	<div class="logoutForm">
		<h1>Logout</h1>
		
		<form action="/adminLogout" method="post" name="frm">
			<input type="submit" value="로그아웃" class="btn">
<%-- 			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> --%>
		</form>
	</div>
</body>
</html>