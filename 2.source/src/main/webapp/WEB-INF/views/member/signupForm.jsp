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
  
  
<script>

function inputCheck() {
	if( passCheck == false){
		const submit = document.getElementById("submit")
		submit.disabled = false
	} else {
		submit.disabled = true
	}
}

$(function(){//아이디 중복체크   
	$('#mm_email').blur(function(){    

		$.ajax({	     
			type:"POST",	     
			url:"checkSignup",	     
			data:{	            
				"mm_email":$('#mm_email').val()	     
				},	     
				success:function(data){	//data : checkSignup에서 넘겨준 결과값	            				
					
					if($.trim(data)=="YES"){					             
						if($('#mm_email').val()!=''){ 	               	
							alert("사용가능한 이메일입니다.");						              
						} 						       	
					}else{	               
						if($('#mm_email').val()!=''){	                  
							alert("중복된 이메일입니다.");	                  
							$('#mm_email').val('');	                  
							$('#mm_email').focus();	               
							}	            
						}	         
					}	    
				})   
	})});

$(function(){//비밀번호 확인	
	$('#pw2').blur(function(){	 
		if($('#mm_pass').val() == $('#pw2').val()){
			if($('#pw2').val()!=''){
				alert("비밀번호가 일치합니다");		
			}		 
		}
		  
		if($('#mm_pass').val() != $('#pw2').val()){	    	
			if($('#pw2').val()!=''){		    
				alert("비밀번호가 일치하지 않습니다.");	    	    
				$('#pw2').val('');	          
				$('#pw2').focus();	       
				}	    
			}	
	})  	   
});	
</script>

<section class="h-100 h-custom" style="background-color: #8fc4b7;">
	<div class="container py-5 h-100">
		<div class="row d-flex justify-content-center align-items-center h-100">
			<div class="col-lg-8 col-xl-6">
				<div class="card rounded-3">
          			<img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img3.webp"
            				class="w-100" style="border-top-left-radius: .3rem; border-top-right-radius: .3rem;"
            		alt="Sample photo">
            
          		<div class="card-body p-4 p-md-5">
            		<h3 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">고객 회원가입</h3>
						<form name='signupForm' id="signupForm" method="post" action="/member/signupForm" accept-charset="UTF-8">
						
						
							<div class="form-floating mt-3">
								  	<input type="email" name="mm_email" id="mm_email" class="form-control" required>
								  	<label><span>이메일(@형식으로 기입해주세요)</span></label>										  						  	
							</div>
							
							<div class="form-floating mt-3">
								<input type="tel" name="mm_phone" id="mm_phone" class="form-control form-control-lg" 
									id="mm_phone" placeholder="전화번호(- 빼고 작성해주세요)" pattern="[0-9]{11}" required>
									<label><span>전화번호(- 빼고 작성해주세요)</span></label>
							</div>

		
								<div class="form-floating mt-3">
									<input type="password" name="mm_pass" id="mm_pass" class="form-control form-control-lg mt-3" pattern="^(?=.*[a-zA-z])(?=.*[0-9]).{6,12}$" required>
									<label><span>비밀번호 - 대문자 혹은 소문자와 숫자를 합해 6자리 이상 12자리 이하</span></label>
								</div>

								
								<div class="form-floating mt-3">
									<input type="password" name="pw2" id="pw2" class="form-control form-control-lg mt-3" pattern="^(?=.*[a-zA-z])(?=.*[0-9]).{6,12}$" required>
									<label><span>비밀번호 확인</span></label>
								</div>
			
								<div class="form-floating mt-3">
									<input type="text" name="mm_name" class="form-control form-control-lg"  required>
									<label><span>이름</span></label>
								</div>
							<br>
							<tr>
								<th scope="row">성별</th>
								<td>
				                  <select name="mm_gender">
				                     <option value="M">남자</option>
				                     <option value="W">여자</option>
				                  </select>
               					</td>
            				</tr>
		
							<br>
							<div align="center"> 
								<button type='submit' class="btn btn-primary">회원가입</button>
								<button type="reset" class="btn btn-danger">초기화</button>  
							</div>
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>



	<%@include file="../common/memberfooter.jsp" %>