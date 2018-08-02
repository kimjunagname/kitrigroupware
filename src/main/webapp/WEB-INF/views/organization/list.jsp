<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/commons/public.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- jQuery EasyUi API -->
<link rel="stylesheet" type="text/css" href="${root}/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${root}/easyui/themes/icon.css">
<script type="text/javascript" src="${root}/easyui/jquery.easyui.min.js"></script>
<body>
	<style>
		#imgView, #imgView_up {
			width:96px;
			height:126px;
		}
	</style>
	<section id="container"> 

	<!-- 조직관리 모달 시작 -->
	<div class="modal fade" id="DeptModal" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" id="deptClose" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">조직 관리</h4>
					</div>
					<div class="modal-body">
						<div id="dpt_sq_dept" class="form-group well">
							<c:forEach items="${selectDpt_Div_Tb}" var="map">
								<div class="has-feedback" data-value="${map.DPT_SQ}">
									<div class="deptDiv" data-value="${map.DPT_SQ}">${map.DPT_NM}</div>						
									<button id="deptDelete">삭제</button>				
								</div>
							</c:forEach>
						</div>
						<div class="modal-footer">
							<div class="col-xs-10 col-md-10 leftNoPadding">
								<input type="text" id="addDept" class="form-control" placeholder="부서명">
							</div>
							<button type="button" id="deptInsert" class="btn btn-success col-xs-2 col-md-2 leftNoPadding rightNoPadding">추가</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	<!-- 조직관리 모달 끝   --> 
	
	<!-- 구성원 추가 모달 --> 
	<div class="modal fade" id="insertModal" role="dialog">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">구성원 추가</h4>
					</div>
					<div class="modal-body">
						<table class="tableMiddle table table-striped table-bordered ">
							<colgroup>
								<col width="30%" />
								<col width="70%" />
							</colgroup>
							<thead>
							</thead>
							<form id="officerInsertForm" action="/admin/officerInsert"
								method="post" enctype="multipart/form-data">
								<tbody>
									<tr>
										<th class="text-center"><img id="imgView" class="profileImg"
											src="/resources/img/user.png"> <input type="file"
											id="file" name="file" class="form-control"></th>
										<td>
											<h5>이미지는 가로 96px, 세로 128px를 준수 해주시기 바랍니다.</h5>
											<h5>(*)이 작성된 칸은 필수항목 입니다.</h5>
										</td>
									</tr>
									<tr>
										<th>이름(*)</th>
										<td><input type="text" id="stf_nm" name="stf_nm"
											class="form-control" placeholder="이름"></td>
									</tr>
									<tr>
										<th>비밀번호(*)</th>
										<td>
											<div id="stf_pw1_Div">
												<input type="password" id="stf_pw1" class="form-control"
													placeholder="비밀번호"> <span id="stf_pw1_Span"></span>
											</div>
										</td>
									</tr>
									<tr>
										<th>비밀번호 확인(*)</th>
										<td><input type="password" id="stf_pw2"
											class="form-control" placeholder="비밀번호 확인"> <input
											type="hidden" id="stf_pw" name="stf_pw" class="form-control"
											placeholder="비밀번호"></td>
									</tr>
									<tr>
										<th>사원번호(*)</th>
										<td>
											<div class="col-sm-9 col-md-10 leftNoPadding">
												<div id="stf_sq_Div">
													<input type="text" id="stf_sq1" class="form-control"
														placeholder="사원번호"> <span id="stf_sq_Span"></span>
												</div>
											</div>

											<button type="button" id="stfNumSearchBtn"
												class="btn btn-default col-sm-3 col-md-2">중복확인</button> <input
											type="hidden" id="stf_sq" name="stf_sq" class="form-control">
										</td>
									</tr>
									<tr>
										<th>권한(*)</th>
										<td><select id="admn_sq" name="admn_sq"
											class="form-control">
												<c:forEach items="${selectAdmn_Tb}" var="map">
													<option value="${map.ADMN_SQ}">${map.ADMN_PW}</option>
												</c:forEach>
										</select></td>
									</tr>
									<tr>
										<th>부서(*)</th>
										<td><select id="dpt_sq" name="dpt_sq"
											class="form-control">
												<c:forEach items="${selectDpt_Div_Tb}" var="map">
													<option value="${map.DPT_SQ}">${map.DPT_NM}</option>
												</c:forEach>
										</select></td>
									</tr>
									<tr>
										<th>직급(*)</th>
										<td><select id="rnk_sq" name="rnk_sq"
											class="form-control">
												<c:forEach items="${selectRnk_Tb}" var="map">
													<option value="${map.RNK_SQ}">${map.RNK_NM}</option>
												</c:forEach>
										</select></td>
									</tr>
									<tr>
										<th>주소(*)</th>
										<td>
											<div class="col-sm-9 col-md-10 leftNoPadding">
												<input type="text" id="stf_cm_add" name="stf_cm_add"
													class="form-control" placeholder="주소" readonly="readonly">
											</div>
											<button class="btn btn-primary" id="zipcode" type="button" data-toggle="modal" data-target="#zip_codeModal">주소검색</button>						
										</td>
									</tr>
									<tr>
										<th>상세주소(*)</th>
										<td><input type="text" id="stf_dt_add" name="stf_dt_add"
											class="form-control" placeholder="상세주소"></td>
									</tr>
									<tr>
										<th>이메일(*)</th>
										<td><input type="email" id="stf_eml" name="stf_eml"
											class="form-control" placeholder="이메일"></td>
									</tr>

									<tr>
										<th>휴대폰(*)</th>
										<td>
											<div class="col-sm-2 col-md-2 leftNoPadding rightNoPadding">
												<select id="phoneNum1" class="form-control">
													<option value="010">010</option>
													<option value="011">011</option>
													<option value="016">016</option>
													<option value="017">017</option>
													<option value="018">018</option>
													<option value="019">019</option>
												</select>
											</div>
											<div
												class="col-sm-1 col-md-1 text-center leftNoPadding rightNoPadding">
												<h5>-</h5>
											</div>
											<div class="col-sm-4 col-md-4 leftNoPadding rightNoPadding">
												<input type="text" id="phoneNum2" class="form-control telNumMax" />
											</div>
											<div
												class="col-sm-1 col-md-1 text-center leftNoPadding rightNoPadding">
												<h5>-</h5>
											</div>
											<div class="col-sm-4 col-md-4 leftNoPadding rightNoPadding">
												<input type="text" id="phoneNum3" class="form-control telNumMax" />
											</div> <input type="hidden" id="stf_ph" name="stf_ph"
											class="form-control">
										</td>
									</tr>
									<tr>
										<th>내선번호</th>
										<td>
											<div class="col-sm-2 col-md-2 leftNoPadding rightNoPadding">
												<input type="text" id="telNum1" class="form-control"
													value="070" readonly="readonly" />
											</div>
											<div
												class="col-sm-1 col-md-1 text-center leftNoPadding rightNoPadding">
												<h5>-</h5>
											</div>
											<div class="col-sm-4 col-md-4 leftNoPadding rightNoPadding">
												<input type="text" id="telNum2" class="form-control telNumMax" />
											</div>
											<div
												class="col-sm-1 col-md-1 text-center leftNoPadding rightNoPadding">
												<h5>-</h5>
											</div>
											<div class="col-sm-4 col-md-4 leftNoPadding rightNoPadding">
												<input type="text" id="telNum3" class="form-control telNumMax" />
											</div> <input type="hidden" id="stf_bs_ph" name="stf_bs_ph"
											class="form-control">
										</td>
									</tr>
									<tr>
										<th>입사일(*)</th>
										<td><input type="date" id="stf_ent" name="stf_ent"
											class="form-control" placeholder="입사일"></td>
									</tr>
								</tbody>
							</form>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" id="officerInsert" class="btn btn-success">등록</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
	<!-- 구성원 추가 모달 끝  -->
	
	<!-- 우편번호 조회 모달  -->
	<div class="modal fade" id="zip_codeModal" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header text-center">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h3 class="modal-title" id="myModalLabel">우편번호</h3>
            </div>    
            <div class="modal-body text-center">
                 <form id = "zip_codeForm">
                         <div class = "input-group">
                            <span class = "input-group-addon">동 입력</span>
                            <input type="text" class = "form-control" name="query" id="query">
                            <span class = "input-group-btn">                                                
                                <input type="submit" class = "btn btn-warning" value="검색" id="searchBtn" onkeydown="javascript:if(event.keyCode==13)">                                            
                            </span>
                        </div>
                </form>
                <p>
                </p>
                <div>
                <div style="width:100%; height:200px; overflow:auto">
                       <table class = "table text-center">
                        <thead>
                            <tr>
                                <th style="width:150px;">우편번호</th>
                                <th style="width:600px;">주소</th>
                                </tr>
                        </thead>
                        <tbody id="zip_codeList"></tbody>
                    </table>
                </div>
                </div>
            </div>
        </div>
    </div>
	</div>
	<!--  우편번호 조회 모달 끝 -->
	
	<!-- 구성원 수정  모달 --> 
	<div class="modal fade" id="updateModal" role="dialog">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">구성원 수정</h4>
					</div>
					<div class="modal-body">

						<table class="tableMiddle table table-striped table-bordered">
							<colgroup>
								<col width="30%" />
								<col width="70%" />
							</colgroup>
							<thead>
							</thead>
							<form id="officerUpdateForm" action="/admin/officerUpdate"
								method="post" enctype="multipart/form-data">
								<tbody>
									<tr>
										<th class="text-center"><img id="imgView_up" class="profileImg"
											src="/resources/img/user.png"> <input type="file"
											id="file_up" name="file" class="form-control"></th>
										<td>
											<h5>이미지는 가로 96px, 세로 128px를 준수 해주시기 바랍니다.</h5>
											<h5>(*)이 작성된 칸은 필수항목 입니다.</h5>
											<h5><strong>프로필 사진</strong>, <strong>비밀번호</strong>, <strong>사원번호</strong>는
											공백일 경우 기존 데이터로 유지됩니다.</h5>
										</td>
									</tr>
									<tr>
										<th>이름(*)</th>
										<td><input type="text" id="stf_nm_up" name="stf_nm"
											class="form-control" placeholder="이름"></td>
									</tr>
									<tr>
										<th>비밀번호(*)</th>
										<td>
											<div id="stf_pw1_Div_up">
												<input type="password" id="stf_pw1_up" class="form-control"
													placeholder="비밀번호"> <span id="stf_pw1_Span_up"></span>
											</div>
										</td>
									</tr>
									<tr>
										<th>비밀번호 확인(*)</th>
										<td><input type="password" id="stf_pw2_up"
											class="form-control" placeholder="비밀번호 확인"> <input
											type="hidden" id="stf_pw_up" name="stf_pw" class="form-control"
											placeholder="비밀번호"></td>
									</tr>
									<tr>
										<th>사원번호(*)</th>
										<td>
											<input
											type="hidden" id="stf_sq_old" name="stf_sq_old" class="form-control">
											<div class="col-sm-9 col-md-10 leftNoPadding">
												<div id="stf_sq_Div_up">
													<input type="text" id="stf_sq1_up" class="form-control"
														placeholder="사원번호"> <span id="stf_sq_Span_up"></span>
												</div>
											</div>

											<button type="button" id="stfNumSearchBtn_up"
												class="btn btn-default col-sm-3 col-md-2">중복확인</button> <input
											type="hidden" id="stf_sq_up" name="stf_sq" class="form-control">
											
										</td>
									</tr>
									<tr>
										<th>권한(*)</th>
										<td><select id="admn_sq_up" name="admn_sq"
											class="form-control">
												<c:forEach items="${selectAdmn_Tb}" var="map">
													<option value="${map.ADMN_SQ}">${map.ADMN_PW}</option>
												</c:forEach>
										</select></td>
									</tr>									
									<tr>
										<th>부서(*)</th>
										<td><select id="dpt_sq_up" name="dpt_sq"
											class="form-control">
												<c:forEach items="${selectDpt_Div_Tb}" var="map">
													<option value="${map.DPT_SQ}">${map.DPT_NM}</option>
												</c:forEach>
										</select></td>
									</tr>
									<tr>
										<th>직급(*)</th>
										<td><select id="rnk_sq_up" name="rnk_sq"
											class="form-control">
												<c:forEach items="${selectRnk_Tb}" var="map">
													<option value="${map.RNK_SQ}">${map.RNK_NM}</option>
												</c:forEach>
										</select></td>
									</tr>
									<tr>
										<th>주소(*)</th>
										<td>

											<div class="col-sm-9 col-md-10 leftNoPadding">
												<input type="text" id="stf_cm_add_up" name="stf_cm_add"
													class="form-control" placeholder="주소" readonly="readonly">
											</div>
											<button class="btn btn-primary" id="zipcode_update" type="button" data-toggle="modal" data-target="#zip_codeModal_1">주소검색</button>						
										</td>
									</tr>
									<tr>
										<th>상세주소(*)</th>
										<td><input type="text" id="stf_dt_add_up" name="stf_dt_add"
											class="form-control" placeholder="상세주소"></td>
									</tr>
									<tr>
										<th>이메일(*)</th>
										<td><input type="email" id="stf_eml_up" name="stf_eml"
											class="form-control" placeholder="이메일"></td>
									</tr>

									<tr>
										<th>휴대폰(*)</th>
										<td>
											<div class="col-sm-2 col-md-2 leftNoPadding rightNoPadding">
												<select id="phoneNum1_up" class="form-control">
													<option value="010">010</option>
													<option value="011">011</option>
													<option value="016">016</option>
													<option value="017">017</option>
													<option value="018">018</option>
													<option value="019">019</option>
												</select>
											</div>
											<div
												class="col-sm-1 col-md-1 text-center leftNoPadding rightNoPadding">
												<h5>-</h5>
											</div>
											<div class="col-sm-4 col-md-4 leftNoPadding rightNoPadding">
												<input type="text" id="phoneNum2_up" class="form-control telNumMax" />
											</div>
											<div
												class="col-sm-1 col-md-1 text-center leftNoPadding rightNoPadding">
												<h5>-</h5>
											</div>
											<div class="col-sm-4 col-md-4 leftNoPadding rightNoPadding">
												<input type="text" id="phoneNum3_up" class="form-control telNumMax" />
											</div> <input type="hidden" id="stf_ph_up" name="stf_ph"
											class="form-control">
										</td>
									</tr>
									<tr>
										<th>내선번호</th>
										<td>
											<div class="col-sm-2 col-md-2 leftNoPadding rightNoPadding">
												<input type="text" id="telNum1_up" class="form-control"
													value="070" readonly="readonly" />
											</div>
											<div
												class="col-sm-1 col-md-1 text-center leftNoPadding rightNoPadding">
												<h5>-</h5>
											</div>
											<div class="col-sm-4 col-md-4 leftNoPadding rightNoPadding">
												<input type="text" id="telNum2_up" class="form-control telNumMax" />
											</div>
											<div
												class="col-sm-1 col-md-1 text-center leftNoPadding rightNoPadding">
												<h5>-</h5>
											</div>
											<div class="col-sm-4 col-md-4 leftNoPadding rightNoPadding">
												<input type="text" id="telNum3_up" class="form-control telNumMax" />
											</div> <input type="hidden" id="stf_bs_ph_up" name="stf_bs_ph"
											class="form-control">
										</td>
									</tr>
									<tr>
										<th>입사일(*)</th>
										<td><input type="date" id="stf_ent_up" name="stf_ent"
											class="form-control" placeholder="입사일"></td>
									</tr>
								</tbody>
							</form>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" id="officerUpdate" class="btn btn-success">수정</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
	<!-- 구성원 수정 모달 끝  -->
	
	<!-- 우편번호 조회(수정용) 모달  -->
	<div class="modal fade" id="zip_codeModal_1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header text-center">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h3 class="modal-title" id="myModalLabel">우편번호</h3>
            </div>    
            <div class="modal-body text-center">
                 <form id = "zip_codeForm1">
                         <div class = "input-group">
                            <span class = "input-group-addon">동 입력</span>
                            <input type="text" class = "form-control" name="query" id="query1">
                            <span class = "input-group-btn">                                                
                                <input type="submit" class = "btn btn-warning" value="검색" id="searchBtn_1" onkeydown="javascript:if(event.keyCode==13)">                                            
                            </span>
                        </div>
                </form>
                <p>
                </p>
                <div>
                <div style="width:100%; height:200px; overflow:auto">
                       <table class = "table text-center">
                        <thead>
                            <tr>
                                <th style="width:150px;">우편번호</th>
                                <th style="width:600px;">주소</th>
                                </tr>
                        </thead>
                        <tbody id="zip_codeList1"></tbody>
                    </table>
                </div>
                </div>
            </div>
        </div>
    </div>
	</div>
	<!--  우편번호 조회(수정용) 모달 끝 -->
	
	<!--main content start--> 
	<section id="main-content"> 
	<section class="wrapper">
	<div class="mail-w3agile">
		<!-- page start-->
		<!-- 조직도 왼쪽 -->
		<div class="row">
			<div id="leftMenu" class="col-sm-4 col-md-3">
				<section id="leftTop">
				<div class="panel-body">
					<div class="panel">
						<font size="5"><strong>조직도 관리</strong></font>
						<!-- 버튼 위치 조절 수동 -->
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;
						<!----------------->
						<span align="left">
							<button class="btn btn-primary btn-sm" id="deptManage"
								type="button" data-toggle="modal" data-target="#DeptModal">관리</button>
						</span>
					</div>
					<ul class="easyui-tree">
						 <li>
						 	<span>KITRI 주식회사</span>
								 <ul>
									<c:forEach items="${selectDpt_Div_Tb}" var="dptmap">
										<li data-options="state:'open'">
											<span>${dptmap.DPT_NM}</span>
											<ul>
												<c:forEach items="${selectStf_tb}" var="stfmap">
													<c:if test="${dptmap.DPT_NM eq stfmap.DPT_NM}">
														<li>
														[${stfmap.RNK_NM}] ${stfmap.STF_NM}
														</li>
													</c:if>
												</c:forEach>
											</ul>
										</li>
									</c:forEach> 
							</ul>
						</li>
					</ul>
				</div>
				</section>
			</div>
			<!-- 조직도 왼쪽 메뉴 끝 -->
			<div class="col-sm-14 col-md-9">
				<section class="panel"> 
				<header class="panel-heading wht-bg">
				<h4 class="gen-case">
					<b>구성원 보기</b>
				</header>
				</h4>
				<div id="rightBottom">
					<span> <label>전체 : </label> <span id="userCount">
							${officerListCount}
					</span>명 <input type="hidden" id="navStfNm" value="${navStfNm }" />
					</span> &nbsp; <span>
						<button class="btn btn-success btn-sm" id="insertModal" type="button"
							data-toggle="modal" data-target="#insertModal">구성원 추가</button>
						<button type="button" id="UpdateModal" class="btn btn-warning btn-sm"  
								data-backdrop="static" data-toggle="modal" data-target="#updateModal">구성원 수정</button>
						<button type="button" id="delete" class="btn btn-danger btn-sm">구성원 삭제</button>				
					</span>
				</div>
				<div class="table-responsive">
					<table id="officerList" class="tableMiddle table table-hover">
						<colgroup>
							<col />
							<col width="15%" />
							<col width="10%" />
							<col width="13%" />
							<col width="15%" />
							<col width="20%" />
							<col width="10%"/>
						</colgroup>
						<thead>
							<tr class="active">
								<th class="text-center">V</th>
								<th class="text-center">이름</th>
								<th class="text-center">직급</th>
								<th class="text-center">조직</th>
								<th class="text-center">권한</th>
								<th class="text-center">휴대폰</th>
								<th class="text-center">메일</th>
							</tr>
						</thead>
						
								<tbody>
									<c:forEach items="${officerList}" var="map">
										<tr>
											<td>
											<input type="radio" class="radio"value="${map.STF_SQ}"></td>
											<td>${map.STF_NM}</td>
											<td>${map.RNK_NM}</td>
											<td>${map.DPT_NM}</td>
											<td>${map.ADMN_PW}</td>
											<td>${map.STF_PH}</td>
											<td>${map.STF_BS_PH}</td>
											<td>${map.STF_EML}</td>
										</tr>
									</c:forEach>
								</tbody>
								
					</table>
					<div class="unstyled inbox-pagination" align="center">
						 ${pageIndexList}
					</div>
				</div>
				</section>
			</div>
		</div>
		<!-- page end-->
	</div>
	</section>
	
	<!-- 기능부 스크립트 시작 -->
	<script type="text/javascript">
	<!-- JQUERY SCRIPT -->
	$(document).ready(function() {
		// 우편번호 검색기능(구성원 추가)
		$("#searchBtn").click(function(e){
			$('body').css('overflow-y', 'hidden');
	        e.preventDefault();
	        // AJAX
	        $.ajax({
	            // organization controller 진입 url
	            url : '${root}/organization/zipcodeList.kitri',
	            // zip_codeForm을 serialize 해줍니다.
	            data : $("#zip_codeForm").serialize(),
	            type : "POST",
	            // dataType 은 json형태로 보냅니다.
	            dataType : "json",
	            success : function(result){
	                $("#zip_codeList").empty();
	                var html = "";
	                if(result.errorCode != null && result.errorCode != ""){
	                    html += "<tr>";
	                    html += "    <td colspan='2'>";
	                    html +=            result.errorMessage;
	                    html += "    </td>";
	                    html += "</tr>";
	                }
	                else{
	                    // 검색결과를 list에 담는다.
	                    var list = result.list;   
	                    for(var i = 0; i < list.length; i++){
	                        html += "<tr>";
	                        html += "    <td>";
	                        // 우편번호
	                        var zipcode = list[i].zipcode;
	                        // 주소
	                        var address = list[i].address;
	                        html +=         list[i].zipcode;
	                        html += "    </td>";
	                        html += "    <td>";
	                        html +=     '<a href="#" onclick="put(\'' + list[i].address + '\',\'' + zipcode + '\')">' + address + '</a>';
	                        html += "    </td>";
	                        html += "</tr>";
	                    }
	                }
	                // 완성된 html(우편번호 list)를 zip_codeList밑에 append
	                $("#zip_codeList").append(html);	                
	            }
	        });
	   	 });
		// 우편번호검색(구성원 수정)
		$("#searchBtn_1").click(function(e){
				$('body').css('overflow-y', 'hidden');
	       		e.preventDefault();
	        	// AJAX
	       		 $.ajax({
	            	// organization controller 진입 url
	            	url : '${root}/organization/zipcodeList.kitri',
	            	// zip_codeForm을 serialize 해줍니다.
	            	data : $("#zip_codeForm1").serialize(),
	            	type : "POST",
	            	// dataType 은 json형태로 보냅니다.
	            	dataType : "json",
	            	success : function(result){
	                	$("#zip_codeList").empty();
	                	var html = "";
	                	if(result.errorCode != null && result.errorCode != ""){
	                    	html += "<tr>";
	                    	html += "    <td colspan='2'>";
	                    	html +=            result.errorMessage;
	                    	html += "    </td>";
	                    	html += "</tr>";
	                	}
	               	 	else {
	                    	// 검색결과를 list에 담는다.
	                    	var list = result.list;   
	                    	for(var i = 0; i < list.length; i++){
	                        	html += "<tr>";
	                        	html += "    <td>";
	                        	// 우편번호
	                        	var zipcode = list[i].zipcode;
	                        	// 주소
	                        	var address = list[i].address;
	                        	html +=         list[i].zipcode;
	                        	html += "    </td>";
	                        	html += "    <td>";
	                        	html +=     '<a href="#" onclick="put(\'' + list[i].address + '\',\'' + zipcode + '\')">' + address + '</a>';
	                        	html += "    </td>";
	                        	html += "</tr>";
	                    	}
	                	}
	                // 완성된 html(우편번호 list)를 zip_codeList밑에 append
	                $("#zip_codeList1").append(html);	                
	            }
	        });
	   	 });
		
		// 사원 검색
		$("#search").on("click", function() {
			if ($("#keyword").val() == "") {
				alert("검색어를 최소 1글자 이상 입력해주세요.");
				return;
			} else if ($("#keyword").val() != "")
				var params = {
					cate : $("#cate").val(),
					keyword : $("#keyword").val()
			};
		   officerListSearch(params);
		});
		// AJAX 페이징 처리
		$(document).on("click", "#pageIndexListAjax > li > a", function() {
			 var params = {
					cate : $("#cate").val(),
					keyword : $("#keyword").val(),
					page : $(this).attr("data-page")
				};
			
			officerListSearch(params);
		});
		
		// 입사일 자동입력(구성원 추가 모달)
		$("#officerInsertModal").on("click", function() {
			var date = new Date();
			var yyyy = date.getFullYear();
			var mm = (date.getMonth() + 1)
			var dd = date.getDate();
			if (mm < 10) {
				mm = "0" + mm;
			}
			if (dd < 10) {
				dd = "0" + dd;
			}
			date = yyyy + "-" + mm + "-" + dd;
			$("#stf_ent").val(date);
		});
		// 한글 입력 방지
		$("#stf_eml, #stf_sq1").on("keyup", function() {
			$(this).val($(this).val().replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, ""));
		});
		// 업데이트 숫자만 입력
		$(".telNumMax").on("keyup", function() {
			$(this).val($(this).val().replace(/[^0-9]/gi, ""));
			// 전화번호 최대 입력 방지
			if ($(this).val().length > 4) {
				$(this).val($(this).val().substring(0, 4));
			}	
			if ($(this).attr("id") == "phoneNum2" || $(this).attr("id") == "phoneNum3") {
				var phoneNum = $("#phoneNum1").val() + "-" + $("#phoneNum2").val() + "-" + $("#phoneNum3").val();
				$("#stf_ph").val(phoneNum);
			}
			else if ($(this).attr("id") == "telNum2" || $(this).attr("id") == "telNum3") {
				var telNum = $("#telNum1").val() + "-" + $("#telNum2").val() + "-" + $("#telNum3").val();
				$("#stf_bs_ph").val(telNum);
			}			
			else if ($(this).attr("id") == "phoneNum2_up" || $(this).attr("id") == "phoneNum3_up") {
				var phoneNum = $("#phoneNum1_up").val() + "-" + $("#phoneNum2_up").val() + "-" + $("#phoneNum3_up").val();
				$("#stf_ph_up").val(phoneNum);
			}
			else if ($(this).attr("id") == "telNum2_up" || $(this).attr("id") == "telNum3_up") {
				var telNum = $("#telNum1_up").val() + "-" + $("#telNum2_up").val() + "-" + $("#telNum3_up").val();
				$("#stf_bs_ph_up").val(telNum);
			}
		});			
		// 비밀번호 자동 입력 1(구성원 추가 모달)
		$("#stf_pw1").on("keyup", function() {
			if ($("#stf_pw1").val() == "" && $("#stf_pw2").val() == "") {
				$("#stf_pw1_Div").removeAttr("class");
				$("#stf_pw1_Span").removeAttr("class");
			} else if ($("#stf_pw1").val() == $("#stf_pw2").val()) {
				$("#stf_pw").val($("#stf_pw1").val());
				$("#stf_pw1_Div").attr("class",	"has-success has-feedback");
				$("#stf_pw1_Span").attr("class", "glyphicon glyphicon-ok form-control-feedback");
			} else if ($("#stf_pw1").val() != $("#stf_pw2").val()) {
				$("#stf_pw").val("");
				$("#stf_pw1_Div").attr("class",	"has-error has-feedback");
				$("#stf_pw1_Span").attr("class", "glyphicon glyphicon-remove form-control-feedback");
			}
		});
		// 비밀번호 자동입력 2(구성원 추가 모달)
		$("#stf_pw2").on("keyup", function() {
			if ($("#stf_pw2").val() == "" || $("#stf_pw1").val() == "") {
				$("#stf_pw1_Div").removeAttr("class");
				$("#stf_pw1_Span").removeAttr("class");
			} else if ($("#stf_pw2").val() == $("#stf_pw1").val()) {
				$("#stf_pw").val($("#stf_pw2").val());
				$("#stf_pw1_Div").attr("class",	"has-success has-feedback");
				$("#stf_pw1_Span").attr("class", "glyphicon glyphicon-ok form-control-feedback");
			} else if ($("#stf_pw2").val() != $("#stf_pw1").val()) {
				$("#stf_pw").val("");
				$("#stf_pw1_Div").attr("class",	"has-error has-feedback");
				$("#stf_pw1_Span").attr("class", "glyphicon glyphicon-remove form-control-feedback");
			} else if ($("#stf_pw2").val() != $("#stf_pw1").val()) {
				$("#stf_pw").val("");
				$("#stf_pw1_Div").attr("class",	"has-error has-feedback");
				$("#stf_pw1_Span").attr("class", "glyphicon glyphicon-remove form-control-feedback");
			} 
		});
		// 비밀번호 자동입력 3(구성원 수정 모달)
		$("#stf_pw1_up").on("keyup", function() {
			if ($("#stf_pw1_up").val() == "" && $("#stf_pw2_up").val() == "") {
				$("#stf_pw1_Div_up").removeAttr("class");
				$("#stf_pw1_Span_up").removeAttr("class");
			} else if ($("#stf_pw1_up").val() == $("#stf_pw2_up").val()) {
				$("#stf_pw_up").val($("#stf_pw1_up").val());
				$("#stf_pw1_Div_up").attr("class",	"has-success has-feedback");
				$("#stf_pw1_Span_up").attr("class", "glyphicon glyphicon-ok form-control-feedback");
			} else if ($("#stf_pw1_up").val() != $("#stf_pw2_up").val()) {
				$("#stf_pw_up").val("");
				$("#stf_pw1_Div_up").attr("class",	"has-error has-feedback");
				$("#stf_pw1_Span_up").attr("class", "glyphicon glyphicon-remove form-control-feedback");
			}
		});
		// 비밀번호 자동입력 4(구성원 수정 모달)
		$("#stf_pw2_up").on("keyup", function() {
			if ($("#stf_pw2_up").val() == "" && $("#stf_pw1_up").val() == "") {
				$("#stf_pw1_Div_up").removeAttr("class");
				$("#stf_pw1_Span_up").removeAttr("class");
			} else if ($("#stf_pw2_up").val() == $("#stf_pw1_up").val()) {
				$("#stf_pw_up").val($("#stf_pw2_up").val());
				$("#stf_pw1_Div_up").attr("class",	"has-success has-feedback");
				$("#stf_pw1_Span_up").attr("class", "glyphicon glyphicon-ok form-control-feedback");
			} else if ($("#stf_pw2_up").val() != $("#stf_pw1_up").val()) {
				$("#stf_pw_up").val("");
				$("#stf_pw1_Div_up").attr("class",	"has-error has-feedback");
				$("#stf_pw1_Span_up").attr("class", "glyphicon glyphicon-remove form-control-feedback");
			}
		});
		// 사원번호 자동입력 (구성원 추가 모달)
		$("#stfNumSearchBtn").on("click", function() {
			if ($("#stf_sq1").val() == "") {
				alert("사원번호를 입력해주세요.");
			} else if ($("#stf_sq1").val() != "") {
				selectStf_sq($("#stf_sq1").val());
			}
		});
		// 사원번호 다시체크 (구성원 추가)
		$("#stf_sq1").on("keyup", function() {
			if ($("#stf_sq1").val() != $("#stf_sq").val()) {
				$("#stf_sq_Div").removeAttr("class");
				$("#stf_sq_Span").removeAttr("class");
				$("#stf_sq").val("");
			}
		});
		// 사원번호 자동입력 (구성원 수정)
		$("#stfNumSearchBtn_up").on("click", function() {
			if ($("#stf_sq1_up").val() == "") {
				alert("사원번호를 입력해주세요.");
			} else if ($("#stf_sq1_up").val() != "") {
				selectStf_sq($("#stf_sq1_up").val());
			}
		});
		// 사원번호 다시체크 (구성원 수정)
		$("#stf_sq1_up").on("keyup", function() {
			if ($("#stf_sq1_up").val() != $("#stf_sq").val()) {
				$("#stf_sq_Div_up").removeAttr("class");
				$("#stf_sq_Span_up").removeAttr("class");
				$("#stf_sq_up").val("");
			}
		});
		// 최대 입력 방지 1
		$("#stf_sq1, #stf_sq1_up").on("keyup", function() {
			if ($(this).val().length > 10) {
				$(this).val($(this).val().substring(0, 10));
			}
		});
		// 최대 입력 방지 2
		$("#stf_dt_add").on("keyup", function() {
			if ($(this).val().length > 33) {
				$(this).val($(this).val().substring(0, 33));
			}
		});
		// 구성원 추가
		$("#officerInsert").on("click",	function() {
			var emailCheck = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
			if ($("#file").val() == "") {
				alert("프로필 사진을 확인해주세요.");
				return;
			} else if ($("#stf_nm").val() == "") {
				alert("이름을 확인해주세요.");
				return;
			} else if ($("#stf_pw").val() == "") {
				alert("비밀번호를 확인해주세요.");
				return;
			} else if ($("#stf_sq").val() == "") {
				alert("사원번호를 확인해주세요.");
				return;
			} else if ($("#stf_cm_add").val() == ""
					|| $("#stf_dt_add").val() == "") {
				alert("주소를 확인해주세요.");
				return;
			} else if (!emailCheck.test($(
					"#stf_eml").val())) {
				alert("이메일을 확인해주세요.");
				return;
			} else if ($("#stf_ph").val().length != 13) {
				alert("휴대폰 번호를 확인해주세요.");
				return;
			} else if ($("#stf_bs_ph").val().length != 13) {
				alert("내선번호를 확인해주세요.");
				return;
			}
			else if ($("#stf_ent").val() == "") {
				alert("입사일을 확인해주세요.");
				return;
			}
			officerInsert();
		});
		// 구성원 수정
		$("#officerUpdate").on("click",	function() {
			var emailCheck = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
			if ($("#stf_nm_up").val() == "") {
				alert("이름을 확인해주세요.");
				return;
			} else if ($("#stf_pw1_up").val() != $("#stf_pw2_up").val()) {
				alert("비밀번호를 확인해주세요.");
				return;
			} else if ($("#stf_cm_add_up").val() == ""
					|| $("#stf_dt_add_up").val() == "") {
				alert("주소를 확인해주세요.");
				return;
			} else if (!emailCheck.test($(
					"#stf_eml_up").val())) {
				alert("이메일을 확인해주세요.");
				return;
			} else if ($("#stf_ph_up").val().length != 13) {
				alert("휴대폰 번호를 확인해주세요.");
				return;
			} else if ($("#stf_bs_ph_up").val().length != 13) {
				alert("내선번호를 확인해주세요.");
				return;
			} else if ($("#stf_ent_up").val() == "") {
				alert("입사일을 확인해주세요.");
				return;
			}
			officerUpdate();
		});
		// 파일 이미지 미리보기
		$("#file, #file_up").on("change", function(event) {
			var input = this;
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$('#imgView').attr('src', e.target.result);
					$('#imgView_up').attr('src', e.target.result);
				}
				reader.readAsDataURL(input.files[0]);
			}
		});
		// 최대 입력방지 3
		$(document).on("keyup", "#addDept, #deptNmUp", function() {
			if ($(this).val().length > 8) {
				$(this).val($(this).val().substring(0, 8));
			}
		});
			
		// 부서명 삭제
		$(document).on("click", "#deptDelete", function() {
			var dpt_sq = $(this).parent().children("div").attr("data-value");
			deptDelete(dpt_sq);
		});
		
		// 부서명 입력
		$("#deptInsert").on("click", function() {
			deptInsert();
		});
		
		// 조직도 닫은 후 강제 redirect
		$("#deptClose").on("click", function() {
			window.location = '${root}/organization/organization.kitri';
		});
		
		
	});
	
	/// JAVA SCRIPT ///
	// 원하는 우편번호 선택시 함수 실행
	function put(address,zipcode){
    	var address = address;
    	var zipcode = zipcode;
    	// 모달창 닫고, 선택값 대입
    	$('#zip_codeModal').removeClass('in');
    	$('#zip_codeModal_1').removeClass('in');
    	$("#stf_cm_add").val(zipcode);
    	$("#stf_cm_add_up").val(zipcode);
        $("#zip_codeList1").empty();
	}	
	// 사원검색
	function officerListSearch(params) {
		$.ajax({
			url : "/organization/officerListSearch",
			type : "POST",
			dataType : "json",
			data : JSON.stringify(params),
			contentType : "application/json; charset=UTF-8",
			beforeSend : function() {
				$("#userCount").empty();
				$("#officerList > tbody").empty();
				$("#pageIndexList").empty();
			},
			success : function(data) {
	
				var officerListCount = data.officerListCount;
				var officerList = data.officerList;
				var pageIndexListAjax = data.pageIndexListAjax;
				$("#userCount").html(officerListCount);
				var tbody = $("#officerList > tbody");
				$.each(officerList,	function(idx, val) {
					tbody.append($('<tr>').append($('<td>',	{html : "<input type='radio' class='radio' value='"+val.STF_SQ+"'>"}))
										  .append($('<td>',	{html : "<img src='"+val.STF_PT_RT+"' class='profileImg'/>"}))
										  .append($('<td>',	{text : val.STF_NM}))
										  .append($('<td>',	{text : val.RNK_NM}))
										  .append($('<td>',	{text : val.DPT_NM}))
										  .append($('<td>',	{text : val.ADMN_PW}))
										  .append($('<td>',	{text : val.STF_PH}))
										  .append($('<td>',	{text : val.STF_BS_PH}))
										  .append($('<td>',	{text : val.STF_EML})));
				});		
				$("#pageIndexList").html(pageIndexListAjax);
			},
			error : function(request, status, error) {
				alert("list search fail :: error code: "
						+ request.status + "\n" + "error message: "
						+ error + "\n");
			}
		});
	}
	// 사원번호 중복 검색
	function selectStf_sq(data) {
		var params = {
			stf_sq : data
		};
		$.ajax({
			url : "${root}/organization/selectStf_Sq.kitri",
			type : "POST",
			dataType : "text",
			data : JSON.stringify(params),
			contentType : "application/json; charset=UTF-8",
			beforeSend : function() {
				$("#stf_sq").val("");
				$("#stf_sq_up").val("");
			},
			success : function(data) {
				var result = Number(data);
				if (result > 0) {
					alert("이미 존재하는 사원번호 입니다.");
					$("#stf_sq_Div").attr("class", "has-error has-feedback");
					$("#stf_sq_Span").attr("class", "glyphicon glyphicon-remove form-control-feedback");
					$("#stf_sq_Div_up").attr("class", "has-error has-feedback");
					$("#stf_sq_Span_up").attr("class", "glyphicon glyphicon-remove form-control-feedback");
				} else if (result == 0) {
					$("#stf_sq").val($("#stf_sq1").val());
					$("#stf_sq_up").val($("#stf_sq1_up").val());
					
					$("#stf_sq_Div").attr("class", "has-success has-feedback");
					$("#stf_sq_Span").attr("class", "glyphicon glyphicon-ok form-control-feedback");
					$("#stf_sq_Div_up").attr("class", "has-success has-feedback");
					$("#stf_sq_Span_up").attr("class", "glyphicon glyphicon-ok form-control-feedback");
				}
			},
			error : function(request, status, error) {
				alert("list search fail :: error code: "
						+ request.status + "\n" + "error message: "
						+ error + "\n");
			}
		});
	}
	// 사원 등록 AJAX 파일 업로드
	function officerInsert() {
		var params = {
			stf_sq : $("#stf_sq").val(),
			admn_sq : $("#admn_sq").val(),
			dpt_sq : $("#dpt_sq").val(),
			rnk_sq : $("#rnk_sq").val(),
			stf_nm : $("#stf_nm").val(),
			stf_pw : $("#stf_pw").val(),
			stf_ph : $("#stf_ph").val(),
			stf_cm_add : $("#stf_cm_add").val(),
			stf_dt_add : $("#stf_dt_add").val(),
			stf_bs_ph : $("#stf_bs_ph").val(),
			stf_eml : $("#stf_eml").val(),
			stf_ent : $("#stf_ent").val(),
		};
		$("#officerInsertForm").ajaxForm({
			url : "/admin/officerInsert",
			type : "POST",
			dataType : "text",
			data : JSON.stringify(params),
			enctype : "multipart/form-data",
			contentType : "application/json; charset=UTF-8",
			beforeSend : function() {
				$("#officerInsert").attr("disabled", "disabled");
			},
			success : function(data) {
				if (data == "SUCCESS") {
					alert("정상적으로 입력되었습니다.");
					window.location = "${root}/organization/organization.kitri";
				} else if (data == "FAIL") {
					alert("입력을 실패하였습니다.");
				}
			},
			error : function(request, status, error) {
				alert("list search fail :: error code: "
						+ request.status + "\n" + "error message: "
						+ error + "\n");
			}
		}).submit();
		$("#officerInsert").attr("disabled");
	}
	// 사원 정보 불러오기
	function selectUpdateOfficer() {
		var stf_sq = $("input[type=radio]:checked").val();
		var params = {
				stf_sq : stf_sq
		};
		$.ajax({
			url : "${root}/organization/selectUpdateOfficer.kitri",
			type : "POST",
			dataType : "json",
			data : JSON.stringify(params),
			contentType : "application/json; charset=UTF-8",
			beforeSend : function() {		
			},
			success : function(data) {		
				$("#imgView_up").attr("src", data.STF_PT_RT);
				$("#stf_nm_up").val(data.STF_NM);
				$("#stf_sq1_up").val(data.STF_SQ);
				$("#stf_sq_up").val(data.STF_SQ);
				$("#stf_sq_old").val(data.STF_SQ);
				$("#admn_sq_up").val(data.ADMN_SQ);
				$("#dpt_sq_up").val(data.DPT_SQ);
				$("#rnk_sq_up").val(data.RNK_SQ);
				$("#stf_cm_add_up").val(data.STF_CM_ADD);
				$("#stf_dt_add_up").val(data.STF_DT_ADD);
				$("#stf_eml_up").val(data.STF_EML);

				var arrPhoneNum = data.STF_PH.split("-");
				
				$("#phoneNum1_up").val(arrPhoneNum[0]);
				$("#phoneNum2_up").val(arrPhoneNum[1]);
				$("#phoneNum3_up").val(arrPhoneNum[2]);
				$("#stf_ph_up").val(data.STF_PH);
				
				var arrTelNum = data.STF_BS_PH.split("-");
				
				$("#telNum1_up").val(arrTelNum[0]);
				$("#telNum2_up").val(arrTelNum[1]);
				$("#telNum3_up").val(arrTelNum[2]);
				$("#stf_bs_ph_up").val(data.STF_BS_PH);
				
				$("#stf_ent_up").val(data.STF_ENT);		
			},
			error : function(request, status, error) {
				alert("list search fail :: error code: "
						+ request.status + "\n" + "error message: "
						+ error + "\n");
			}
		});
	}
	// 사원 수정파일 업로드
	function officerUpdate() {
		var params = {
			stf_sq : $("#stf_sq_up").val(),
			stf_sq_old : $("#stf_sq_old").val(),
			admn_sq : $("#admn_sq_up").val(),
			dpt_sq : $("#dpt_sq_up").val(),
			rnk_sq : $("#rnk_sq_up").val(),
			stf_nm : $("#stf_nm_up").val(),
			stf_pw : $("#stf_pw_up").val(),
			stf_ph : $("#stf_ph_up").val(),
			stf_cm_add : $("#stf_cm_add_up").val(),
			stf_dt_add : $("#stf_dt_add_up").val(),
			stf_bs_ph : $("#stf_bs_ph_up").val(),
			stf_eml : $("#stf_eml_up").val(),
			stf_ent : $("#stf_ent_up").val(),
		};
		$("#officerUpdateForm").ajaxForm({
			url : "${root}/organization/officerUpdate.kitri",
			type : "POST",
			dataType : "text",
			data : JSON.stringify(params),
			enctype : "multipart/form-data",
			contentType : "application/json; charset=UTF-8",
			beforeSend : function() {
				$("#officerUpdate").attr("disabled", "disabled");
			},
			success : function(data) {
				if (data == "SUCCESS") {
					alert("정상적으로 수정되었습니다.");
					window.location = "${root}/organization/organization.kitri";
				} else if (data == "FAIL") {
					alert("입력을 실패하였습니다.");
				}
			},
			error : function(request, status, error) {
				alert("list search fail :: error code: "
						+ request.status + "\n" + "error message: "
						+ error + "\n");
			}
		}).submit();
		$("#officerInsert").attr("disabled");
	}
	// 부서명 등록
	function deptInsert() {
		var params = {
				dpt_nm : $("#addDept").val()
		};
		$.ajax({
			url : "${root}/organization/deptInsert.kitri",
			type : "POST",
			dataType : "text",
			data : JSON.stringify(params),
			contentType : "application/json; charset=UTF-8",
			beforeSend : function() {
				$("#addDept").val("");
			},
			success : function(data) {
				if (data > 0) {
					alert("부서 추가를 성공하였습니다.");
					deptList();
				}
				else if (data == 0) {
					alert("부서 추가를 실패하였습니다.");
				}
			},
			error : function(request, status, error) {
				alert("list search fail :: error code: "
						+ request.status + "\n" + "error message: "
						+ error + "\n");
			}
		});
	}
	// 부서명 다시 가져오기
	function deptList(dpt_sq, dpt_nm) {
		$.ajax({
			url : "${root}/organization/selectDpt_Div_Tb.kitri",
			type : "POST",
			dataType : "json",
			contentType : "application/json; charset=UTF-8",
			beforeSend : function() {
				$("#dpt_sq_dept").empty();
			},
			success : function(data) {		
				var div = $("#dpt_sq_dept");	
				$.each(data, function(idx, val) {
					if (val.DPT_SQ != dpt_sq) {
						//div.append($('<div>', {class : "deptDiv", "data-value" : val.DPT_SQ, text : val.DPT_NM}))
						div.append($('<div>', {"class" : "has-feedback"})
						   .append($('<div>', {"class" : "deptDiv", "data-value" : val.DPT_SQ, text : val.DPT_NM}))
						   .append($('<button>', {id: "deptDelete", text:"삭제"})))
					}
				});
			},
			error : function(request, status, error) {
				alert("list search fail :: error code: "
						+ request.status + "\n" + "error message: "
						+ error + "\n");
			}
		});
	}	
	// 동일한 부서명 체크
	function selectDeptNm() {
		var params = {
				dpt_nm : $("#deptNmUp").val()
		};
		$.ajax({
			url : "${root}/organization/selectDeptNm.kitri",
			type : "POST",
			dataType : "text",
			data : JSON.stringify(params),
			contentType : "application/json; charset=UTF-8",
			beforeSend : function() {		
			},
			success : function(data) {
				if (data > 0) {
					alert("같은 이름의 부서명이 존재합니다.");
				}
				else if (data == 0) {
					deptUpdate();
				}
			},
			error : function(request, status, error) {
				alert("list search fail :: error code: "
						+ request.status + "\n" + "error message: "
						+ error + "\n");
			}
		});
	}
	
	// 부서명 삭제
	function deptDelete(data) {
		var params = {
				dpt_sq : data		
		};
		$.ajax({
			url : "${root}/organization/deptDelete.kitri",
			type : "POST",
			dataType : "text",
			data : JSON.stringify(params),
			contentType : "application/json; charset=UTF-8",
			beforeSend : function() {		
			},
			success : function(data) {	
				if (data > 0) {
					alert("부서 삭제를 성공하였습니다.");
					deptList();
				}
				else if (data == 0) {
					alert("부서 삭제를 실패하였습니다.");
				}
				else if (data == -1) {
					alert("부서에 임직원이 존재하여 삭제할 수 없습니다.");
				}
				
			},
			error : function(request, status, error) {
				alert("list search fail :: error code: "
						+ request.status + "\n" + "error message: "
						+ error + "\n");
			}
		});
	}
	</script>
</body>
</html>