<title>KITRI GROUPWARE</title>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/commons/public.jsp" %>
<%@ include file="/WEB-INF/views/commons/board_common.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>


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
								        		
								        		<c:forEach items="${ViewApproval}" var="map">								        		
								        			<th colspan="7">${map.DIV_APV_NM}</th>
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
								        			<th colspan="7">${map.APV_NM}</th>
								        		
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
								          		
								           			<td colspan="10"><text name="content" readonly="readonly" height="30" width="100%">${map.CONTENT}</text>
								           		</td>
								           		
								          	</tr>
								          	<tr>
								           		<td colspan="10">
									         		<!-- <form action="" method="post" enctype="multipart/form-data" name="">
												  		<input type="file" name="FileName">
											    	</form> -->
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
									        		<th>${map.DPT_NM}</th>
									        		<th>${map.STF_NM}</th>
								        		
									        		<th>
									        		 <form role="form">
                           								<input id="div1" name="div1" type="hidden" value="${map.APV_SQ}">
                      								  </form>
									        		</th>
									        		<th>${map.MID_DIV_NM}</th>
									        		<th>
									        		${map.MID_NM_1} 
									        			
									        			<span>
                                 							<button class="btn btn-success btn-sm" id="midApp">결재하기</button>
                              						
                              							</span>
                              							
									        		</th>
									        		<th>
									        		 <form role="form">
                           								<input id="div2" name="div2" type="hidden" value="${map.APV_SQ}">
                      								  </form>
									        		</th>
								        		
									        		<th>${map.FNL_DIV_NM}</th>
									        		<th>
									        		${map.FNL_NM_1}
									        			<span>
                                 							<button class="btn btn-success btn-sm" id="fnlApp">결재하기</button>
                              							</span>
									        		</th>
								        		
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
								        		<th>기안</th>
								        			<th colspan="4">${map.APV_CR_DATE}</th>
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
								        		<th>${map.STF_ZIP_ADD}</th>
								        		<th colspan="4">${map.STF_CM_ADD}</th>
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
										        		<th colspan="2">${map.STF_TB.STF_BS_PH1} - ${map.STF_TB.STF_BS_PH2} - ${map.STF_TB.STF_BS_PH3}</th>
								        		<!-- <th></th> -->
								        		<th>전송</th>
										        		<th>${map.STF_TB.STF_BS_PH1} - ${map.STF_TB.STF_BS_PH2} - ${map.STF_TB.STF_BS_PH3}</th>						        		
										        		<th colspan="2">${map.STF_EML1}@${map.STF_EML2}</th>
								        		<!-- <th></th> -->								        		
									        			<th>/ ${map.DIV_APV_NM}</th>
									        		
								        		<th></th>
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

	
	
    // 중간결재 버튼 눌렀을 때
    $("#midApp").click("click", function() {
    
       var mid = $("#div1").val();
       midApproval(mid);
     });

    function midApproval(mid) {
       var params = {
          apv_sq : mid
       };
       $.ajax({
          url: "${root}/approval/midApproval.kitri",
          type: "POST",
          dataType: "text",
           data : JSON.stringify(params),
           contentType: "application/json; charset=UTF-8",
           success: function(result) {
              if(result=='SUCCESS'){
                 alert("1차 결재가 되었습니다.");
                 window.location.reload();
              }
           }
       });
    }
	
    
    // 최종결재 버튼 눌렀을 때
    $("#fnlApp").click("click", function() {
    
       var fnl = $("#div2").val();
       fnlApproval(fnl);
     });

    function fnlApproval(fnl) {
       var params = {
          apv_sq : fnl
       };
       $.ajax({
          url: "${root}/approval/fnlApproval.kitri",
          type: "POST",
          dataType: "text",
           data : JSON.stringify(params),
           contentType: "application/json; charset=UTF-8",
           success: function(result) {
              if(result=='SUCCESS'){
                 alert("2차 결재가 되었습니다.");
                 window.location.reload();
              }
           }
       });
    }   
    
    
    
    
    
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
	