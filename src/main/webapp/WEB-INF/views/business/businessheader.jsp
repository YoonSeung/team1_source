<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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

    <!-- Favicon -->
    <link href="/resources/img/favicon.ico" rel="icon">

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
                    <a href="main" class="navbar-brand w-100 h-100 m-0 p-0 d-flex align-items-center justify-content-center">
                        <h1 class="m-0 text-primary text-uppercase">호텔예약시스템</h1>
                    </a>
                </div>
                <div class="col-lg-9">
                    <div class="row gx-0 bg-white d-none d-lg-flex">
                        <div class="col-lg-7 px-5 text-start">
                            <div class="h-100 d-inline-flex align-items-center py-2 me-4">
                                <i class="fa fa-envelope text-primary me-2"></i>
                                <p class="mb-0">safy1591@naver.com</p>
                            </div>
                            <div class="h-100 d-inline-flex align-items-center py-2">
                                <i class="fa fa-phone-alt text-primary me-2"></i>
                                <p class="mb-0">+010 6681 1224</p>
                            </div>
                        </div>
   	<div class="col-lg-5 px-5 text-end text-nowrap">
		<nav class="header navbar navbar-expand-sm navbar-dark">
				<div class="default_width container-fluid ">      							        
        			<ul class="navbar-nav  justify-content-end">
        <li class="nav-item">
		<a class="nav-link" href="${pageContext.request.contextPath}/member/buInfo">사업자 정보</a>
		</li>
		<li class="nav-item">
		<a class="nav-link" href="${pageContext.request.contextPath}/room/reservation">예약내역</a>
		</li>
		<li class="nav-item">
	    <a class="nav-link" href="${pageContext.request.contextPath}/member/logout">로그아웃</a>
	 </li>
        </ul>
        </div>
        </nav>
                        </div>
                    </div>
                    <nav class="navbar navbar-expand-lg bg-dark navbar-dark p-3 p-lg-0">
                        <a href="main" class="navbar-brand d-block d-lg-none">
                            <h1 class="m-0 text-primary text-uppercase">Team1 호텔예약시스템</h1>
                        </a>
                        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                            <div class="navbar-nav mr-auto py-0">
                                <a href="main" class="nav-item nav-link" data-toggle="tab">메인</a>
                                <a href="myhotel" class="nav-item nav-link" data-toggle="tab">숙소관리</a>
                                <a href="service.html" class="nav-item nav-link">예약관리</a>
                                <a href="room.html" class="nav-item nav-link">서비스</a>
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">페이지나눔</a>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <a href="booking.html" class="dropdown-item">예약</a>
                                        <a href="team.html" class="dropdown-item">추천여행지</a>
                                        <a href="testimonial.html" class="dropdown-item">~다른내용</a>
                                    </div>
                                </div>
                                <a href="contact.html" class="nav-item nav-link">매출관리</a>
                                <a href="service.html" class="nav-item nav-link">리뷰</a>
                                <a href="room.html" class="nav-item nav-link">고객센터</a>
                            </div>                         
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Header End -->
         <!-- Carousel Start -->
        <div class="container-fluid p-0 mb-5">
            <div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="w-100" src="/resources/img/carousel-1.jpg" alt="Image">
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3" style="max-width: 700px;">
                                <h6 class="section-title text-white text-uppercase mb-3 animated slideInDown">호텔</h6>
                                <h1 class="display-3 text-white mb-4 animated slideInDown">5성급 호텔이 <br/> 궁금하시나요?</h1>
                                <a href="" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">호텔 둘러보기</a>
                                <a href="" class="btn btn-light py-md-3 px-md-5 animated slideInRight">호텔 예약하기</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="w-100" src="/resources/img/carousel-2.jpg" alt="Image">
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3" style="max-width: 700px;">
                                <h6 class="section-title text-white text-uppercase mb-3 animated slideInDown">리조트 </h6>
                                <h1 class="display-3 text-white mb-4 animated slideInDown">가족과의 여행 <br/> 리조트는 어떠신가요</h1>
                                <a href="" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">리조트 둘러보기</a>
                                <a href="" class="btn btn-light py-md-3 px-md-5 animated slideInRight">리조트 예약하기</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="w-100" src="/resources/img/carousel-3.jpg" alt="Image">
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3" style="max-width: 700px;">
                                <h6 class="section-title text-white text-uppercase mb-3 animated slideInDown">모텔</h6>
                                <h1 class="display-3 text-white mb-4 animated slideInDown">남녀노소 쉽게 그게 <br/>우리의 모토입니다.</h1>
                                <a href="" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">모텔 둘러보기</a>
                                <a href="" class="btn btn-light py-md-3 px-md-5 animated slideInRight">모텔 예약하기</a>
                            </div>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel"
                    data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#header-carousel"
                    data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
        <!-- Carousel End -->
         <!-- Booking Start -->
        <div class="container-fluid booking pb-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container">
                <div class="bg-white shadow" style="padding: 35px;">
                    <div class="row g-2">
                        <div class="col-md-10">
                            <div class="row g-2">
                                <div class="col-md-3">
                                    <div class="date" id="date1" data-target-input="nearest">
                                        <input type="text" class="form-control datetimepicker-input"
                                            placeholder="Check in" data-target="#date1" data-toggle="datetimepicker" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="date" id="date2" data-target-input="nearest">
                                        <input type="text" class="form-control datetimepicker-input" placeholder="Check out" data-target="#date2" data-toggle="datetimepicker"/>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <select class="form-select">
                                        <option selected>성인</option>
                                        <option value="1">1명</option>
                                        <option value="2">2명</option>
                                        <option value="3">3명</option>
                                        <option value="4">4명</option>
                                        <option value="5">5명</option>
                                        <option value="6">6명</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <button class="btn btn-primary w-100">검색하기</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Booking End -->
  