<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../common/memberheader.jsp" %>
<div id="wrap" align="center">
	<h1>추천 여행지 소개</h1>	
		<table>
		<tr>
			<th style="text-align:center;width:60px;">명  칭</th>
			<td><input type="text" name="trip_name" value="${trip.trip_name}" size="60"></td>
		</tr>
		<tr>
			<th style="text-align:center;">전화번호</th>
			<td><input type="text" name="trip_number" value="${trip.trip_number}" size="60"></td>
		</tr>
		<tr>
			<th style="text-align:center;">주  소</th>
			<td><input type="text" name="area_code3" value="${trip.area_code3}" size="60"></td>
		</tr>
		<tr>
			<th style="text-align:center;">내  용</th>
			<td><input type="text" name="trip_content" value="${trip.trip_content}" size="60"></td>
		</tr>
		<tr>
			<th style="text-align:center;">사  진</th>
			<td>
			<div class="panel-body">
       			<div class="form-group uploadDiv">
					<input type="file" name="uploadFile"><br>
				</div>
				<div class='uploadResult'></div>
			</div>
			</td>
		</tr>
		</table>
			<form id="operForm" method="get" action="/trip/list">
	<button data-oper='list' class= "btn btn-default" onclick="location.href='${pageContext.request.contextPath}/trip/list'">목록</button>
	<input type="hidden" id="trip_code" name="trip_code" value="${trip.trip_code }">
	</form>
</div>
<script type="text/javascript">
$(document).ready(function(){
	var operForm = $("#operForm");
	
	$("button[data-oper='list']").on("click", function(e){
		operForm.find('#trip_code').remove();
		operForm.attr("action", "/trip/list");
		operForm.submit();
	});
});	
</script>
<%@ include file="../common/memberfooter.jsp" %>
