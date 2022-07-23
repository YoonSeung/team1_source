<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="../common/memberheader.jsp" %>



        <!-- Room Start -->
        <form action="${pageContext.request.contextPath}/search/motelsearch" method="get" name="f">     
        <div class="container-xxl py-5">
        
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="section-title text-center text-primary text-uppercase">모텔목록</h6>
                </div>
                
			<div class="container">
				<table class="table" style="width: 75%; margin:10px auto; margin-top: 50px;">
		    		<tbody>
		    			<c:forEach var="motel" items="${motel}">
		    				<input type='hidden' id='co_type' name='co_type' value="${motel.co_type}"/>
		         			<tr style="width: 100% height: 100%">
		           					<td>
			           					<div class="panel-body">			
											<div class='uploadResult2'>
											<img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img3.webp"
	            								class="w-100" style="border-top-left-radius: .3rem; border-top-right-radius: .3rem;"
	            								alt="Sample photo" >
											</div>
					
										</div><br>
									</td>
		           				
		           				<td class= "roomlist_box" style="width: 40%">
		            				<div>
		            					<h3>${motel.co_title}</h3>
										<h6>최대인원 : ${motel.ro_max}명</h6>
										<h6>${motel.ro_content}</h6>
									</div>
									<div class="roomlist_bottom">
										<h4><fmt:formatNumber value="${motel.ro_price}" pattern="#,###" />원</h4>
										 <input type="submit" class="btn btn-primary" value="예약">
										 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
									</div>
								</td>
							</tr>
							
			      		</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>    
</form>
        <!-- Room End -->
      
<script>
$(document).ready(function(){
	(function(){//기존 이미지 왼쪽에 뜨게 하기
		var code = '<c:out value="${movie.code}"/>';
		$.getJSON("/movie/getAttachList", {code: code}, function(arr){
			console.log(arr);
			
			var str="";
			
			$(arr).each(function(i, attach){
					var fileCallPath =  encodeURIComponent("/"+attach.uuid +"_"+attach.fileName);
					
					str += "<li data-path='"+attach.uploadPath+"'";
		               str +=" data-uuid='"+attach.uuid+"' data-filename='"+attach.fileName+"' data-type='"+attach.fileType+"'><div>";
		               str += "<img src='/display?fileName="+fileCallPath+"'>";
		               str += "</div>";
		               str +"</li>";
			});
			$(".uploadResult2 ul").html(str);
		});//end getjson
	})();//end function   
	
});	
</script>	

<%@include file="../common/memberfooter.jsp" %>