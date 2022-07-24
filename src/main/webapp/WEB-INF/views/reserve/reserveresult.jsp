<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@include file="../common/memberheader.jsp" %>
<%
	// 로그인 하지 않았을 시 로그인 페이지로 이동
/* 	if(session.getAttribute("u_idKey")==null){
		response.sendRedirect("../login/login.jsp");
	} */
	// 오늘 날짜를 나타내는 변수 생성
	Date today = new Date();
	SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
	String now = simpleDateFormat.format(today);
%>
<!DOCTYPE html>
<html>
<title>예약하기</title>
</head>
<body>
<div class="container-xxl py-5">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="section-title text-center text-primary text-uppercase">예약완료</h6>
                    <h1 class="mb-5">예약 완료</h1>
                    <a onclick="location.href='${pageContext.request.contextPath}/search/main'" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">메인으로 이동</a>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                </div>
            </div>
        </div>
</body>
</html>
<%@include file="../common/memberfooter.jsp" %>