<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<%@include file="../common/memberheader.jsp" %>
<link rel="stylesheet" href="../resources/css/join.css">
<body>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  


<section class="h-100 h-custom" style="background-color: #8fc4b7;">
	<div class="container py-5 h-100">
		<div class="row d-flex justify-content-center align-items-center h-100">
			<div class="col-lg-8 col-xl-6">
				<div class="card rounded-3">
          			<img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img3.webp"
            				class="w-100" style="border-top-left-radius: .3rem; border-top-right-radius: .3rem;"
            		alt="Sample photo">
            
          		<div class="card-body p-4 p-md-5">
            		<h3 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">내 정보 보기</h3>
						<form name='memberget' id="'memberget'" method="get" action="/member/'memberget'" accept-charset="UTF-8">
						
						
							<div class="form-floating mt-3">
								  	<input type="email" name="mm_email" id="mm_email" class="form-control" value="${memberVO.mm_email }" readonly="readonly">
								  	<label><span>이메일</span></label>										  						  	
							</div>
							
							<div class="form-floating mt-3">
								<input type="tel" name="mm_phone" id="mm_phone" class="form-control form-control-lg" 
									id="mm_phone" value="${memberVO.mm_phone }" pattern="[0-9]{11}" readonly="readonly">
									<label><span>전화번호</span></label>
							</div>

		
								<div class="form-floating mt-3">
									<input type="text" name="mm_pass" id="mm_pass" class="form-control form-control-lg mt-3" 
									value="${memberVO.mm_pass }" pattern="^(?=.*[a-zA-z])(?=.*[0-9]).{6,12}$" readonly="readonly">
									<label><span>비밀번호</span></label>
								</div>
									
								<div class="form-floating mt-3">
									<input type="text" name="mm_name" class="form-control form-control-lg" value="${memberVO.mm_name }" readonly="readonly">
									<label><span>이름</span></label>
								</div>		
								<div class="form-floating mt-3">
									<c:choose>									
										<c:when test='${memberVO.mm_gender=="M" }'>
										<input type="text" name="mm_gender" class="form-control form-control-lg" value="남자" readonly="readonly">
										</c:when>
										<c:otherwise>
										<input type="text" name="mm_gender" class="form-control form-control-lg" value="여자" readonly="readonly">
										</c:otherwise>
									</c:choose>
									<label><span>성별</span></label>
								</div>										
							<br>
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>



	<%@include file="../common/memberfooter.jsp" %>