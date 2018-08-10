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
			<div class="table-agile-info">
			    <div class="row">
			    			<!-- 1단 -->
			                <div class="col-lg-3">
			                <h5>· 일반공문</h5><br>
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
								         <c:forEach items="${gListCountApproval}" var="map">
								            <td>${map.GLISTCOUNT} 건</td>
								         </c:forEach>
								        </tr>
								        </tbody>
								       <tbody>
								        <tr>
								       		<td>결재 진행중</td>
								         	<c:forEach items="${gProgress}" var="map">
								            	<td>${map.PROGRESS} 건</td>
								        	</c:forEach>
								        </tr>
								        </tbody>
								       <tbody>
								        <tr>
								       		<td>결재 완료</td>
								         	<c:forEach items="${gEndApproval}" var="map">
								            	<td>${map.GENDAPPROVAL} 건</td>
								        	</c:forEach>
								        </tr>
								        </tbody>
								      	</table>
								      </div>
								  </div>
						    </div>
						    
						    <!-- 2단 -->
						    <div class="col-lg-12">
			                <h5>· 일반</h5><br>
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
								          <c:forEach items="${tgListApproval}" var="map">
								          <tr class="posting"  approval-seq="${map.APV_SQ}">
								           <td>${map.APV_SQ}</td>
								           <td>${map.APV_CR_DATE}</td>
								           <td>${map.APV_NM}</td>
								           <td>${map.APV_MID_SQ}</td>
								           <td>${map.APV_FNL_SQ}</td>								          
								          </tr>
								          </c:forEach>
								        </tbody>
								      </table>
								      </div>
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
		$("#dacode").val("${map.DIV_APV_SQ}");
		$("#pg").val("");
		$("#key").val("");
		$("#word").val("");
		$("#seq").val($(this).attr("approval-seq"));
		$("#commonform").attr("method", "get").attr("action", viewpath).submit();
	});
});

</script>	

	
