<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./adminHeader.jsp" %>

	<div id="layoutSidenav_content">
		<main>
			<div class="container-fluid px-4">
				<h1>월별 총 매출관리</h1>
				
				<form>
					<select name="year">
						<option value="2021">2021</option>
						<option value="2022">2022</option>
					</select>
					<input type="submit" value="검색">
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				</form>
				
				<div class="container">
				    <canvas id="myChart"></canvas>
				  </div>
				
				  <!-- 부트스트랩 -->
				  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
				    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
				    crossorigin="anonymous"></script>
				  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
				    integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
				    crossorigin="anonymous"></script>
				  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
				    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
				    crossorigin="anonymous"></script>
				  <!-- 차트 -->
				  <script>
				    var ctx = document.getElementById('myChart');
				    var myChart = new Chart(ctx, {
				      type: 'bar',
				      data: {
				        labels: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
				        datasets: [{
				          label: '매출 현황',
				          data: ['3423000', '5402000', '3710000', '4201000', '4270000', '4320000', '7423000', '5402000', '3710000', '2201000', '1270000', '4320000'],
				          backgroundColor: '#ffc107'
				        }]
				      },
				      options: {
				        scales: {
				          yAxes: [{
				            ticks: {
				              beginAtZero: true
				            }
				          }]
				        }
				      }
				    });
				
				  </script>
			</div>
		</main>
	</div>

<%@include file="./adminFooter.jsp"%>