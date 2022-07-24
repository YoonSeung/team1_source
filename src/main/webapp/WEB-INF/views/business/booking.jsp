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
                    <h6 class="section-title text-center text-primary text-uppercase">Our Hotel</h6>
                    <h1 class="mb-5">My<span class="text-primary text-uppercase">Booking History</span></h1>
                </div>
                </div>
                </div>
                <div class="container" style="margin-top:100px">
	<div class="container" style="margin-top: 50px;">
	  <h2 style="text-align: center;">예약 내역</h2>
	<div style="margin-bottom: 100px;">
	<form id='searchForm' action="/business/booking" method='get' style=" margin:30px 0px auto; float: right;">
	  <select name='type'>
				<option value=""
					<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>--</option>
		<option value="T"
			<c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>방이름</option>
		<option value="C"
			<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>예약자이름</option>
		<option value="W"
			<c:out value="${pageMaker.cri.type eq 'W'?'selected':''}"/>>체크인</option>
		<option value="Z"
			<c:out value="${pageMaker.cri.type eq 'Z'?'selected':''}"/>>체크아웃</option>
		<option value="X"
			<c:out value="${pageMaker.cri.type eq 'X'?'selected':''}"/>>예약상태</option>
			<option value="Y"
			<c:out value="${pageMaker.cri.type eq 'Y'?'selected':''}"/>>숙소이름</option>
	</select> <input type='text' name='keyword'
		value='<c:out value="${pageMaker.cri.keyword}"/>' /> <input
		type='hidden' name='pageNum'
		value='<c:out value="${pageMaker.cri.pageNum}"/>' /> <input
		type='hidden' name='amount'
		value='<c:out value="${pageMaker.cri.amount}"/>' />
			<button class='btn btn-default'>검색</button>
	</form>
	</div>
	

	  <table class="table table-hover" style="margin-top: 30px; text-align: center;">
	    <thead>
	      <tr>
	      	<th>숙소 이름</th>
	     	<th>객실 이름</th>
	        <th>이용인원수</th>
	        <th>체크인</th>
	        <th>체크아웃</th>
	        <th>예약자이름</th>
	        <th>핸드폰번호</th>
	        <th>Email</th>
	        <th>예약상태</th>
	      </tr>
	    </thead>
	    <tbody>
	    <c:forEach var="b" items="${booking}" varStatus="i">
	      <tr>
	      <td>${b.co_title}</td>
	     	<td><c:choose>
	        		<c:when test="${b.ro_type == '1'}">디럭스</c:when>
	        		<c:when test="${b.ro_type == '2'}">스위트</c:when>
	        		<c:when test="${b.ro_type == '3'}">싱글</c:when>
	        	</c:choose></td>
	        <td>${b.ro_max}</td>
	        <td>${b.checkin}</td>
	        <td>${b.checkout}</td>
	     	<td>${b.mm_name}</td>
	        <td>${b.mm_phone}</td>
	        <td>${b.mm_email}</td>
	        <td>
	        	<c:choose>
	        		<c:when test="${b.bo_status == '1'}">예약 완료</c:when>
	        		<c:when test="${b.bo_status == '2'}">결제 취소</c:when>
	        		<c:when test="${b.bo_status == '3'}">이용 완료</c:when>
	        		<c:when test="${b.bo_status == '4'}">입실 완료</c:when>
	        	</c:choose>
	        </td>
	      </tr>
	    </c:forEach>  
	    </tbody>
	  </table>
	</div>
	
	<div class="container" style="justify-content: center;">
	<ul class="pagination" style="justify-content: center;">

	
<c:if test="${pageMaker.prev}">
<li class="paginate_button previous"><a
	href="${pageMaker.startPage -1}">Previous</a></li>
</c:if>

<c:forEach var="num" begin="${pageMaker.startPage}"
end="${pageMaker.endPage}">
<li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active":""} ">
	<a href="${num}">${num}</a>
</li>
</c:forEach>

<c:if test="${pageMaker.next}">
<li class="paginate_button next"><a
	href="${pageMaker.endPage +1 }">Next</a></li>
</c:if>


	</ul>
</div>
<!--  end Pagination -->
</div>

<form id='actionForm' action="/business/booking" method='get'>
	<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>

<input type='hidden' name='type'
	value='<c:out value="${ pageMaker.cri.type }"/>'> <input
type='hidden' name='keyword'
value='<c:out value="${ pageMaker.cri.keyword }"/>'>


</form>
<script type="text/javascript">
$(document)
.ready(
function() {


var actionForm = $("#actionForm");

$(".paginate_button a").on(
		"click",
		function(e) {

		e.preventDefault();

		console.log('click');

		actionForm.find("input[name='pageNum']")
				.val($(this).attr("href"));
actionForm.submit();
	});

$(".move")
.on(
		"click",
		function(e) {

			e.preventDefault();
			actionForm
					.append("<input type='hidden' name='bo_code' value='"
							+ $(this).attr(
									"href")
										+ "'>");
			actionForm.attr("action",
					"/business/booking");
			actionForm.submit();

				});

var searchForm = $("#searchForm");

$("#searchForm button").on(
		"click",
		function(e) {

			if (!searchForm.find("option:selected")
	.val()) {
alert("검색종류를 선택하세요");
		return false;
	}

	if (!searchForm.find(
			"input[name='keyword']").val()) {
		alert("키워드를 입력하세요");
		return false;
	}

	searchForm.find("input[name='pageNum']")
			.val("1");
	e.preventDefault();

	searchForm.submit();

});

});
</script>


<%@ include file="../business/businessfooter.jsp" %>