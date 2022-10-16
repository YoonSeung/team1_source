<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./adminHeader.jsp" %>

	<div id="layoutSidenav_content">
		<main>
			<div class="container-fluid px-4">
				<h1>숙소 관리</h1>
				<h5>총 <span class="count">${bu_count}</span>명</h5>
				<table>
					<tr>
						<th>사업자</th>
						<th>전화번호</th>
						<th>숙소이름</th>
						<th>주소</th>
						<th>가입일시</th>
						<th>삭제</th>
					</tr>
					<c:forEach var="business" items="${bu_list}">
						<tr>
							<td><c:out value="${business.co_name}" /></td>
							<td><c:out value="${business.co_number}" /></td>
							<td><c:out value="${business.co_title}" /></td>
							<td><c:out value="${business.area_code3}" /></td>
							<td><fmt:formatDate pattern="yyyy-MM-dd" value="${business.regdate}" /></td>
							<td><a href='/admin/bu_delete?co_code=<c:out value="${business.co_code}" />' onclick="return confirm('정말 삭제하시겠습니까?');" class="btn">삭제</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</main>
	</div>

<%@include file="./adminFooter.jsp"%>