<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/commons/public.jsp" %>
<%@ include file="/WEB-INF/views/commons/board_common.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
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
									<tbody>
										<c:forEach items="${ViewApproval}" var="map">
										<tr data-expanded="true">
											<td>문서번호</td>
											<td>${map.APV_SQ}</td>
											<td>기안</td>
											<td>${map.DPT_NM}</td>
											<td>${map.STF_NM}</td>
										</tr>

										<tr>
											<th>문서분류</td>
											<td>${map.DIV_APV_NM}</td>
											</c:forEach>
											<c:forEach items="${ViewApproval}" var="map">
												<td>확인</td>
												<td>인사과</td>
												<td>김정남</td>
										</tr>
											</c:forEach>
									
										
										<c:forEach items="${ViewApproval}" var="map">
										<tr>
											<th>제목</td>
											 <td colspan="2">${map.APV_NM}</td>
										</c:forEach>
										<c:forEach items="${ViewApproval}" var="map">	 
											<th>인사과</td>
											<th>송민섭</td> 
										</tr>
										</c:forEach>
										<c:forEach items="${ViewApproval}" var="map">
										<tr>
											<td colspan="5">
												<text name="content" readonly="readonly" height="30" width="100%">${map.CONTENT}</text>
								           	</td>
										</tr>
										</c:forEach>
										
										 
									</tbody>
								</table>
							</div>
						</div>

						<div class="w3ls_head">
							<input id = "glist"type="button" value="일반 공문 목록" class="btn btn-info">
							<input id = "clist"type="button" value="협조 공문 목록" class="btn btn-info">
							<input id = "elist"type="button" value="기타 공문 목록" class="btn btn-info">
							<input id = "mlist"type="button" value="메모 보고 목록" class="btn btn-info">
						</div>
					</div>
				</div>
			</div>
	</section>
	<!-- </section> 2개는 template.jsp에 위치 -->

<!-- 스크립트 -->
<script src="${root}/js/board.js"></script>
<script>
control = "${root}/approval";
initPath();
$(document).ready(function() {
		
	$("#glist").click(function() {
		$("#bcode").val("");
		$("#seq").val("");
		$("#pg").val("1");
		$("#key").val("");
		$("#word").val("");
		$("#commonform").attr("method", "get").attr("action", glistpath).submit();
	});

	$("#clist").click(function() {
		$("#bcode").val("");
		$("#seq").val("");
		$("#pg").val("1");
		$("#key").val("");
		$("#word").val("");
		$("#commonform").attr("method", "get").attr("action", clistpath).submit();
	});

	$("#elist").click(function() {
		$("#bcode").val("");
		$("#seq").val("");
		$("#pg").val("1");
		$("#key").val("");
		$("#word").val("");
		$("#commonform").attr("method", "get").attr("action", elistpath).submit();
	});
	$("#mlist").click(function() {
		$("#bcode").val("");
		$("#seq").val("");
		$("#pg").val("1");
		$("#key").val("");
		$("#word").val("");
		$("#commonform").attr("method", "get").attr("action", mlistpath).submit();
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
