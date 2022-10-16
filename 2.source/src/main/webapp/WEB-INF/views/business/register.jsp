<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ include file="../business/businessheader.jsp" %>


<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>        
                <!-- Room Start -->

        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="section-title text-center text-primary text-uppercase">Our Hotel</h6>
                    <h1 class="mb-5">My<span class="text-primary text-uppercase">Hotel</span></h1>
                </div>

<div class="container" style="width: 800px; margin-top: 100px;">
<h2 style="text-align: center;">숙소등록</h2>
  <form role="form" name="frm" method="post" action="/business/register">
    <div class="mb-3 mt-3">
      <label>숙소 이름 : </label>
      <input type="text" class="form-control" id="co_title" name="co_title" required>
       <div class="mb-3" style="margin-top: 20px;">
       <label>숙소 종류 :</label>
    <select id="co_type" name="co_type">
    	<option value="1">호텔</option>
    	<option value="2">모텔</option>
    	<option>리조트</option>
    </select>
     <div class="mb-3" style="margin-top: 20px;">
       <label>객실 종류 :</label>
    <select id="ro_type" name="ro_type">
                     <option value="1">디럭스룸</option>
                     <option value="2">스위트룸</option>
                     <option value="3">싱글룸</option>
    </select>
    </div>
     <div class="mb-3">
      <label>최대 인원수</label>
      <input type="number" class="form-control" id="ro_max" name="ro_max" required pattern="[0-9]+" required placeholder="숫자만 입력하세요">
    </div>
    </div>
     <div class="mb-3">
      <label>객실 가격</label>
      <input type="number" class="form-control" id="ro_price" name="ro_price" required pattern="[0-9]+" required placeholder="숫자만 입력하세요">
    </div>
    <div class="mb-3">
      <label>숙소 위치</label>
      <input type="text" class="form-control" id="area_code3" name="area_code3" required>
    </div>
    <div class="mb-3" >
    	<label style=" margin-bottom: 10px;" >숙소 소개&nbsp;&nbsp;&nbsp;</label>
   		<textarea rows="10" cols="100" name="ro_content"required></textarea>
    </div>
       <label>대표자 이름 : </label>
      <input type="text" class="form-control" id="co_name" name="co_name" required>
    </div>
    <div class="mb-3">
      <label>대표자 번호</label>
      <input type="number" class="form-control" id="co_number" name="co_number"  pattern="[0-9]+" required placeholder="숫자만 입력하세요">
    </div>

    <div style="clear:both;"></div>


    <label style=" margin-bottom: 10px;">숙소 사진등록&nbsp;&nbsp;&nbsp;</label>
   <div class="panel-body">
	        			<div class="form-group uploadDiv">
							<input type="file" name="uploadFile"><br>
						</div>
						<div class='uploadResult'> 
						<ul>

		          			</ul>
		          		</div>
		          		</div>

   <br>
		<button type="submit" class="default_btn rounded mt-1" data-oper='register'>등록</button>
		<button type="reset" class="default_btn rounded mt-1">취소</button>
		<button type="submit" class="default_btn rounded mt-1" onclick="location.href='/business/myhotel';">목록</button>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>
</div>
</div>
</div>
<script>
$(document).ready(function(){
	var formObj = $("#frm");
	
	$("button[data-oper='list'").on("click", function(e){
		formObj.find("#co_code").remove();
		formObj.attr("action", "/business/myhotel").attr("method", "get");
		formObj.empty();
		formObj.submit();
	});
	
	(function(){
		var co_code = '<c:out value="${modify.co_code}"/>';
		$.getJSON("/business/getAttachList", {co_code:co_code}, function(arr){
			console.log(arr);
				
				var str="";
				
				$(arr).each(function(i, attach){					
					var fileCallPath =  encodeURIComponent("/"+attach.uuid +"_"+attach.fileName);
					
					console.log(fileCallPath);
					str += "<li data-path='"+attach.uploadPath+"'";
					str +=" data-uuid='"+attach.uuid+"' data-filename='"+attach.fileName+"' data-type='"+attach.fileType+"'";
					str +=" ><div>";
					str += "<img src='/display?fileName="+fileCallPath+"'>";
					str += "</div>";
					str +"</li>";
				});
				
				$(".hotelResult ul").html(str);
			});
		})();//end function
	
	
});
</script>

<script>
$(document).ready(function(){
	var formObj = $("form[role='form']");
	var csrfHeaderName = "${_csrf.headerName}";
	var csrfTokenValue = "${_csrf.token}";
	
	$("button[data-oper='modify']").on("click", function(e){
		e.preventDefault();
		console.log("submit clicked");
		
		var str = "";
		
		$(".uploadResult ul li").each(function(i, obj){
			var jobj = $(obj);
			
			console.log(jobj.data("type"));
			
			str += "<input type='hidden' name='attachList["+i+"].fileName' value='"+jobj.data("filename")+"'>";
			str += "<input type='hidden' name='attachList["+i+"].uuid' value='"+jobj.data("uuid")+"'>";
			str += "<input type='hidden' name='attachList["+i+"].uploadPath' value='"+jobj.data("path")+"'>";
			str += "<input type='hidden' name='attachList["+i+"].fileType' value='"+jobj.data("type")+"'>";
		});
		
		formObj.append(str).submit();
	});
	
	var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
	var maxSize = 5242880; //5MB
	
	function checkExtendsion(fileName, fileSize){
		if(fileSize >= maxSize){
			alert("파일 사이즈 초과");
			return false;
		}
		
		if(regex.test(fileName)){
			alert("해당 종류의 파일은 업로드할 수 없습니다.");
			return false;
		}
		
		return true;
	}
	
	$("input[type='file']").change(function(e){
		var formData = new FormData();
		var inputFile = $("input[name='uploadFile']");
		var files = inputFile[0].files;
		
		
		for(var i=0; i<files.length; i++){
			if(!checkExtendsion(files[i].name, files[i].size)){
				return false;
			}
			
			formData.append("uploadFile", files[i]);
		}
		
		$.ajax({
			url: '/uploadAjaxAction',
			processData: false,
			contentType: false,
			beforeSend: function(xhr) {
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			},
			data: formData,
			type:'POST',
			dataType: 'json',
			success: function(result){
				console.log(result);
				showUploadFile(result);
			}
		});
		
	});
	
	function showUploadFile(uploadResultArr){
		if(!uploadResultArr || uploadResultArr.length ==0)
		{
			return;	
		}
		
		var uploadURL = $(".uploadResult ul");
		var str = "";
		
		
		$(uploadResultArr).each(function(i, obj){
			var fileCallPath =  encodeURIComponent("/s_"+obj.uuid +"_"+obj.fileName);
			console.log(fileCallPath);
			str += "<li data-path='"+obj.uploadPath+"'";
			str +=" data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'><div>";
			str += "<span> "+ obj.fileName+"</span>";
			str += "<button type='button' data-file=\'"+fileCallPath+"\' "
			str += "data-type='image' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
			str += "<img src='/display?fileName="+fileCallPath+"'>";
			str += "</div>";
			str +"</li>";
		});
		
		uploadURL.append(str);
	}
	
	$(".uploadResult").on("click", "button", function(e){
		var targetFile = $(this).data("file");
		//var type = $(this).data("type");
		
		var targetLi = $(this).closest("li");
		
		$.ajax({
			url: '/deleteFile',
			beforeSend: function(xhr) {
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			},
			data: {fileName: targetFile},
			dataType:'text',
			type:'POST',
			success: function(result){
				alert(result);
				targetLi.remove();
			}
		});
	});
});
</script>
<%@ include file="../business/businessfooter.jsp" %>