<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/commons/public.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<script src="${root}/js/board.js"></script>
<!-- jQuery EasyUi API -->
<link rel="stylesheet" type="text/css" href="${root}/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${root}/easyui/themes/icon.css">
<script type="text/javascript" src="${root}/easyui/jquery.easyui.min.js"></script>

<!-- 모달 시작 -->
<!-- 모달 시작 -->
<!-- 모달 시작 -->
<!-- 모달 시작 -->
<!-- 모달 시작 -->
<!-- 모달 시작 -->
<!-- 모달 시작 -->
<!-- 모달 시작 -->
<!-- 모달 시작 -->
<!-- 모달 시작 -->
<!-- 모달 시작 -->
<!-- 모달 시작 -->
<!-- 모달 시작 -->
<!-- 모달 시작 -->
<!-- 모달 시작 -->
<!-- 모달 시작 -->
<!-- 모달 시작 -->
<!-- 모달 시작 -->
<!-- 모달 시작 -->
<!-- 모달 시작 -->
<!-- 모달 시작 -->
<!-- 모달 시작 -->
<!-- 모달 시작 -->
<!-- 모달 시작 -->
<!-- 중간 결재자 선택 모달 -->
<div class="modal fade" id="app_mid_select_Modal" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">중간 결재자 선택</h4>
			</div>
			<div class="modal-body">
				<div id="dpt_sq_dept" class="form-group well">
					<ul class="easyui-tree" id="tt">
						<li><span>KITRI 주식회사</span>
							<ul>
								<c:forEach items="${selectDpt_Div_Tb}" var="dptmap">
									<li data-options="state:'open'"><span>${dptmap.DPT_NM}|${dptmap.DPT_SQ}</span>
										<ul>
											<c:forEach items="${selectStf_tb}" var="stfmap">
												<c:if test="${dptmap.DPT_NM eq stfmap.DPT_NM}">
													<li>${stfmap.RNK_NM}|${stfmap.STF_SQ}|${stfmap.STF_NM}</li>
												</c:if>
											</c:forEach>
										</ul></li>
								</c:forEach>
							</ul></li>
					</ul>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" id="selectMid" onclick="javascript:getMidSelected();" class="easyui-linkbutton">선택</button>
				<!-- <a href="#" class="easyui-linkbutton" onclick="getSelected()">GetSelected</a> btn btn-success id="getofficer" -->
				<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
			</div>
		</div>
	</div>
</div>


<!-- 최종 결재자 선택 모달 -->
<!-- 2. 모달 추가(아디 변경: app_fnl_select_Modal >> app_fnl_select_Modal) -->
<div class="modal fade" id="app_fnl_select_Modal" role="dialog">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">최종 결재자 선택</h4>
			</div>
			<div class="modal-body">
			
			<!--  3. 모달 추가 id:변경 dpt_sq_dept > 부서번호 dpt_sq_dept2-->
				<div id="dpt_sq_dept2" class="form-group well">
				
				<!--  4. 모달 추가 id:변경 tt > 부서번호 tt2-->
					<ul class="easyui-tree" id="tt2">
						<li><span>KITRI 주식회사</span>
							<ul>
								<c:forEach items="${selectDpt_Div_Tb}" var="dptmap">
									<li data-options="state:'open'"><span>${dptmap.DPT_NM}</span>
										<ul>
											<c:forEach items="${selectStf_tb}" var="stfmap">
												<c:if test="${dptmap.DPT_NM eq stfmap.DPT_NM}">
													<li>${stfmap.RNK_NM}|${stfmap.STF_SQ}|${stfmap.STF_NM}</li>
												</c:if>
											</c:forEach>
										</ul></li>
								</c:forEach>
							</ul></li>
					</ul>
				</div>
			</div>
			<div class="modal-footer">
			    <!-- 모달 - onclick 수정 javascript:getMidSelected > javascript:getFnlSelected() -->
				<button type="button" id="selectFnl" onclick="javascript:getFnlSelected();" class="easyui-linkbutton">선택</button>
				<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
			</div>
		</div>
	</div>
</div>



<!-- 모달 종료 -->
<!-- 모달 종료 -->
<!-- 모달 종료 -->
<!-- 모달 종료 -->
<!-- 모달 종료 -->
<!-- 모달 종료 -->
<!-- 모달 종료 -->
<!-- 모달 종료 -->
<!-- 모달 종료 -->
<!-- 모달 종료 -->
<!-- 모달 종료 -->
<!-- 모달 종료 -->
<!-- 모달 종료 -->
<!-- 모달 종료 -->
<!-- 모달 종료 -->
<!-- 모달 종료 -->
<!-- 모달 종료 -->
<!-- 모달 종료 -->
<!-- 모달 종료 -->
<!-- 모달 종료 -->
<!-- 모달 종료 -->
<!-- 모달 종료 -->
<!-- 모달 종료 -->
<!-- 모달 종료 -->
<!-- body start -->
<section id="container">

	<!--sidebar start-->
	<!--sidebar end-->

	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<h1><b>기안지 작성</b></h1><hr>
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
								        }}'>
									<form id="writeForm" name="writeForm" method="post" action=""
										style="margin: 0px">
										<div id="attach_file_hdn"></div>										
										<input type="hidden" name="bcode" value="${bcode}"> <input
											type="hidden" name="pg" value="1"> <input
											type="hidden" name="key" value=""> <input
											type="hidden" name="word" value="">
										<tbody>
											<tr>
												<th></th>
												<th colspan="2">
													<div align="center">
														<img src="${root}/images/logo.png" align="center"
															width="100" height="100">
													</div>
												</th>
												<!-- <th></th>  -->
												<th colspan="4">
													<div align="center">
														<h6>즐거운 삶이 가득한 회사</h6>
													</div> <br>
													<div align="center">
														<h2>KITRI 주식 회사</h2>
													</div>
												</th>
												<!-- <th></th> -->
												<!-- <th></th> -->
												<th colspan="2">
													<div align="center">
														<img src="${root}/images/logo.png" align="center"
															width="100" height="100">
													</div>
												</th>
												<!-- <th></th>  -->
												<th></th>
											</tr>

											<tr>
												<th></th>
												<th>구분</th>
												<th colspan="7"><input type="radio" name="div_apv_sq"
													value="1" checked="checked"> 일반 <input type="radio"
													name="div_apv_sq" value="2"> 협조 <input type="radio"
													name="div_apv_sq" value="4"> 기타</th>
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
												<th>제목</th>
												<th colspan="7"><input type="text" class="form-control"
													name="apv_nm"></th>
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
														<img src="${root}/images/stick.png" align="center"
															width="100%" height="15%">
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
												<td colspan="10"><textarea id="summernote"
														name="content"></textarea></td>
											</tr>

											<tr>
												<td colspan="10">
													<!-- <form action="" method="post" name=""> -->
														<input type="file" name="FileName">
													<!-- </form>  -->
												</td>
											</tr>

											<tr>
												<th colspan="10">
													<div>
														<img src="${root}/images/stick.png" align="center"
															width="100%" height="15%">
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
												<th>기안자</th>
												<th></th>
												<th>
													<div class="w3ls_head">
														<button type="button" id="app_Mid_modal"
															class="btn btn-primary btn-sm" data-backdrop="static"
															data-toggle="modal">중간결재</button>
													</div>
												</th>
												<th>
													<input type="text" class="form-control" readonly="readonly" id="stf_mid_sq" name="stf_mid_sq">
												</th>
												<th>
													<div class="w3ls_head">
													<!-- 모달만들기 1 / 버튼을 만든다(아이디 변경) app_Fnl_modal-->
														<button type="button" id="app_Fnl_modal" class="btn btn-primary btn-sm" data-backdrop="static" data-toggle="modal">최종결재</button>
													</div>
												</th>
												<!-- 모달 추가 >> app_fnl_select -->
												<th>
													<input type="text" class="form-control" readonly="readonly" id="stf_fnl_sq" name="stf_fnl_sq">
												</th>
												
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
		<link
			href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.css"
			rel="stylesheet">
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.js"></script>


		<script type="text/javascript">
			$(function() {
				$('#summernote').summernote({
					height : 300,
					minHeight : null,
					maxHeight : null,
					lang : 'ko-KR'
				});
			});
		</script>

		<script type="text/javascript">
			control = "${root}/approval";
			initPath();

			$(document).ready(
					function() {

						//구성원 추가 모달
						$("#app_Mid_modal").on(
								"click",
								function() {
									$("#app_Mid_modal").attr("data-target",
											"#app_mid_select_Modal");
								});

						// 최종결재자 모달 Open >> 모달 띄워지는것 확인
						//모달 추가 jquery 추가 app_fnl_select_Modal / app_Fnl_modal
						$("#app_Fnl_modal").on(
								"click",
								function() {
									$("#app_Fnl_modal").attr("data-target",
											"#app_fnl_select_Modal");
								});
						
						//click
						$("#registerBtn").on(
								"click",
								function() {
									if ($("#apv_nm").val() == "") {
										alert("제목입력!!!");
										return;
									} else if ($("#content").val() == "") {
										alert("내용입력!!!");
										return;
									}else if ($("#stf_mid_sq").val() == "") {
										alert("mid" + stf_mid_sq);
										return;
									} else if ($("#stf_fnl_sq").val() == "") {
										alert("fnl" + stf_fnl_sq);
										return;
									}  else {
										//alert($("#stf_mid_sq").val());
										//alert($("#stf_fnl_sq").val());
										$("#writeForm").attr("method", "post")
												.attr("action", writepath)
												.submit();
									}
								});
					});
			
			//중간결재자 데이터 split 및 가져오기
			function getMidSelected(){
	            var node = $('#tt').tree('getSelected');
	            if (node){
	                var s = node.text;
	                if (node.attributes){
						s += ","+node.attributes.p1+","+node.attributes.p2;
	                }
	                
	                var jbSplit = s.split('|', 3);
	           		for ( var i in jbSplit ) {
	           			jbSplit[i];
	                    //   document.write( '<p>' + jbSplit[i] + '</p>' );
	                }
	                
	                //$('#app_mid_select_Modal').removeClass('in');
	                $('#app_mid_select_Modal').modal('hide');
		         	//$('#app_mid_select').val(jbSplit[1]);
		         	$('#stf_mid_sq').val(jbSplit[1]);
		         	//alert(jbSplit[1]);
		         	
		         	

	            }    
	        }
			
			//최종 결재자 데이터 split 및 가져오기 
			//모달 추가 java 스크립트 >> #tt >> #tt1 getSelected jeasyui 기본 함수값 getMidSelected() >> getFnlSelected() 
			function getFnlSelected(){
	            var node = $('#tt2').tree('getSelected');
	            if (node){
	                var s2 = node.text;
	                if (node.attributes){
						s2 += ","+node.attributes.p1+","+node.attributes.p2;
	                }
	                
	                var jbSplit2 = s2.split('|', 3);
	           		for ( var i in jbSplit2 ) {
	           			jbSplit2[i];
	                    //   document.write( '<p>' + jbSplit[i] + '</p>' );
	                }
	                
	                //$('#app_mid_select_Modal').removeClass('in');
					//app_mid_select_Modal >> app_fnl_select_Modal 
	                $('#app_fnl_select_Modal').modal('hide');
					//app_mid_select >> app_fnl_select
		         	//$('#app_fnl_select').val(jbSplit2[1]);
					$('#stf_fnl_sq').val(jbSplit2[1]);
		         	//alert(jbSplit2[1]);
		         	

	            }    
	        }
			
			
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