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
                <button type="button" class="btn btn-warning btn-lg" style="float:right;" onclick="location.href='/business/hotelinsert';">등록</button>
                    <h6 class="section-title text-center text-primary text-uppercase">Our Hotel</h6>
                    <h1 class="mb-5">My<span class="text-primary text-uppercase">Room</span></h1>
                </div>

<div class="container" style="margin-top:100px">
<table class="table" style="width: 75%; margin:10px auto; margin-top: 50px;">
    <tbody>
    <c:if test="${empty room}">
    	<h1>등록된 객실이 없습니다.</h1>
    	</c:if>
    <c:if test="${not empty room}">
    <c:forEach var="room" items="${room}">
	      <tr style="width: 100%">
	        <td style="width: 60%">

	        <a href="${pageContext.request.contextPath}/room/roominfo?ro_num=${room.co_code}">
	        <input type="hidden" name="pic_num" value="${myhotel.co_name}">
	        	<c:set var="ro_num" value="${myhotel.co_number}" />
	        	<img class="roomlist_main-img" src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img3.webp">
						<td>
						<div class="panel-body">        
				        <div class='hotelResult'> 
				          <ul>
				          
				          </ul>
				        </div>
				        
				      </div>
					</td>
	        </a></td>
	        <td class= "roomlist_box" style="width: 40%">
				<div>
				<a class="btn btn-danger" style="float:right;" href='/business/delete?co_code=<c:out value="${room.co_code }"/>'>삭제</a>
				<a class="btn btn-warning" style="float:right;" href='/business/modify?co_code=<c:out value="${room.co_code }"/>'>수정</a>
					<h3>${room.ro_name}</h3>
					<h6>최대 인원수 : ${room.ro_max}</h6>
			
				</div>
				<div class="roomlist_bottom">
					<h4><fmt:formatNumber value="${room.ro_price}" pattern="#,###" />원</h4>
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
<input type="hidden" id="co_code" name="co_code" value='${ro.co_code }'>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
							aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">Modal title</h4>
				</div>
				<div class="modal-body">처리가 완료되었습니다.</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
			<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
        <!-- Room End -->
<script>
$(document).ready(function(){
	(function(){
		var co_code = '<c:out value="${room.co_code}"/>';
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