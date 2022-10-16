<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./adminHeader.jsp" %>

	<div id="layoutSidenav_content">
		<main>
			<div class="container-fluid px-4">
				<h1>사업자 가입 승인</h1>
				<table>
					<tr>
						<th>사업자</th>
						<th>전화번호</th>
						<th>숙소이름</th>
						<th>주소</th>
						<th>승인</th>
						<th>거부</th>
					</tr>
					<tr>
						<td>홍길동</td>
						<td>01011112222</td>
						<td>길동호텔</td>
						<td>서울 강남구 신사동</td>
						<td><input type="radio" name="bu_check1" value="yes"></td>
						<td><input type="radio" name="bu_check1" value="no"></td>
					</tr>
					<tr>
						<td>가나다</td>
						<td>01012345678</td>
						<td>한글호텔</td>
						<td>서울 강남구 삼성동</td>
						<td><input type="radio" name="bu_check2" value="yes"></td>
						<td><input type="radio" name="bu_check2" value="no"></td>
					</tr>
				</table>
			</div>
		</main>
	</div>

<%@include file="./adminFooter.jsp"%>