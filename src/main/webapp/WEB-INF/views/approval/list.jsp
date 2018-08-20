<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/commons/public.jsp" %>
<%@ include file="/WEB-INF/views/commons/board_common.jsp"%>


<!-- body start -->
<section id="container">

<!--main content start-->
<section id="main-content">
	<section class="wrapper">
			<div class="table-agile-info">
			    <div class="row">
			    			<!-- 1단 -->
			    			
						<h3><b>진행현황</b></h3><hr>
			                <div class="col-lg-4">
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
								       		<td>결재 진행 중</td>
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
						    
						   <!-- 1단 -->
			                <div class="col-lg-4">
			                <h5>· 협조공문</h5><br>
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
								         <c:forEach items="${cListCountApproval}" var="map">
								            <td>${map.CLISTCOUNT} 건</td>
								         </c:forEach>
								        </tr>
								        </tbody>
								       <tbody>
								        <tr>
								       		<td>결재 진행 중</td>
								         	<c:forEach items="${cProgress}" var="map">
								            	<td>${map.PROGRESS} 건</td>
								        	</c:forEach>
								        </tr>
								        </tbody>
								       <tbody>
								        <tr>
								       		<td>결재 완료</td>
								         	<c:forEach items="${cEndApproval}" var="map">
								            	<td>${map.CENDAPPROVAL} 건</td>
								        	</c:forEach>
								        </tr>
								        </tbody>
								      </table>
								      </div>
								  </div>
						    </div>
						    
						   <!-- 1단 -->						    
						    <div class="col-lg-4">
			                <h5>· 기타공문</h5><br>
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
								         <c:forEach items="${eListCountApproval}" var="map">
								            <td>${map.ELISTCOUNT} 건</td>
								         </c:forEach>
								        </tr>
								        </tbody>
								       <tbody>
								        <tr>
								       		<td>결재 진행 중</td>
								         	<c:forEach items="${eProgress}" var="map">
								            	<td>${map.PROGRESS} 건</td>
								        	</c:forEach>
								        </tr>
								        </tbody>
								        <tbody>
								        <tr>
								       		<td>결재 완료</td>
								         	<c:forEach items="${eEndApproval}" var="map">
								            	<td>${map.EENDAPPROVAL} 건</td>
								        	</c:forEach>
								        </tr>
								        </tbody>
								      </table>
								      </div>
								  </div>
						    </div>
						    
						   <!-- 1단 -->
						   <!-- 						    
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
						     -->
						    
						  <h3><b>결재 - 진행</b></h3><hr>
						    <!-- 2단 진행중 시작 -->
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
								          <c:forEach items="${gListApproval}" var="map">
								          <tr class="posting"  APV_TB_apv_seq="${map.APV_SQ}" >
								           <td>${map.APV_SQ}</td>
								           <td>${map.APV_CR_DATE}</td>
								           <td>${map.APV_NM}</td>
								           <td>${map.MID_NM_1}</td>
								           <td>${map.FNL_NM_1}</td>									          
								          </tr>
								          </c:forEach>
								        </tbody>
								      </table>
								      </div>
								  </div>
						    </div>
						    
						    <!-- 3단 -->
						    <div class="col-lg-12">
			                <h5>· 협조</h5><br>
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
								          <c:forEach items="${cListApproval}" var="map">
								          <tr class="posting"  APV_TB_apv_seq="${map.APV_SQ}">
								           <td>${map.APV_SQ}</td>
								           <td>${map.APV_CR_DATE}</td>
								           <td>${map.APV_NM}</td>
								           <td>${map.MID_NM_1}</td>
								           <td>${map.FNL_NM_1}</td>	
								          </tr>
								          </c:forEach>
								        </tbody>
								      </table>
								      </div>
								  </div>
						    </div>
						    
						    <!-- 4단 -->
						    <div class="col-lg-12">
			                <h5>· 기타</h5><br>
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
								          <c:forEach items="${eListApproval}" var="map">
								          <tr class="posting"  APV_TB_apv_seq="${map.APV_SQ}">
								           <td>${map.APV_SQ}</td>
								           <td>${map.APV_CR_DATE}</td>
								           <td>${map.APV_NM}</td>
								           <td>${map.MID_NM_1}</td>
								           <td>${map.FNL_NM_1}</td>	
								          </tr>
								          </c:forEach>
								        </tbody>
								      </table>
								      </div>
								  </div>
						    </div>
						    
						    <!-- 5단 -->
						    <!-- 
						    <div class="col-lg-12">
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
								          <c:forEach items="${mListApproval}" var="map">
								          <tr id=mposting  APV_TB_apv_seq="${map.APV_SQ}">
								           <td>${map.APV_SQ}</td>
								           <td>${map.APV_CR_DATE}</td>
								           <td>${map.APV_NM}</td>
								           <td>${map.MID_NM_1}</td>
								           <td>${map.FNL_NM_1}</td>								          
								          </tr>
								          </c:forEach>
								        </tbody>
								      </table>
								      </div>
								  </div>
						    </div>
						     -->
						  <!-- 5단 진행중 종료 -->
						    
						    
						  <!-- 2단 1차 결재  시작 -->
						  <h3><b>1차 결재 요청 문서</b></h3><hr>
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
								          <c:forEach items="${gListOneApprovalRequest}" var="map">
								          <tr class="postingapp"  APV_TB_apv_seq="${map.APV_SQ}" >
								           <td>${map.APV_SQ}</td>
								           <td>${map.APV_CR_DATE}</td>
								           <td>${map.APV_NM}</td>
								           <td>${map.MID_NM_1}</td>
								           <td>${map.FNL_NM_1}</td>									          
								          </tr>
								          </c:forEach>
								        </tbody>
								      </table>
								      </div>
								  </div>
						    </div>
						    
						    <!-- 3단 -->
						    <div class="col-lg-12">
			                <h5>· 협조</h5><br>
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
								          <c:forEach items="${cListOneApprovalRequest}" var="map">
								          <tr class="postingapp"  APV_TB_apv_seq="${map.APV_SQ}">
								           <td>${map.APV_SQ}</td>
								           <td>${map.APV_CR_DATE}</td>
								           <td>${map.APV_NM}</td>
								           <td>${map.MID_NM_1}</td>
								           <td>${map.FNL_NM_1}</td>	
								          </tr>
								          </c:forEach>
								        </tbody>
								      </table>
								      </div>
								  </div>
						    </div>
						    
						    <!-- 4단 -->
						    <div class="col-lg-12">
			                <h5>· 기타</h5><br>
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
								          <c:forEach items="${eListOneApprovalRequest}" var="map">
								          <tr class="postingapp"  APV_TB_apv_seq="${map.APV_SQ}">
								           <td>${map.APV_SQ}</td>
								           <td>${map.APV_CR_DATE}</td>
								           <td>${map.APV_NM}</td>
								           <td>${map.MID_NM_1}</td>
								           <td>${map.FNL_NM_1}</td>	
								          </tr>
								          </c:forEach>
								        </tbody>
								      </table>
								      </div>
								  </div>
						    </div>
						    
						    <!-- 5단 -->
						    <!-- 
						    <div class="col-lg-12">
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
								          </c:forEach>
								        </tbody>
								      </table>
								      </div>
								  </div>
						    </div>
						     -->
						  <!-- 5단 1차 결재 끝 -->
						    
						    
						  <!-- 2차 결재 2단 -->
						<h3><b>2차 결재 요청 문서</b></h3><hr>
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
								          <c:forEach items="${gListTwoApprovalRequest}" var="map">
								          <tr class="postingapp"  APV_TB_apv_seq="${map.APV_SQ}" >
								           <td>${map.APV_SQ}</td>
								           <td>${map.APV_CR_DATE}</td>
								           <td>${map.APV_NM}</td>
								           <td>${map.MID_NM_1}</td>
								           <td>${map.FNL_NM_1}</td>									          
								          </tr>
								          </c:forEach>
								        </tbody>
								      </table>
								      </div>
								  </div>
						    </div>
						    
						    <!-- 3단 -->
						    <div class="col-lg-12">
			                <h5>· 협조</h5><br>
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
								          <c:forEach items="${cListTwoApprovalRequest}" var="map">
								          <tr class="postingapp"  APV_TB_apv_seq="${map.APV_SQ}">
								           <td>${map.APV_SQ}</td>
								           <td>${map.APV_CR_DATE}</td>
								           <td>${map.APV_NM}</td>
								           <td>${map.MID_NM_1}</td>
								           <td>${map.FNL_NM_1}</td>	
								          </tr>
								          </c:forEach>
								        </tbody>
								      </table>
								      </div>
								  </div>
						    </div>
						    
						    <!-- 4단 -->
						    <div class="col-lg-12">
			                <h5>· 기타</h5><br>
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
								          <c:forEach items="${eListTwoApprovalRequest}" var="map">
								          <tr class="postingapp"  APV_TB_apv_seq="${map.APV_SQ}">
								           <td>${map.APV_SQ}</td>
								           <td>${map.APV_CR_DATE}</td>
								           <td>${map.APV_NM}</td>
								           <td>${map.MID_NM_1}</td>
								           <td>${map.FNL_NM_1}</td>	
								          </tr>
								          </c:forEach>
								        </tbody>
								      </table>
								      </div>
								  </div>
						    </div>
						    
						    <!-- 5단 -->
						    <!--  
						    <div class="col-lg-12">
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
								          </c:forEach>
								        </tbody>
								      </table>
								      </div>
								  </div>
						    </div>
						    -->
						  <!-- 5단 2차 결재 종료-->
						    
						    

						
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
	
	//class 클릭 > view page로 이동
	$(".posting").click(function() {
		$("#bcode").val("");
		$("#seq").val($(this).attr("APV_TB_apv_seq"));
		$("#pg").val("");
		$("#key").val("");
		$("#word").val("");
		$("#commonform").attr("method", "get").attr("action", viewpath).submit();
	});
	
	//$("#mposting").click(function() {
	//	$("#bcode").val("");
	//	$("#seq").val($(this).attr("APV_TB_apv_seq"));
	//	$("#pg").val("");
	//	$("#key").val("");
	//	$("#word").val("");
	//	$("#commonform").attr("method", "get").attr("action", mviewpath).submit();
	//});
	
	$(".postingapp").click(function() {
		$("#bcode").val("");
		$("#seq").val($(this).attr("APV_TB_apv_seq"));
		$("#pg").val("");
		$("#key").val("");
		$("#word").val("");
		$("#commonform").attr("method", "get").attr("action", appviewpath).submit();
	});	
	
	
	
	
	
	
});

</script>	

	
