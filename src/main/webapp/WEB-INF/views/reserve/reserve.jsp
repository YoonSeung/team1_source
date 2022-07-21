<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@include file="../common/memberheader.jsp" %>
<%
	// 로그인 하지 않았을 시 로그인 페이지로 이동
/* 	if(session.getAttribute("u_idKey")==null){
		response.sendRedirect("../login/login.jsp");
	} */
	// 오늘 날짜를 나타내는 변수 생성
	Date today = new Date();
	SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
	String now = simpleDateFormat.format(today);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>객실 예약 : 날짜, 인원 선택</title>
	<script type="text/javascript" src="../script/script.js?ver=1"></script>
	<link rel="stylesheet" href="../css/reserveCSS.css">
	<style>
		#btn{
			margin-top:15px;
			margin-bottom:15px;
			background-color: #382f24;
		    width:120px;
		    height:50px;
		    border: none;
		    font-size:medium;
		    color:#f1ebd5;
			}
	</style>
</head>

<body>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>        

                <!-- Room Start -->

<div class="container" style="width: 800px; margin-top: 100px;">
<h2 style="text-align: center;">숙소예약</h2>
  <form role="form" id="frm" name="frm" method="get" action="/business/get">
  	<input type="hidden" name="reserve" value="${myhotel.co_code}">

  					<td>
						<div class="panel-body">
							<div class="form-group uploadDiv">											
							</div>	        
				        <div class='hotelResult'> 
				          <ul>

				          </ul>
				        </div>

				      </div>
					</td>
    <div class="mb-3 mt-3">
      <label>숙소 이름 : ${modify.co_title} </label>    
       <div class="mb-3" style="margin-top: 20px;">
       <label>숙소 종류 :</label>
   <select name="co_type">
						<c:choose>
							<c:when test='${modify.co_type=="1" }'>
							<option value="호텔" selected="selected">호텔</option>
							<option value="모텔">모텔</option>
							<option value="리조트">리조트</option>
							<option value="펜션">펜션</option>
						</c:when>						 
							<c:when test='${modify.co_type=="2" }'>
							<option value="호텔">호텔</option>
							<option value="모텔" selected="selected">모텔</option>
							<option value="리조트">리조트</option>
							<option value="펜션">펜션</option>
						</c:when>												
							<c:when test='${modify.co_type=="3" }'>
							<option value="호텔">호텔</option>
							<option value="모텔">모텔</option>
							<option value="리조트" selected="selected">리조트</option>
							<option value="펜션">펜션</option>
						</c:when>						
							</c:choose>
						</select>
    </div>
    </div>
    <div class="mb-3">
      <label>숙소 위치</label>
      <input type="text" class="form-control" id="area_code3" name="area_code3" value="${modify.area_code3}" required>
    </div>


    <div style="clear:both;"></div>


    <label style=" margin-bottom: 10px;">숙소사진&nbsp;&nbsp;&nbsp;</label>
   <div class="panel-body">
	        			<div class="form-group uploadDiv">
						</div>
						<div class='uploadResult'> 
						<ul>

		          			</ul>
		          		</div>
		          		</div>

   <br>
		<input type="hidden" id="co_code" name="co_code" value="${modify.co_code }">

</form>
</div>

	<br/><br />
		<table align="center" class="reservelist1">
			<tr id="list1">
				<td id="step1">날짜,인원 선택</td>
				<td id="step2">객실 선택</td>
				<td id="step3">옵션 선택</td>
			</tr>
		</table>
		
		<form action="reserve" method="get" name="reserve">
			<table width="80%" align="center" class="reserve1">
				<tr align="center" style="color:#a0a0a0; font-weight:bold;">
					<td>체크인</td>
					<td>체크아웃</td>
					<td width="10%">성인</td>
					<td width="10%">어린이</td>
				</tr>
				<tr align="center">
					<td><input type="date" name="r_checkin" min='<%=now %>' /></td>
					<td><input type="date" name="r_checkout" /></td>
					<td><input type="number" name="r_adults" min="1" value="1"/></td>
					<td><input type="number" name="r_kids" value="0" min="0" /></td>
					<td><input type="submit" value="검색" id="btn" onclick="return reservationCheck()"/></td>
				</tr>
				<tr align="center">
					<td colspan="5">예약을 원하는 날짜,인원을 선택해주세요</td>
				</tr>
		</table>
		</form>
		
		<br /><br /><br /><br /><br /><br /><br />
	
</body>
</html>
<%@include file="../common/memberfooter.jsp" %>