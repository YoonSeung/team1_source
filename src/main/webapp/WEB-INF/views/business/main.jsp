<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:include page="../business/businessheader.jsp" flush="true"/>

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

       <!-- 예약 Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="section-title text-center text-primary text-uppercase">숙소카테고리</h6>
                    <h1 class="mb-5">클릭해서 예약 정보를 확인해보세요!!</h1>
                </div>
                <div class="row g-4">
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                                <a href="${pageContext.request.contextPath}/business/myhotel"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/room-1.jpg" alt="">
                            </a></div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">호텔</h5>
                                <small>주소</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                                <a href="${pageContext.request.contextPath}/business/myhotel"><img class="img-fluid" src="/resources/img/room-2.jpg" alt="">
                            </a></div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">모텔</h5>
                                <small>주소</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                                <a href="${pageContext.request.contextPath}/business/myhotel"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/room-3.jpg" alt=""> 
                            </a></div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">리조트</h5>
                                <small>주소</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                                <a href="${pageContext.request.contextPath}/business/myhotel"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/room-3.jpg" alt="">
                            </a></div>
                            <div class="text-center p-4 mt-3">
                                <h5 class="fw-bold mb-0">펜션</h5>
                                <small>주소</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 예약 End -->

       <!-- 매출 Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="section-title text-center text-primary text-uppercase">사업자 매출</h6>
                    <h1 class="mb-5">클릭해서 매출을 확인해보세요!</h1>
                </div>
                <div class="row gx-5">
                    <div class="col wow fadeInUp" data-wow-delay="0.1s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                               <a href="${pageContext.request.contextPath}/business/error"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/graph2.png" alt=""></a>
                            </div>

                        </div>
                    </div>
                    <div class="col wow fadeInUp" data-wow-delay="0.7s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                               <a href="${pageContext.request.contextPath}/business/error"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/graph1.png" alt=""></a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 매출 End -->
<jsp:include page="../business/businessfooter.jsp" flush="true"></jsp:include>