<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ include file="../business/businessheader.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>    




        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <button type="button" class="btn btn-warning btn-lg" style="float:right;" onclick="location.href='/business/register';">등록</button>
                    <h6 class="section-title text-center text-primary text-uppercase">Our Hotel</h6>
                    <h1 class="mb-5">My<span class="text-primary text-uppercase">Hotel</span></h1>
                </div>

<div class="container" style="margin-top:100px">
<table class="table" style="width: 75%; margin:10px auto; margin-top: 50px;">
    <tbody>
    <c:if test="${empty myhotel}">
    	<h1>등록된 숙소가 없습니다.</h1>
    	</c:if>
    <c:if test="${not empty myhotel}">
    <c:forEach var="myhotel" items="${myhotel}">
	      <tr style="width: 100%">
	        <td style="width: 60%">


	        <a href="${pageContext.request.contextPath}/room/roominfo?ronum=${myhotel.co_code}">
	        <input type="hidden" name="pic_num" value="${myhotel.co_name}">

	        	<c:set var="ro_num" value="${myhotel.co_number}" />
	        	<img class="roomlist_main-img"src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img3.webp">
						<td>

						<div class="roomlist_main-img">        
				        <div class='hotelResult'> 
				          <ul>

				          </ul>
				        </div>

				      </div>
					</td>
	        </a></td>
	        <td class= "roomlist_box" style="width: 60%">
				<div>
				<a class="btn btn-danger" style="float:right;" href='/business/delete?co_code=<c:out value="${myhotel.co_code }"/>'>삭제</a>
				<a class="btn btn-warning" style="float:right;" href='/business/modify?co_code=<c:out value="${myhotel.co_code }"/>'>수정</a>
					<h3>${myhotel.co_title}</h3>
					<h6>숙소위치 : ${myhotel.area_code3}</h6>
					<h6><c:choose>
					         <c:when test = '${myhotel.ro_type=="1"}'>
					            <h6>객실종류 : 디럭스룸</h6>
					         </c:when>
					
					         <c:when test = '${myhotel.ro_type== "2" }'>
					            <h6>객실종류 : 스위트룸</h6>
					         </c:when>
					
					         <c:otherwise>
					           <h6>객실종류 : 싱글룸</h6>
					         </c:otherwise>
					</c:choose></h6>
					<h6>최대인원수 :${myhotel.ro_max}</h6>
					<h6>소개 :${myhotel.ro_content}</h6>
				</div>
				<div class="roomlist_bottom">
				     <c:choose>
					         <c:when test = '${myhotel.co_type=="1"}'>
					            <h4>호텔</h4>
					         </c:when>
					
					         <c:when test = '${myhotel.co_type== "2" }'>
					            <h4>모텔</h4>
					         </c:when>
					
					         <c:otherwise>
					           <h4>리조트</h4>
					         </c:otherwise>
					</c:choose>
				</div>
			</td>
	      </tr>
      </c:forEach>
      </c:if>
    </tbody>
  </table>
</div>
                        </div>
                    </div>
<input type="hidden" id="co_code" name="co_code" value='${get.co_code }'>
        <!-- Room End -->
<script>
$(document).ready(function(){
	(function(){
		var co_code = '<c:out value="${get.co_code}"/>';
		$.getJSON("/business/getAttachList", {co_code:co_code}, function(arr){
			console.log(arr);
				
				var str="";
				
				
				$(arr).each(function(i, attach){					
					var fileCallPath =  encodeURIComponent("/"+attach.uuid +"_"+attach.fileName);
					
					console.log(fileCallPath);
					str += "<li data-path='"+attach.uploadPath+"'";
					str +=" data-uuid='"+attach.uuid+"' data-filename='"+attach.fileName+"' data-type='"+attach.fileType+"'";
					str +=" ><div>";
					str += "<img src='/display?fileName="+fileCallPath+"'>";
					str += "</div>";
					str +"</li>";
				});
				
				$(".hotelResult ul").html(str);
			});
		})();//end function
	
	
});
</script>
<%@ include file="../business/businessfooter.jsp" %>