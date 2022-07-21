<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../common/memberheader.jsp" %>
<div id="wrap" align="left">
	<h1>추천 여행지 목록</h1>
	<table>
		<tr>
			<td colspan=6 style="border:white; text-align:right">
				<div>
					<button id="regBtn" type="button" class="btn btn-xs pull-right">
						추천 여행지 등록
					</button>
				</div>
			</td>
		</tr>
		<tr>
			<th style="text-align: center;">번호</th>
			<th style="text-align: center;">명칭</th>
			<th style="text-align: center;">전화번호</th>
			<th style="text-align: center;">내용</th>
			<th style="text-align: center;">주소</th>
			<th style="text-align: center;">수정</th>
			<th style="text-align: center;">삭제</th>
		</tr>
		<c:forEach var="trip" items="${trip }">
			<tr class="record">
				<td><c:out value="${trip.trip_code}" /></td>	
				<td style="text-align: center;">
						<a class="trip" href='/trip/read?code=<c:out value="${trip.trip_name }"/>'>${trip.trip_name}</a>
					</td>
					<td style="text-align: center;">${trip.trip_number }</td>
					<td style="text-align: center;">${trip.trip_content }</td>
					<td style="text-align: center;width=:100px;">${trip.area_code3 }</td>
					<td style="text-align: center;width=:100px;">
						<a class="trip" href='/trip/modify?code=<c:out value="${trip.trip_code }"/>'>정보수정</a>
					</td>
					<td style="text-align: center;width=:100px;">
						<a class="trip" href='/trip/delete?code=<c:out value="${trip.trip_code }"/>'>정보삭제</a>
					</td>
				</tr>
				<form id='operForm' action="/trip/modify" method="get">
					<input type="hidden" id="code" name="code" value='<c:out value="${trip.trip_code }"/>'>
				</form>
			</c:forEach>
		</table>
	</div>
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
<script>
	$(document).ready(function(e){
		var result = '<c:out value="${result}"/>';
		
		var operForm = $("#operForm");
		
		checkModal(result);
		
		$("#regBtn").on("click", function(){
			self.location = '/trip/register';
		});
		
		history.replaceState({}, null, null);
		
		function checkModal(result){
			if(result === ''){
				return;
			}
			
			if(result === 'insert'){
				$(".modal-body").html("추천 여행지가 등록되었습니다.");
			}
			
			$("#myModal").modal("show");
		}
	});
</script>
<%@ include file="../common/memberfooter.jsp" %>
	