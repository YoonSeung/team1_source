<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./adminHeader.jsp" %>

	<div id="layoutSidenav_content">
		<main>
			<div class="container-fluid px-4">
				<h1>회원 정보 관리</h1>
				<h5>총 <span class="count">${mm_count}</span>명</h5>
				<table>
					<tr>
						<th>이메일</th>
						<th>이름</th>
						<th>성별</th>
						<th>전화번호</th>
						<th>가입일</th>
						<th>기능</th>
					</tr>
					<c:forEach var="member" items="${mm_list}">
						<tr>
							<td><c:out value="${member.mm_email}" /></td>
							<td><c:out value="${member.mm_name}" /></td>
							<td><c:out value="${member.mm_gender}" /></td>
							<td><c:out value="${member.mm_phone}" /></td>
							<td><fmt:formatDate pattern="yyyy-MM-dd" value="${member.regdate}" /></td>
							<td><a href='/admin/mm_delete?mm_email=<c:out value="${member.mm_email}" />' onclick="return confirm('정말 삭제하시겠습니까?');" class="btn">삭제</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</main>
	</div>

<%@include file="./adminFooter.jsp"%>