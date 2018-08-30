<title>KITRI GROUPWARE</title>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/commons/public.jsp" %>
<%@ include file="/WEB-INF/views/commons/board_common.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- summernote -->
<link href="${root}/summernote0.8.9dist/dist/summernote-lite.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.css" rel="stylesheet">

	
<c:set var="root" value="${pageContext.request.contextPath}"/>

<!-- body start -->
<section id="container">
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<div class="table-agile-info">
				<div class="row">
					<div align="center">
						<h1>메모 보고</h1>
					</div>

					<div>
						<br>
					</div>

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
								        }}'>
								     <form id="writeForm" name="writeForm" method="post" action="" style="margin: 0px">
											<div id="attach_file_hdn"></div>
											
											<input type="hidden" name="bcode" value="${bcode}">
											<input type="hidden" name="pg" value="1">
											<input type="hidden" name="key" value="">
											<input type="hidden" name="word" value="">
								        
									<tbody>
										<tr data-expanded="true">
											<td>문서번호</td>
											<td></td>
											<td>기안</td>
											<td></td>
											<td></td>
										</tr>

										<tr>
											<th>문서분류</td>
											<td>
												<input type="radio" name="div_apv_sq" value="3" checked="checked"> 메모
											</td>
												<td>확인</td>
												<td></td>
												<td></td>
										</tr>									
										<tr>
											<th>제목</td>
											 <td colspan="2">
											 	<input type="text" class="form-control" name="apv_nm">
											 </td>
											<th></th> 
										</tr>
										<tr>
											<!-- 아래에 썸머노트 rink와 script있음 -->
												<td colspan="5"><textarea id="summernote" name="content"></textarea></td>
										</tr>
									</tbody>
									</form>
								</table>
							</div>
						</div>

						<div class="w3ls_head">
							<input type="button" value="결재상신" class="btn btn-info" id="registerBtn" name="registerBtn">
							<input id = "cancel"type="button" value="취소" class="btn btn-info">
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
