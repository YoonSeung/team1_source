<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/reservationList.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/memberInfo.css">


<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<style type="text/css">
.header .nav-link {
	color : #c8c8c8 !important;
}
.header .nav-link:hover {
	color : #ffc107 !important;
}
.header-image:hover {
	opacity: 0.6;
}


</style>

<head>
    <meta charset="utf-8">
    <title>Team1 숙박예약관리시스템</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&family=Montserrat:wght@400;500;600;700&display=swap" rel="stylesheet">  

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/resources/lib/animate/animate.min.css" rel="stylesheet">
    <link href="/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="/resources/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/resources/css/style.css" rel="stylesheet">
</head>

<body>
    <div class="container-xxl bg-white p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->

        <!-- Header Start -->
        
        <div class="container-fluid bg-dark px-0">
            <div class="row gx-0">
                <div class="col-lg-3 bg-dark d-none d-lg-block">
                    <a href="../search/main" class="navbar-brand w-100 h-100 m-0 p-0 d-flex align-items-center justify-content-center">
                        <h1 class="m-0 text-primary text-uppercase">호텔예약시스템</h1>
                    </a>
                </div>
                <div class="col-lg-9">
                    <div class="row gx-0 bg-white d-none d-lg-flex">
                        <div class="col-lg-6 px-5 text-start">
                            <div class="h-100 d-inline-flex align-items-center py-2 me-4">
                                <i class="fa fa-envelope text-primary me-2"></i>
                                <p class="mb-0">safy1591@naver.com</p>
                            </div>
                            <div class="h-100 d-inline-flex align-items-center py-2">
                                <i class="fa fa-phone-alt text-primary me-2"></i>
                                <p class="mb-0">+010 6681 1224</p>
                            </div>
                        </div>
                        <div class="col-lg-6">
							<nav class="header navbar navbar-expand-sm navbar-dark">
						    	<div class="default_width container-fluid ">      							        
							        <ul class="nav justify-content-end">
							        	<c:choose>
											<c:when test="${not empty memberVO}">
												<li class="nav-item" style= "text-align:center" >
												<a class="btn btn-succes">${memberVO.mm_name }님 환영합니다.</a>
										        </li>
												<li class="nav-item">
										           <a class="move btn btn-dark" href="${pageContext.request.contextPath}/member/memberget?${memberVO.mm_email}">내 정보</a>
										        </li>
										        <li class="nav-item">
										           <a class="btn btn-primary" href="${pageContext.request.contextPath}/search/qna">예약 내역</a>
										        </li>
										        <li class="nav-item">
										           <a class="btn btn-dark" href="${pageContext.request.contextPath}/common/logout">로그아웃</a>
										        </li>
											</c:when>
											<c:otherwise>
												<li class="nav-item">  
								            		<a class="btn btn-dark " href="${pageContext.request.contextPath}/member/signupForm">회원가입</a>
								            	</li>
								            	<li class="nav-item">
								            		<a class=" btn btn-primary " href="${pageContext.request.contextPath}/common/loginForm">로그인</a>
								            	</li>
											</c:otherwise>
											</c:choose>							        						     
							        </ul>
						      </div>
						    </nav>
                        </div>
                    </div>
                    <nav class="navbar navbar-expand-lg bg-dark navbar-dark p-3 p-lg-0">
                        <a href="search/main" class="navbar-brand d-block d-lg-none">
                            <h1 class="m-0 text-primary text-uppercase">Team1 호텔예약시스템</h1>
                        </a>
                        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                            <div class="navbar-nav mr-auto py-0">
                                <a href='${pageContext.request.contextPath}/search/main' class="nav-item nav-link" data-toggle="tab">메인</a>
                               <a href='${pageContext.request.contextPath}/search/about' class="nav-item nav-link" data-toggle="tab">소개</a>
                               <a href='${pageContext.request.contextPath}/trip/list' class="nav-item nav-link" data-toggle="tab">서비스</a>
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">숙소카테고리</a>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <a href='${pageContext.request.contextPath}/search/hotelsearch' class="dropdown-item">호텔</a>
                                        <a href='${pageContext.request.contextPath}/search/motelsearch' class="dropdown-item">모텔</a>
                                        <a href='${pageContext.request.contextPath}/search/resortsearch' class="dropdown-item">리조트</a>
                                    </div>
                                </div>
                                <a href='${pageContext.request.contextPath}/search/qna' class="nav-item nav-link">QnA</a>
                            </div>                         
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        
        <!-- Header End -->