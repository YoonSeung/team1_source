<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@include file="../common/memberheader.jsp" %>

<body>
	<div class=default_width>
		<div class="search_bottom_box mt-3">
			
			<%-- <!-- 상세조건 사이드바 -->
			<div class="search_filter_box">
				<h3>상세조건</h3>
				<hr class="gray_line">
				<form action="${pageContext.request.contextPath}/search/search" method="get" name="f">
					<input type="hidden" name="co_code" value="${co_code}">
					<div>
						<input type='date' id="checkin" min="${today}" value="${searchDTO.checkin }" class="main_checkin_1" name="checkin" onchange="dateChk()" style="padding-left:0px; width:100%;" required>
					</div>
					<div>
						<input type='date' id="checkout" min="${tomorrow }" value="${searchDTO.checkout }" class="main_checkout_1" name="checkout" onchange="dateChk()" style="padding-left:0px;border: none;width:100%;" required>
					</div>
					
					<hr class="gray_line">
					<strong class="search_strong_font">인원 수</strong>
					<input type="hidden" name="ro_count" value="${searchDTO.ro_count}">
					<select id="select_ro_count" class="form-select form-select-lg" onchange="change_ro_count()" style="border: none; padding-left:0px;">
						<option value="1" <c:if test="${searchDTO.ro_count == 1}">selected</c:if>>1</option>
						<option value="2" <c:if test="${searchDTO.ro_count == 2}">selected</c:if>>2</option>
						<option value="3" <c:if test="${searchDTO.ro_count == 3}">selected</c:if>>3</option>
						<option value="4" <c:if test="${searchDTO.ro_count == 4}">selected</c:if>>4</option>
					</select>
					
					<hr class="gray_line">
					<strong class="search_strong_font">검색</strong> <br>
					<input type=search class=search_text placeholder=지역,숙소명 name="bu_address" value="${searchDTO.bu_address}" style="padding-left:0px;" required>
					
					<div class=search_button_box>
						<div></div>
					</div>
					
					<hr class="gray_line">
					
					<div class=search_select_box>
						<div>
							<strong class="search_strong_font">숙소 유형</strong>
							<ul class="search_detail_ul">
								<li><input type="checkbox" name="bu_id" value="1" onclick="NoMultiChk(this)" 
									style="accent-color: #ffc107" <c:if test="${searchDTO.bu_id == 1}">checked</c:if>> 
									<label class="search_label_font">호텔</label>
								</li>
								<li><input type="checkbox" name="bu_id" value="2" onclick="NoMultiChk(this)" 
									style="accent-color: #ffc107" <c:if test="${searchDTO.bu_id == 2}">checked</c:if>> 
									<label class="search_label_font">모텔</label>
								</li>
								<li><input type="checkbox" name="bu_id" value="3" onclick="NoMultiChk(this)" 
									style="accent-color: #ffc107" <c:if test="${searchDTO.bu_id == 3}">checked</c:if>> 
									<label class="search_label_font">펜션</label>
								</li>
								<li><input type="checkbox" name="bu_id" value="4" onclick="NoMultiChk(this)" 
									style="accent-color: #ffc107" <c:if test="${searchDTO.bu_id == 4}">checked</c:if>> 
									<label class="search_label_font">리조트</label>
								</li>
							</ul>
						</div>
					</div>
					
					<hr class="gray_line">
					
					<div class="pricerangebox"> 
					<strong>가격 : </strong><p class="rangeresult"><fmt:formatNumber type="number" maxFractionDigits="0" value="${searchDTO.lowprice / 10000 }" /></p>만원 ~ 
					<p class="rangeresult2"><fmt:formatNumber type="number" maxFractionDigits="0" value="${searchDTO.highprice / 10000}" /></p>만원
					</div>
						<div class="middle">
							<div class="multi-range-slider">
								<input type="range" class="leftrangevalue" name="lowprice" id="input-left" min="10000" max="1500000" step="10000" value="${searchDTO.lowprice}">
								<input type="range" class="rightrangevalue" name="highprice" id="input-right" min="10000" max="1500000" step="10000" value="${searchDTO.highprice}">
								
								<div class="slider">
									<div class="track"></div>
									<div class="range"></div>
									<div class="thumb left"></div>
									<div class="thumb right"></div>
								</div>
							</div>
						</div>
						<div class="pricerangetextbox">
						<p class="pricerangetext">1만원</p><p class="pricerangetext2">150만원</p>
						</div>
					<button type=submit class=search_commit_button_size style="border: none;">적용</button>
				</form>
			</div>
			<!-- 상세조건 사이드바 끝 -->  --%>
			
			<!-- 숙소 리스트 -->
<div class="container" style="margin-top:100px">
<table class="table" style="width: 75%; margin:10px auto; margin-top: 50px;">
    <tbody>
    <c:if test="${empty myhotel}">
    	<h1>등록된 숙소가 없습니다.</h1>
    	</c:if>
    <c:if test="${not empty myhotel}">
    <c:forEach var="myhotel" items="${myhotel}">
	      <tr style="width: 100%">
	        <td style="width: 60%">


	        <a href="${pageContext.request.contextPath}/room/roominfo?ronum=${myhotel.co_code}">
	        <input type="hidden" name="pic_num" value="${myhotel.co_name}">

	        	<c:set var="ro_num" value="${myhotel.co_number}" />
	        	<img class="roomlist_main-img"src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img3.webp">
						<td>

						<div class="roomlist_main-img">        
				        <div class='hotelResult'> 
				          <ul>

				          </ul>
				        </div>

				      </div>
					</td>
	        </a></td>
	        <td class= "roomlist_box" style="width: 60%">
				<div>
					<h3>${myhotel.co_title}</h3>
					<h6>숙소위치 : ${myhotel.area_code3}</h6>
					<h6><c:choose>
					         <c:when test = '${myhotel.ro_type=="1"}'>
					            <h6>객실종류 : 디럭스룸</h6>
					         </c:when>
					
					         <c:when test = '${myhotel.ro_type== "2" }'>
					            <h6>객실종류 : 스위트룸</h6>
					         </c:when>
					
					         <c:otherwise>
					           <h6>객실종류 : 싱글룸</h6>
					         </c:otherwise>
					</c:choose></h6>
					<h6>최대인원수 :${myhotel.ro_max}</h6>
					<h6>소개 :${myhotel.ro_content}</h6>
				</div>
				<div class="roomlist_bottom">
				     <c:choose>
					         <c:when test = '${myhotel.co_type=="1"}'>
					            <h4>호텔</h4>
					         </c:when>
					
					         <c:when test = '${myhotel.co_type== "2" }'>
					            <h4>모텔</h4>
					         </c:when>
					
					         <c:otherwise>
					           <h4>리조트</h4>
					         </c:otherwise>
					</c:choose>
				</div>
			</td>
	      </tr>
      </c:forEach>
      </c:if>
    </tbody>
  </table>
</div>
			<!-- 숙소 리스트 끝 -->
			
		</div>
	</div>
</body>
<script>
// 가격 검색 범위 설정 (바디 위에 쓸 경우 오류)
var inputLeft = document.getElementById("input-left");
var inputRight = document.getElementById("input-right");

var thumbLeft = document.querySelector(".thumb.left");
var thumbRight = document.querySelector(".thumb.right");
var range = document.querySelector(".range");

function setLeftValue() {
	var _this = inputLeft,
		min = parseInt(_this.min),
		max = parseInt(_this.max);
	_this.value = Math.min(parseInt(_this.value), parseInt(inputRight.value) - 50000);
	var percent = ((_this.value - min) / (max - min)) * 100
	
	thumbLeft.style.left = percent + "%";
	range.style.left = percent + "%";
}
setLeftValue();

function setRightValue() {
	var _this = inputRight,
		min = parseInt(_this.min),
		max = parseInt(_this.max);
	_this.value = Math.max(parseInt(_this.value), parseInt(inputLeft.value) + 50000);
	var percent = ((_this.value - min) / (max - min)) * 100
	
	thumbRight.style.right = (100 - percent) + "%";
	range.style.right = (100 - percent) + "%";
}
setRightValue();

inputLeft.addEventListener("input", setLeftValue);
inputRight.addEventListener("input", setRightValue);
// 가격 검색 범위 설정 끝
// 검색 실시간 텍스트표시
var result = $(".rangeresult");
var slider = $(".leftrangevalue")
slider.on('input', function() {
    result.html( $(this).val() / 10000);
});
var result2 = $(".rangeresult2");
var slider2 = $(".rightrangevalue")
slider2.on('input', function() {
    result2.html( $(this).val() / 10000);
});
// 검색 실시간 텍스트 표시 끝
</script>
<%@include file="../common/memberfooter.jsp" %>