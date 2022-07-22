<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<body>
	<div id="wrap" align="center">
		<h1>추천 여행지 수정</h1>
		<form role="form" id="frm" name="frm" method="post" action="/trip/modify">
			<table>
				<tr>
					<td>
						<div class="panel-body">        
				        <div class='tripResult'> 
				          <ul>
				          
				          </ul>
				        </div>
				        
				      </div>
					</td>
					<td>
						<table>
							<tr>
							<th style="text-align:center;width:60px;">명  칭</th>
							<td><input type="text" name="trip_name" size="60"></td>
						</tr>
						<tr>
							<th style="text-align:center;">전화번호</th>
							<td><input type="text" name="trip_number" size="60"></td>
						</tr>
						<tr>
							<th style="text-align:center;">주  소</th>
							<td><input type="text" name="area_code3" size="60"></td>
						</tr>
						<tr>
							<th style="text-align:center;">내  용</th>
							<td><input type="text" name="trip_content" size="60"></td>
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
					</td>
				</tr>
			</table>
			<br>
			<button data-oper='modify' class="btn btn-default">수정</button>
			<button data-oper='list' class="btn btn-default">목록</button>
			<input type="hidden" id="code" name="code" value="${trip.trip_code }">
		</form>
	</div>
<script>
$(document).ready(function(){
	var formObj = $("#frm");
	
	$("button[data-oper='list'").on("click", function(e){
		formObj.find("#code").remove();
		formObj.attr("action", "/trip/list").attr("method", "get");
		formObj.empty();
		formObj.submit();
	});
	
	(function(){
		var code = '<c:out value="${trip.trip_code}"/>';
		$.getJSON("/trip/getAttachList", {code:code}, function(arr){
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
				
				$(".tripResult ul").html(str);
			});
		})();
	
	
});
</script>

<script>
$(document).ready(function(){
	var formObj = $("form[role='form']");
	
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
