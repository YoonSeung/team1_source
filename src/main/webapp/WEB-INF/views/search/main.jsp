<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@include file="../common/memberheader.jsp" %>


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
					

       <!-- 숙소카테고리 Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="section-title text-center text-primary text-uppercase">숙소카테고리</h6>
                    <h1 class="mb-5">클릭해서 원하는 숙소를 찾아보세요</h1>
                </div>
                <div class="row g-4">
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="/resources/img/room-1.jpg" alt="">
                            </div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">호텔</h5>
                                <small>주소</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="/resources/img/room-2.jpg" alt="">
                            </div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">모텔</h5>
                                <small>주소</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="/resources/img/room-3.jpg" alt=""> 
                            </div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">리조트</h5>
                                <small>주소</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="/resources/img/room-3.jpg" alt="">
                            </div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">펜션</h5>
                                <small>주소</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 숙소카테고리 End -->

       <!-- 여행지 Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="section-title text-center text-primary text-uppercase">추천여행지</h6>
                    <h1 class="mb-5">추천수가 많은 여행지입니다.</h1>
                </div>
                <div class="row g-4">
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="/resources/img/trip1.jpg" alt="">
                            </div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">추천명소명1</h5>
                                <small>주소</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="/resources/img/trip1.jpg" alt="">
                            </div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">추천명소명2</h5>
                                <small>주소</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="/resources/img/trip2.jpg" alt="">
                            </div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">추천명소명3</h5>
                                <small>주소</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                                <img class="img-fluid" src="/resources/img/trip2.jpg" alt="">
                            </div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">추천명소명4</h5>
                                <small>주소</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 여행지 End -->

        
<%@include file="../common/memberfooter.jsp" %>