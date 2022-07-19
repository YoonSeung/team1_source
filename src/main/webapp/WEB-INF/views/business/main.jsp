<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:include page="../business/businessheader.jsp" flush="true"/>

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
                                <a href="${pageContext.request.contextPath}/hotel/hotelinfo"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/room-1.jpg" alt="">
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
                                <a href="${pageContext.request.contextPath}/hotel/hotelinfo"><img class="img-fluid" src="/resources/img/room-2.jpg" alt="">
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
                                <a href="${pageContext.request.contextPath}/hotel/hotelinfo"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/room-3.jpg" alt=""> 
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
                                <a href="${pageContext.request.contextPath}/hotel/hotelinfo"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/room-3.jpg" alt="">
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
                    <h6 class="section-title text-center text-primary text-uppercase">추천여행지</h6>
                    <h1 class="mb-5">클릭해서 매출을 확인해보세요!</h1>
                </div>
                <div class="row gx-5">
                    <div class="col wow fadeInUp" data-wow-delay="0.1s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                               <a href="${pageContext.request.contextPath}/hotel/hotelinfo"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/graph2.png" alt=""></a>
                            </div>
                            
                        </div>
                    </div>
                    <div class="col wow fadeInUp" data-wow-delay="0.7s">
                        <div class="rounded shadow overflow-hidden">
                            <div class="position-relative">
                               <a href="${pageContext.request.contextPath}/hotel/hotelinfo"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/graph1.png" alt=""></a>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 여행지 End -->
<jsp:include page="../business/businessfooter.jsp" flush="true"></jsp:include>