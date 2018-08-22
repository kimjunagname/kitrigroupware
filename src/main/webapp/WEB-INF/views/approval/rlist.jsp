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
			    		
						   
						  <h3><b>임시 보관함</b></h3><hr>
						    <!-- 2단 진행중 시작 -->
						    <div class="col-lg-12">
			                <h5>· 목록</h5><br>
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
								          <c:forEach items="${tempviewApproval}" var="map">
								          <tr id="posting"  APV_TB_apv_seq="${map.APV_SQ}" >
								           <td>${map.APV_SQ}</td>
								           <td>${map.APV_CR_DATE}</td>
								           <td>${map.APV_NM}</td>
								           <td>${map.STF_MID_SQ}</td>
								           <td>${map.STF_FNL_SQ}</td>									          
								          </tr>
								          </c:forEach>
								        </tbody>
								      </table>
								      </div>
								  </div>
								  <!-- 
								  <div class="w3ls_head">
									<input id = "write"type="button" value="수정" class="btn btn-info">
									<input id = "clist"type="button" value="취소" class="btn btn-info">
								</div>	
								 -->
								  
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
	
	// . class # id 클릭 > view page로 이동
	$("#posting").click(function() {
		$("#bcode").val("");
		$("#apv_seq").val($(this).attr("APV_TB_apv_seq"));
		$("#pg").val("");
		$("#key").val("");
		$("#word").val("");
		$("#commonform").attr("method", "get").attr("action", rviewpath).submit();
	});
	
});

</script>	

	
