<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./adminHeader.jsp" %>

	<div id="layoutSidenav_content">
		<main>
			<div class="container-fluid px-4">
				<h1>일별 총 매출관리</h1>
				
				<form action="/admin/monthlySales" method="post">
					<select name="year">
						<option value="2021">2021</option>
						<option value="2022">2022</option>
					</select>
					<select name="month">
						<option value="01">1월</option>
						<option value="02">2월</option>
						<option value="03">3월</option>
						<option value="04">4월</option>
						<option value="05">5월</option>
						<option value="06">6월</option>
						<option value="07">7월</option>
						<option value="08">8월</option>
						<option value="09">9월</option>
						<option value="10">10월</option>
						<option value="11">11월</option>
						<option value="12">12월</option>
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
				        labels: ['1일', '2일', '3일', '4일', '5일', '6일', '7일', '8일', '9일', '10일', '11일', '12일',
				        		'13일', '14일', '15일', '16일', '17일', '18일', '19일', '20일', '21일', '22일', '23일', '24일',
				        		'25일', '26일', '27일', '28일', '29일', '30일', '31일'],
				        datasets: [{
				          label: '매출 현황',
				          data: ['170000', '170000', '170000', '270000', '500000', '170000', '370000', '170000', '170000', '270000', '170000', '170000',
				        		'170000', '170000', '271000', '364000', '153000', '528000', '200000', '170000', '170000', '270000', '342700', '242300',
				        		'170000', '170000', '122000', '242000', '425000', '3243000', '317000'],
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