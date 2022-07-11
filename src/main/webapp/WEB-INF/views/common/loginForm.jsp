<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="../common/loginheader.jsp" %>

<body>

	<div class="login_form_width" style="padding-top:100px; margin-bottom: 100px">
		<!-- Nav tabs -->
		<ul class="nav nav-tabs nav-justified mt-3" role="tablist" style="width:312px; margin:0 auto;">
			<li class="nav-item"><a class="nav-link active" data-bs-toggle="tab" style="color:black;" href="#member-login">고객 로그인</a></li>
			<li class="nav-item"><a class="nav-link" data-bs-toggle="tab" style="color:black;" href="#business-login">사업자 로그인</a></li>
		</ul>

		<!-- Tab panes -->
		<div class="tab-content">
			
			<!-- 고객 로그인 폼 -->
			<div id="member-login" class="container tab-pane active" >
				<form action="${pageContext.request.contextPath}/member/loginPro" method="post" style="margin: auto; width: 500px;">

					<input type="text" name="email" class="form-control form-control-lg mt-3" placeholder="이메일" autocomplete="username"> 
					<input type="password" name="password" class="form-control form-control-lg mt-1" placeholder="비밀번호" autocomplete="current-password"> 					
					<hr>
					<div class="row mt-3">
						<div class="col-sm-6" style="text-align: center;">
							<a class="small_text non_deco" href="">회원 로그인</a>
						</div>
						<div class="col-sm-6" style="text-align: center;">
							<a class="small_text non_deco" href="${pageContext.request.contextPath}/member/signupForm">회원가입</a>
						</div>
					</div>
				</form>
			</div>
			<!-- 고객 로그인 폼 end -->
			
			<!-- 사업자 로그인 폼 -->
			<div id="business-login" class="container tab-pane fade">
				<form action="${pageContext.request.contextPath}/member/buLoginPro" method="post" style="margin: auto; width: 500px;">
					
					<input type="text" name="bu_email" class="form-control form-control-lg mt-3" placeholder="이메일" autocomplete="username" > 
					<input type="password" name="bu_password" class="form-control form-control-lg mt-1" placeholder="비밀번호" autocomplete="current-password"> 				
					<hr>
					<div class="row mt-3">
						<div class="col-sm-6" style="text-align: center;">
							<a class="small_text non_deco" href="">사업자 로그인</a>
						</div>
						<div class="col-sm-6" style="text-align: center;">
							<a class="small_text non_deco" href="${pageContext.request.contextPath}/member/buSignupForm">사업자 회원가입</a>
						</div>
					</div>
				</form>
				<div style="margin : 100px 0 0 0;"></div>
			</div>
			<!-- 사업자 로그인 폼 end -->
		</div>
	</div>
	
	<%@include file="../common/memberfooter.jsp" %>