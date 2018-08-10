<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/commons/public.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<script src="${root}/js/board.js"></script>



<!-- body start -->
	<section id="container">

		<!--sidebar start-->
		<!--sidebar end-->

		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<div class="table-agile-info">
					<div class="row">
						

						<!-- 2단 -->
						<div class="col-lg-12">
							<div class="panel panel-default">
								<div>
								
									<table class="table" ui-jq="footable"
										ui-options='{
								        "paging": {
								          "enabled": true
								        },
								        "filtering": {
								          "enabled": true
								        },
								        "sorting": {
								          "enabled": true
								        }}' >
									     	<form id="writeForm" name="writeForm" method="post" action="" style="margin: 0px">
											<div id="attach_file_hdn"></div>
											
											<input type="hidden" name="bcode" value="${bcode}">
											<input type="hidden" name="pg" value="1">
											<input type="hidden" name="key" value="">
											<input type="hidden" name="word" value="">
								        <tbody>
								        	<tr>
								        		<th></th>
								        		<th colspan="2">
								        			<div align="center">
														<img src="${root}/images/logo.png" align="center" width="100" height="100">
													</div>
								        		</th>
								        		<!-- <th></th>  -->
								        		<th colspan="4">
								        			<div align="center" >
														<h6>즐거운 삶이 가득한 회사</h6>
													</div>
														<br>
													<div align="center" >
														<h2>KITRI 주식 회사</h2>
													</div>
								        		</th>
								        		<!-- <th></th> --> 
								        		<!-- <th></th> -->
								        		<th colspan="2">
								        			<div align="center">
														<img src="${root}/images/logo.png" align="center" width="100" height="100">
													</div>
								        		</th>
								        		<!-- <th></th>  -->
								        		<th></th>
											</tr>
											
								        	<tr>
								        		<th></th>
								        		<th>구분</th>
								        		<th colspan="7">
								        			<input type="radio" name="div_apv_sq" value="1" checked="checked"> 일반
								        			<input type="radio" name="div_apv_sq" value="2"> 협조
								        			<input type="radio" name="div_apv_sq" value="4"> 기타								        			
								        		</th>
								        		<!-- <th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th> -->
								        		<th></th>  
											</tr>
								        	<tr>
								        		<th></th>
								        		<th>(경유)</th>
								        		<th colspan="7"></th>
								        		<!-- <th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>-->
								        		<th></th>
											</tr>
								        	<tr>
								        		<th></th>
								        		<th>제목</th>
								        		<th colspan="7"><input type="text" class="form-control" name="apv_nm"></th>
								        		<!-- <th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>-->
								        		<th></th>
											</tr>
								        	<tr>
								        		<th colspan="10">
								        			<div>
														<img src="${root}/images/stick.png" align="center" width="100%" height="15%">
													</div>
								        		</th>
								        		<!-- <th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>  -->
											</tr>		
											<tr>
								          		<!-- 아래에 썸머노트 rink와 script있음 -->
								           		<td colspan="10"><textarea id="summernote" name="content"></textarea>
								           		</td>
								          	</tr>
								          	
								          	<tr>
								           		<td colspan="10">
									         		 <form action="" method="post"  name="">
												  		<input type="file" name="FileName">
											    	</form>
												</td>
								         	 </tr>
 												
								        	<tr>
								        		<th colspan="10">
								        			<div>
														<img src="${root}/images/stick.png" align="center" width="100%" height="15%">
													</div>
								        		</th>
								        		<!-- <th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>  -->
											</tr>

											<tr>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
											</tr>																																																			        		
											<tr>
								        		<th></th>
								        		<th>협조자</th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
											</tr>									        
											<tr>
								        		<th></th>
								        		<th>시행</th>
								        		<th colspan="4"></th>
								        		<!-- <th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th> -->
								        		<th></th>
								        		<th></th>
								        		<th></th>
											</tr>																																																			        		
											<tr>
								        		<th></th>
								        		<th>우</th>
								        		<th></th>
								        		<th colspan="4"></th>
								        		<!-- <th></th>
								        		<th></th>
								        		<th></th> 
								        		<th></th> -->
								        		<th colspan="2">/www.kitri.com</th>
								        		<!-- <th></th>  -->
											</tr>								        
											<tr>
								        		<th></th>
								        		<th>전화</th>
								        		<th>-</th>
								        		<th></th>
								        		<th>전송</th>
								        		<th>-</th>
								        		<th colspan="2">/1234@kitri.com</th>
								        		<!-- <th></th> -->
								        		<th>/</th>
								        		<th></th>
											</tr>									        
								        </form>
										</tbody>
									</table>
								</div>
							</div>

							<div class="w3ls_head">
								<input type="button" value="결재상신" class="btn btn-info" id="registerBtn" name="registerBtn">
								<input type="button" value="취소" class="btn btn-info">
							</div>
						</div>
					</div>
				</div>
		</section>
	<!-- </section> 2개는 template.jsp에 위치 -->

<!-- summernote -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.js"></script>

<script type="text/javascript">
  $(function() {
    $('#summernote').summernote({
      height: 300,         
      minHeight: null,      
      maxHeight: null,     
      lang: 'ko-KR'      
    });
  });
</script>

<script type="text/javascript">
control = "${root}/approval";
initPath();

$(document).ready(function() {
	$("#registerBtn").click(function() {
		if($("#apv_nm").val() == "") {
			alert("제목입력!!!");
			return;
		} else if($("#content").val() == "") {
			alert("내용입력!!!");
			return;
		} else {
			$("#writeForm").attr("method", "post").attr("action", writepath).submit();
		}
	});
});
</script>


<!-- 완성후 삭제 예정 -->
<!-- 
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
    text-align: left;    
}
</style>	
 -->
	