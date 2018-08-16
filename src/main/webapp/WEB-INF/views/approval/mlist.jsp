<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/commons/public.jsp" %>
<%@ include file="/WEB-INF/views/commons/board_common.jsp"%>
<script src="${root}/js/board.js"></script>


<!-- body start -->
<section id="container">

<!--main content start-->
<section id="main-content">
	<section class="wrapper">
		<h1><b>메모 보고 - 결재 진행</b></h1><hr>
			<div class="table-agile-info">
			    <div class="row">
			    			<!-- 1단 -->
			                <div class="col-lg-3">
			                <h5>· 메모보고</h5><br>
								 <div class="panel panel-default">
								    <div>
								      <table class="table" ui-jq="footable" ui-options='{
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
								        <tr>
								        	<td>총계</td>
								         <c:forEach items="${mListCountApproval}" var="map">
								            <td>${map.MLISTCOUNT} 건</td>
								         </c:forEach>
								        </tr>
								        </tbody>
								       <tbody>
								        <tr>
								       		<td>결재 진행중</td>
								         	<c:forEach items="${mProgress}" var="map">
								            	<td>${map.PROGRESS} 건</td>
								        	</c:forEach>
								        </tr>
								        </tbody>
								       <tbody>
								        <tr>
								       		<td>결재 완료</td>
								         	<c:forEach items="${mEndApproval}" var="map">
								            	<td>${map.MENDAPPROVAL} 건</td>
								        	</c:forEach>
								        </tr>
								        </tbody>
								      	</table>
								      </div>
								  </div>
						    </div>
						    
						    <!-- 2단 -->
						    <div class="col-lg-12">
						    <h3><b>결재 진행</b></h3><hr>
			                <h5>· 메모</h5><br>
								 <div class="panel panel-default">
								    <div>
								      <table class="table" ui-jq="footable" ui-options='{
								        "paging": {
								          "enabled": true
								        },
								        "filtering": {
								          "enabled": true
								        },
								        "sorting": {
								          "enabled": true
								        }}'>
								         <thead>
								          <tr data-expanded="true">
								           <th data-breakpoints="xs">문서번호</th>
								           <th data-breakpoints="xs">기안일자</th>
								           <th data-breakpoints="xs">제목</th>
								           <th data-breakpoints="xs">중간결재자</th>
								           <th data-breakpoints="xs">최종결재자</th>
								          </tr>
								         </thead>
								         <tbody>
								          <c:forEach items="${tmListApproval}" var="map">
								          <tr id=mposting  APV_TB_apv_seq="${map.APV_SQ}">
								           <td>${map.APV_SQ}</td>
								           <td>${map.APV_CR_DATE}</td>
								           <td>${map.APV_NM}</td>
								           <td>${map.MID_NM_1}</td>
								           <td>${map.FNL_NM_1}</td>								          
								          </tr>
								        </tbody>
										</c:forEach>
								      </table>
								      </div>
								  </div>
								  
						    </div>

						  <!-- 5단 -->
						
						 <!-- 2단 -->
						    <div class="col-lg-12">
						   <h3><b>1차 결재 요청 문서</b></h3><hr>	
			                <h5>· 메모</h5><br>
								 <div class="panel panel-default">
								    <div>
								      <table class="table" ui-jq="footable" ui-options='{
								        "paging": {
								          "enabled": true
								        },
								        "filtering": {
								          "enabled": true
								        },
								        "sorting": {
								          "enabled": true
								        }}'>
								         <thead>
								          <tr data-expanded="true">
								           <th data-breakpoints="xs">문서번호</th>
								           <th data-breakpoints="xs">기안일자</th>
								           <th data-breakpoints="xs">제목</th>
								           <th data-breakpoints="xs">중간결재자</th>
								           <th data-breakpoints="xs">최종결재자</th>
								          </tr>
								         </thead>
								         <tbody>
								          <c:forEach items="${mListOneApprovalRequest}" var="map">
								          <tr id=mposting  APV_TB_apv_seq="${map.APV_SQ}">
								           <td>${map.APV_SQ}</td>
								           <td>${map.APV_CR_DATE}</td>
								           <td>${map.APV_NM}</td>
								           <td>${map.MID_NM_1}</td>
								           <td>${map.FNL_NM_1}</td>								          
								          </tr>
								        </tbody>
										</c:forEach>
								      </table>
								      </div>
								  </div>
								  
						    </div>

						  <!-- 5단 -->
						  
						  <!-- 2단 -->
						    <div class="col-lg-12">
						    <h3><b>2차 결재 요청 문서</b></h3><hr>	
			                <h5>· 메모 </h5><br>
								 <div class="panel panel-default">
								    <div>
								      <table class="table" ui-jq="footable" ui-options='{
								        "paging": {
								          "enabled": true
								        },
								        "filtering": {
								          "enabled": true
								        },
								        "sorting": {
								          "enabled": true
								        }}'>
								         <thead>
								          <tr data-expanded="true">
								           <th data-breakpoints="xs">문서번호</th>
								           <th data-breakpoints="xs">기안일자</th>
								           <th data-breakpoints="xs">제목</th>
								           <th data-breakpoints="xs">중간결재자</th>
								           <th data-breakpoints="xs">최종결재자</th>
								          </tr>
								         </thead>
								         <tbody>
								          <c:forEach items="${mListTwoApprovalRequest}" var="map">
								          <tr id=mposting  APV_TB_apv_seq="${map.APV_SQ}">
								           <td>${map.APV_SQ}</td>
								           <td>${map.APV_CR_DATE}</td>
								           <td>${map.APV_NM}</td>
								           <td>${map.MID_NM_1}</td>
								           <td>${map.FNL_NM_1}</td>								          
								          </tr>
								        </tbody>
										</c:forEach>
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

						  <!-- 5단 -->
						
			      </div>
			</div>
	</section>
	<!-- </section> 2개는 template.jsp에 위치 -->
	
	
	
<!-- 스크립트 -->
<script>
control = "${root}/approval";
initPath();
$(document).ready(function() {
	
	$("#firstpage").click(function() {		
		moveBoard('${bcode}', '1', '', '', listpath);		
	});
	
	$(".mvpage").click(function() {
		moveBoard("${bcode}", $(this).attr("move-page-no"), "${key}", "${word}", listpath)
	});
	
	$("#searchBtn").click(function() {
		moveBoard('${bcode}', '1', $("#skey").val(), $("#sword").val(), listpath);		
	});
	
	$("#myBtn").click(function() {
		moveBoard('${bcode}', '1', 'id', '${userInfo.id}', listpath);		
	});
	
	$(".writeBtn").click(function() {
		moveBoard('${bcode}', '1', '', '', writepath);		
	});	
	
	//class 클릭 > view page로 이동
	$(".posting").click(function() {
		$("#bcode").val("");
		$("#seq").val($(this).attr("APV_TB_apv_seq"));
		$("#pg").val("");
		$("#key").val("");
		$("#word").val("");
		$("#commonform").attr("method", "get").attr("action", viewpath).submit();
	});
	
	$("#mposting").click(function() {
		$("#bcode").val("");
		$("#seq").val($(this).attr("APV_TB_apv_seq"));
		$("#pg").val("");
		$("#key").val("");
		$("#word").val("");
		$("#commonform").attr("method", "get").attr("action", mviewpath).submit();
	});
	
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

	
