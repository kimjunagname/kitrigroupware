<title>KITRI GROUPWARE</title>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/commons/public.jsp"%>

<!-- jQuery EasyUi API -->
<link rel="stylesheet" type="text/css" href="${root}/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${root}/easyui/themes/icon.css">
<script type="text/javascript" src="${root}/easyui/jquery.easyui.min.js"></script>
<body>
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
	
	<!-- 구성원 수정  모달 --> 
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
							<form name="officerInsertForm" method="post">
								<tbody>
									<tr>
										<th>이름(*)</th>
										<td>
										<input type="text" id="stf_nm_in" name="stf_nm" class="form-control" placeholder="이름">
										</td>
									</tr>
									<tr>
										<th>비밀번호(*)</th>
										<td>
											<div id="stf_pw1_Div">
												<input type="password" id="stf_pw_in" name="stf_pw" class="form-control" placeholder="비밀번호"> 
											</div>
										</td>
									</tr>
									<tr>
										<th>비밀번호 확인(*)</th>
										<td>
											<input type="password" id="stf_pwcheck_in" name="stf_pwcheck" class="form-control" placeholder="비밀번호 확인"> 
										</td>
									</tr>
									<tr>
										<th>권한(*)</th>
										<td>
										 <select id="admn_sq_in" name="admn_sq" class="form-control">
												<option value="1">일반 사용자</option>    
        										<option value="2">회원 관리자</option>   				
        										<option value="3">총괄 관리자</option>          
										</select>						
										</td>
									</tr>
									<tr>
										<th>부서(*)</th>
										<td>
										<select id="dpt_sq_in" name="dpt_sq" class="form-control">
												<c:forEach items="${selectDpt_Div_Tb}" var="map">
														<option value="${map.DPT_SQ}">${map.DPT_NM}</option>
												</c:forEach>
										</select>
										</td>
									</tr>
									<tr>
										<th>직급(*)</th>
										<td><select id="rnk_sq_in" name="rnk_sq" class="form-control">
												<c:forEach items="${selectRnk_Tb}" var="map">
													<option value="${map.RNK_SQ}">${map.RNK_NM}</option>
												</c:forEach>
										</select></td>
									</tr>
									<tr>
										<th>우편번호(*)</th>
										<td>
											<div class="col-sm-9 col-md-10 leftNoPadding">
												<input type="text" id="stf_zip_add_in" name="stf_zip_add" class="form-control" placeholder="우편번호" readonly="readonly">
											</div>
											<button class="btn btn-primary" id="zipcode_in" type="button" data-toggle="modal" data-target="#zip_codeModal">주소검색</button>						
										</td>
									</tr>
									<tr>
										<th>주소(*)</th>
										<td>
											<div class="col-sm-9 col-md-10 leftNoPadding">
												<input type="text" id="stf_cm_add_in" name="stf_cm_add"
													class="form-control" placeholder="주소" readonly="readonly">
											</div>					
										</td>
									</tr>
									<tr>
										<th>상세주소(*)</th>
										<td><input type="text" id="stf_dt_add_in" name="stf_dt_add"
											class="form-control" placeholder="상세주소"></td>
									</tr>
									<tr>
										<th>이메일(*)</th>
										<td>
										<input type="text" id="stf_eml1_in" name="stf_eml1"
											 placeholder="이메일1">@
										<input type="text" id="stf_eml2_in" name="stf_eml2"
											 value="gmail.com" readonly="readonly"> 
										</td>
									</tr>
									<tr>
										<th>휴대폰(*)</th>
										<td>
											<div class="col-sm-2 col-md-2 leftNoPadding rightNoPadding">
												<select id="stf_ph1_up_in" name="stf_ph1" class="form-control">
													<option value="010">010</option>
													<option value="011">011</option>
													<option value="019">019</option>
												</select>
											</div>
											<div class="col-sm-1 col-md-1 text-center leftNoPadding rightNoPadding">
												<h5>-</h5>
											</div>
											<div class="col-sm-4 col-md-4 leftNoPadding rightNoPadding">
												<input type="text" id="stf_ph2_in" name="stf_ph2" class="form-control telNumMax" />
											</div>
											<div
												class="col-sm-1 col-md-1 text-center leftNoPadding rightNoPadding">
												<h5>-</h5>
											</div>
											<div class="col-sm-4 col-md-4 leftNoPadding rightNoPadding">
												<input type="text" id="stf_ph3_in" name="stf_ph3" class="form-control telNumMax"/>	
											</div> 
										</td>
									</tr>
									<tr>
										<th>내선번호</th>
										<td>
											<div class="col-sm-2 col-md-2 leftNoPadding rightNoPadding">
												<select class="form-control" name="stf_bs_ph1" id="stf_bs_ph1_in">
        											<option>02</option>
        											<option>031</option>
        											<option>032</option>
        										</select>  
											</div>
											<div class="col-sm-1 col-md-1 text-center leftNoPadding rightNoPadding">
												<h5>-</h5>
											</div>
											<div class="col-sm-4 col-md-4 leftNoPadding rightNoPadding">
												<input type="text" id="stf_bs_ph2_in" name="stf_bs_ph2" class="form-control telNumMax" />
											</div>
											<div class="col-sm-1 col-md-1 text-center leftNoPadding rightNoPadding">
												<h5>-</h5>
											</div>
											<div class="col-sm-4 col-md-4 leftNoPadding rightNoPadding">
												<input type="text" id="stf_bs_ph3_in" name="stf_bs_ph3" class="form-control telNumMax" />
											</div> 
										</td>
									</tr>
									<tr>
										<th>입사일(*)</th>
										<td>
										<input type="date" id="stf_ent_in" name="stf_ent" class="form-control" placeholder="입사일"></td>
									</tr>
								</tbody>
							</form>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" id="officerInsert" class="btn btn-success">추가</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
	<!-- 구성원 추가 모달 끝  -->
	
	<!-- 구성원 수정  모달 --> 
	<div class="modal fade" id="updateModal" role="dialog">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">구성원 수정</h4>
					</div>
					<div class="modal-body">
						<table class="tableMiddle table table-striped table-bordered ">
							<colgroup>
								<col width="30%" />
								<col width="70%" />
							</colgroup>
							<thead>
							</thead>
							<form name="officerUpdateForm" method="post">
								<tbody>
									<tr>
										<th>이름(*)</th>
										<td>
										<input type="text" id="stf_nm" name="stf_nm" class="form-control" placeholder="이름">
										</td>
									</tr>
									<tr>
										<th>비밀번호(*)</th>
										<td>
											<div id="stf_pw1_Div">
												<input type="password" id="stf_pw" name="stf_pw" class="form-control" placeholder="비밀번호" readonly="readonly"> 
											</div>
										</td>
									</tr>
									<tr>
										<th>비밀번호 확인(*)</th>
										<td>
											<input type="password" id="stf_pwcheck" name="stf_pwcheck" class="form-control" placeholder="비밀번호 확인" readonly="readonly"> 
										</td>
									</tr>
									<tr>
										<th>권한(*)</th>
										<td>
										 <select id="admn_sq" name="admn_sq" class="form-control">
												<option value="1">일반 사용자</option>    
        										<option value="2">회원 관리자</option>   				
        										<option value="3">총괄 관리자</option>          
										</select>						
										</td>
									</tr>
									<tr>
										<th>부서(*)</th>
										<td>
										<select id="dpt_sq" name="dpt_sq" class="form-control">
												<c:forEach items="${selectDpt_Div_Tb}" var="map">
														<option value="${map.DPT_SQ}">${map.DPT_NM}</option>
												</c:forEach>
										</select>
										</td>
									</tr>
									<tr>
										<th>직급(*)</th>
										<td><select id="rnk_sq" name="rnk_sq" class="form-control">
												<c:forEach items="${selectRnk_Tb}" var="map">
													<option value="${map.RNK_SQ}">${map.RNK_NM}</option>
												</c:forEach>
										</select></td>
									</tr>
									<tr>
										<th>우편번호(*)</th>
										<td>
											<div class="col-sm-9 col-md-10 leftNoPadding">
												<input type="text" id="stf_zip_add" name="stf_zip_add" class="form-control" placeholder="우편번호" readonly="readonly">
											</div>
											<button class="btn btn-primary" id="zipcode" type="button" data-toggle="modal" data-target="#zip_codeModal">주소검색</button>						
										</td>
									</tr>
									<tr>
										<th>주소(*)</th>
										<td>
											<div class="col-sm-9 col-md-10 leftNoPadding">
												<input type="text" id="stf_cm_add" name="stf_cm_add"
													class="form-control" placeholder="주소" readonly="readonly">
											</div>					
										</td>
									</tr>
									<tr>
										<th>상세주소(*)</th>
										<td><input type="text" id="stf_dt_add" name="stf_dt_add"
											class="form-control" placeholder="상세주소"></td>
									</tr>
									<tr>
										<th>사원번호(*)</th>
										<td><input type="text" id="stf_sq" name="stf_sq"
											class="form-control" readonly="readonly" placeholder="사원번호"></td>
									</tr>
									<tr>
										<th>이메일(*)</th>
										<td>
										<input type="text" id="stf_eml1" name="stf_eml1"
											 placeholder="이메일1">@
										<input type="text" id="stf_eml2" name="stf_eml2"
											 placeholder="이메일2" > 
										</td>
									</tr>
									<tr>
										<th>휴대폰(*)</th>
										<td>
											<div class="col-sm-2 col-md-2 leftNoPadding rightNoPadding">
												<select id="stf_ph1_up" name="stf_ph1" class="form-control">
													<option value="010">010</option>
													<option value="011">011</option>
													<option value="019">019</option>
												</select>
											</div>
											<div class="col-sm-1 col-md-1 text-center leftNoPadding rightNoPadding">
												<h5>-</h5>
											</div>
											<div class="col-sm-4 col-md-4 leftNoPadding rightNoPadding">
												<input type="text" id="stf_ph2" name="stf_ph2" class="form-control telNumMax" />
											</div>
											<div
												class="col-sm-1 col-md-1 text-center leftNoPadding rightNoPadding">
												<h5>-</h5>
											</div>
											<div class="col-sm-4 col-md-4 leftNoPadding rightNoPadding">
												<input type="text" id="stf_ph3" name="stf_ph3" class="form-control telNumMax"/>	
											</div> 
										</td>
									</tr>
									<tr>
										<th>내선번호</th>
										<td>
											<div class="col-sm-2 col-md-2 leftNoPadding rightNoPadding">
												<select class="form-control" name="stf_bs_ph1" id="stf_bs_ph1">
        											<option>02</option>
        											<option>031</option>
        											<option>032</option>
        										</select>  
											</div>
											<div class="col-sm-1 col-md-1 text-center leftNoPadding rightNoPadding">
												<h5>-</h5>
											</div>
											<div class="col-sm-4 col-md-4 leftNoPadding rightNoPadding">
												<input type="text" id="stf_bs_ph2" name="stf_bs_ph2" class="form-control telNumMax" />
											</div>
											<div class="col-sm-1 col-md-1 text-center leftNoPadding rightNoPadding">
												<h5>-</h5>
											</div>
											<div class="col-sm-4 col-md-4 leftNoPadding rightNoPadding">
												<input type="text" id="stf_bs_ph3" name="stf_bs_ph3" class="form-control telNumMax" />
											</div> 
										</td>
									</tr>
									<tr>
										<th>입사일(*)</th>
										<td>
										<input type="date" id="stf_ent" name="stf_ent" class="form-control" placeholder="입사일"></td>
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
	
	<!-- 구성원 퇴사  모달 --> 
	<div class="modal fade" id="layoffModal" role="dialog">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">구성원 퇴사</h4>
					</div>
					<div class="modal-body">
						<table class="tableMiddle table table-striped table-bordered ">
							<colgroup>
								<col width="30%" />
								<col width="70%" />
							</colgroup>
							<thead>
							</thead>
							<form name="officerLayoffForm" method="post">
								<tbody>
									<tr>
										<th>이름(*)</th>
										<td>
										<input type="text" id="stf_nm_lo" name="stf_nm" class="form-control" placeholder="이름" readonly="readonly">
										</td>
									</tr>
									<tr>
										<th>권한(*)</th>
										<td>
										 <select id="admn_sq_lo" name="admn_sq" class="form-control" disabled>
												<option value="1">일반 사용자</option>    
        										<option value="2">회원 관리자</option>   				
        										<option value="3">총괄 관리자</option>        
										</select>						
										</td>
									</tr>
									<tr>
										<th>부서(*)</th>
										<td>
										<select id="dpt_sq_lo" name="dpt_sq" class="form-control" disabled>
												<c:forEach items="${selectDpt_Div_Tb}" var="map">
													<option value="${map.DPT_SQ}">${map.DPT_NM}</option>
												</c:forEach>
										</select>
										</td>
									</tr>
									<tr>
										<th>직급(*)</th>
										<td><select id="rnk_sq_lo" name="rnk_sq" class="form-control" disabled>
												<c:forEach items="${selectRnk_Tb}" var="map">
													<option value="${map.RNK_SQ}">${map.RNK_NM}</option>
												</c:forEach>
										</select></td>
									</tr>
									
									<tr>
										<th>사원번호(*)</th>
										<td><input type="text" id="stf_sq_lo" name="stf_sq"
											class="form-control" readonly="readonly" placeholder="사원번호"></td>
									</tr>
									<tr>
										<th>이메일(*)</th>
										<td>
										<input type="text" id="stf_eml1_lo" name="stf_eml1"
											 placeholder="이메일1" readonly="readonly">@
										<input type="text" id="stf_eml2_lo" name="stf_eml2"
											 placeholder="이메일2" readonly="readonly"> 
										</td>
									</tr>
								</tbody>
							</form>
						</table>
					</div>
					<div class="modal-footer">
						<strong>퇴사 처리 하겠습니까?</strong>
						<button type="button" id="officerLayoff" class="btn btn-success">퇴사</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
	<!-- 구성원 탈퇴 모달 끝  -->
	
	<!-- 우편번호 조회(수정용) 모달  -->
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
	<!--  우편번호 조회 (수정용)모달 끝 -->
	
	<!-- 우편번호 조회(추가용) 모달  -->
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
	<!--  우편번호 조회(추가용) 모달 끝 -->

	
	
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
						<!----------------->
						<!--- 접속대상이 총괄관리자 일 경우에만 버튼 보이게 하기 --->
						<c:if test="${userinfo.admn_sq == 3}">
						<span align="left">
							<button class="btn btn-primary btn-sm" id="deptManage"
								type="button" data-toggle="modal" data-target="#DeptModal">관리</button>
						</span>
						</c:if>
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
					<b>구성원 관리</b>
				</header>
				</h4>
				<div id="rightBottom">
					<c:if test="${(userinfo.admn_sq == 2) || (userinfo.admn_sq==3)}">
					<span>
						<!-- 접속 대상이 총괄 or 회원관리자 일 경우에만 사용 가능. -->
						<button type="button" id="officerInsertModal" class="btn btn-primary btn-sm"  
								data-backdrop="static" data-toggle="modal">추가</button>
						<button type="button" id="officerUpdateModal" class="btn btn-warning btn-sm"  
								data-backdrop="static" data-toggle="modal">수정</button>
						<button type="button" id="officerLayoffModal" class="btn btn-danger btn-sm" 
								data-backdrop="static" data-toggle="modal">퇴사</button>
					</c:if>			
						<!-- 구성원 검색 -->
						<select id="cate">
							<option value="1">이름</option>
							<option value="2">직급</option>
							<option value="3">부서</option>
						</select>  
						<input type="text" id="keyword">
						<button type="button" class="btn btn-success btn-sm" id="search">검색</button>
						<button type="button" class="btn btn-primary btn-sm" id="alllist">전체보기</button>									
					</span>
				</div>
				<div class="table-responsive">
					<table id="officerList" class="tableMiddle table table-hover">
						<colgroup>
							<col width="3%"/>
							<col width="10%"/>
							<col width="15%"/>
							<col width="15%"/>
							<col width="14%"/>
							<col width="17%"/>
							<col width="35%"/>
							<col width="30%"/>
							<col width="20%"/>
						</colgroup>
						<thead>
							<tr class="active">
								<th class="text-center"></th>
								<th class="text-center">사번</th>
								<th class="text-center">이름</th>
								<th class="text-center">직급</th>
								<th class="text-center">부서</th>
								<th class="text-center">휴대폰</th>
								<th class="text-center">메일</th>
							</tr>
						</thead>
								<tbody>
									<c:forEach items="${officerList}" var="map">
										<tr id="officelist">
											<td>
												<input type="radio" name= "stf_sq" class="radio" value="${map.STF_SQ}">
											</td>
											<td>${map.STF_SQ}</td>
											<td>${map.STF_NM}</td>
											<td>${map.RNK_NM}</td>
											<td>${map.DPT_NM}</td>
											<td>${map.STF_PH1}-${map.STF_PH2}-${map.STF_PH3}</td>
											<td>${map.STF_EML1}@${map.STF_EML2}</td>
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
		
		// 구성원 추가 모달 띄우기
		$("#officerInsertModal").on("click", function() {	
			$("#officerInsertModal").attr("data-target", "#insertModal");
		});
		
		// 구성원 수정 모달 띄우기
		$("#officerUpdateModal").on("click", function() {	
			if ($(".radio").is(":checked") == false) {
				alert("사원을 선택해주세요.");
				return;
			}
			$("#officerUpdateModal").attr("data-target", "#updateModal");		
			selectUpdateOfficer();
		});
		
		// 구성원 탈퇴 모달 띄우기
		$("#officerLayoffModal").on("click", function() {	
			if ($(".radio").is(":checked") == false) {
				alert("사원을 선택해주세요.");
				return;
			}
			$("#officerLayoffModal").attr("data-target", "#layoffModal");
			selectLayoffOfficer();
		});
		
		// 구성원 탈퇴
		$("#officerLayoff").click(function(){
			document.officerLayoffForm.action = "${root}/organization/officerLayoff.kitri";
			document.officerLayoffForm.submit();
		});
		
		// 구성원 추가
		$("#officerInsert").click(function() {
			if ($("#stf_nm_in").val() == "") {
				alert("이름을 확인해주세요.");
				return;
			} else if ($("#stf_pw_in").val() != $("#stf_pwcheck_in").val()) {
				alert("비밀번호를 확인해주세요.");
				return;
			} else if ($("#stf_cm_add_in").val() == ""
					|| $("#stf_dt_add_in").val() == "") {
				alert("주소를 확인해주세요.");
				return;
			} else if ($("#stf_eml1_in").val() == "") {
				alert("이메일을 확인해주세요.");
				return;
			} else if ($("#stf_eml2_in").val() == "") {
				alert("이메일을 확인해주세요.");
				return;
			} else if ($("#stf_ph1_in").val() == "") {
				alert("휴대폰 번호를 확인해주세요.");
				return;
			} else if ($("#stf_ph2_in").val() == "") {
				alert("휴대폰 번호를 확인해주세요.");
				return;
			} else if ($("#stf_ph3_in").val() == "") {
				alert("휴대폰 번호를 확인해주세요.");
				return;
			} else if ($("#stf_bs_ph1_in").val() == "") {
				alert("내선번호를 확인해주세요.");
				return;
			} else if ($("#stf_bs_ph2_in").val() == "") {
				alert("내선번호를 확인해주세요.");
				return;
			} else if ($("#stf_bs_ph3_in").val() == "") {
				alert("내선번호를 확인해주세요.");
				return;
			} else if ($("#stf_ent_up_in").val() == "") {
				alert("입사일을 확인해주세요.");
				return;
			} else {
				document.officerInsertForm.action = "${root}/organization/officerInsert.kitri";
				document.officerInsertForm.submit();
			}
		});
		
		// 구성원 수정
		$("#officerUpdate").click(function() {
			if ($("#stf_nm").val() == "") {
				alert("이름을 확인해주세요.");
				return;
			} else if ($("#stf_pw").val() != $("#stf_pwcheck").val()) {
				alert("비밀번호를 확인해주세요.");
				return;
			} else if ($("#stf_cm_add").val() == ""
					|| $("#stf_dt_add").val() == "") {
				alert("주소를 확인해주세요.");
				return;
			} else if ($("#stf_eml1").val() == "") {
				alert("이메일을 확인해주세요.");
				return;
			} else if ($("#stf_eml2").val() == "") {
				alert("이메일을 확인해주세요.");
				return;
			} else if ($("#stf_ph1").val() == "") {
				alert("휴대폰 번호를 확인해주세요.");
				return;
			} else if ($("#stf_ph2").val() == "") {
				alert("휴대폰 번호를 확인해주세요.");
				return;
			} else if ($("#stf_ph3").val() == "") {
				alert("휴대폰 번호를 확인해주세요.");
				return;
			} else if ($("#stf_bs_ph1").val() == "") {
				alert("내선번호를 확인해주세요.");
				return;
			} else if ($("#stf_bs_ph2").val() == "") {
				alert("내선번호를 확인해주세요.");
				return;
			} else if ($("#stf_bs_ph3").val() == "") {
				alert("내선번호를 확인해주세요.");
				return;
			} else if ($("#stf_ent_up").val() == "") {
				alert("입사일을 확인해주세요.");
				return;
			} else {
				document.officerUpdateForm.action = "${root}/organization/officerUpdate.kitri";
				document.officerUpdateForm.submit();
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
		// 전체 클릭하면 전체 명단 보일수 있도록 강제로 redirect
		$("#alllist").on("click", function() {
			window.location = '${root}/organization/organization.kitri';
		});
		
		// 셀렉터 특정값 option 삭제
		$("#dpt_sq").find("option").each(function(){
			if(this.value == "0"){
				$(this).remove();
			}
		});
		$("#rnk_sq").find("option").each(function(){
			if(this.value == "50"){
				$(this).remove();
			}
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
    	$("#stf_zip_add").val(zipcode);
    	$("#stf_cm_add").val(address);
    	$("#stf_zip_add_in").val(zipcode);
    	$("#stf_cm_add_in").val(address);
        $("#zip_codeList").empty();
	}

	// 사원검색
	function officerListSearch(params) {
		$.ajax({
			url : "${root}/organization/officerListSearch.kitri",
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
					var stf_ph = val.STF_PH1 +'-'+ val.STF_PH2 +'-' + val.STF_PH3;
					var stf_eml = val.STF_EML1 +'@'+val.STF_EML2;
					tbody.append($('<tr>').append($('<td>',	{html : "<input type='radio' class='radio' value='"+val.STF_SQ+"'>"}))
										  .append($('<td>',	{html : val.STF_SQ}))
										  .append($('<td>',	{html : val.STF_NM}))
										  .append($('<td>',	{html : val.RNK_NM}))
										  .append($('<td>',	{html : val.DPT_NM}))
										  .append($('<td>',	{html : stf_ph}))
										  .append($('<td>', {html : stf_eml})));	
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
				$("#stf_sq").val(data.STF_SQ);
				$("#stf_nm").val(data.STF_NM);
				$("#admn_sq").val(data.ADMN_SQ);
				$("#dpt_sq").val(data.DPT_SQ);
				$("#rnk_sq").val(data.RNK_SQ);
				$("#stf_cm_add").val(data.STF_CM_ADD);
				$("#stf_dt_add").val(data.STF_DT_ADD);
				$("#stf_eml1").val(data.STF_EML1);
				$("#stf_eml2").val(data.STF_EML2);
				$("#stf_ph1").val(data.STF_PH1);
				$("#stf_ph2").val(data.STF_PH2);
				$("#stf_ph3").val(data.STF_PH3);
						
				$("#stf_bs_ph1").val(data.STF_BS_PH1);
				$("#stf_bs_ph2").val(data.STF_BS_PH2);
				$("#stf_bs_ph3").val(data.STF_BS_PH3);
				
				$("#stf_ent").val(data.STF_ENT);
				$("#stf_pw").val(data.STF_PW);
				$("#stf_pwcheck").val(data.STF_PW);
				$("#stf_ent").val(data.STF_ENT);
				$("#stf_zip_add").val(data.STF_ZIP_ADD); 
			},
			error : function(request, status, error) {
				alert("list search fail :: error code: "
						+ request.status + "\n" + "error message: "
						+ error + "\n");
			}
		});
	}
	// 퇴사할 사원의 정보를 조회하기
	function selectLayoffOfficer(){
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
				$("#stf_nm_lo").val(data.STF_NM);
				$("#admn_sq_lo").val(data.ADMN_SQ);
				$("#dpt_sq_lo").val(data.DPT_SQ);
				$("#rnk_sq_lo").val(data.RNK_SQ);
				$("#stf_sq_lo").val(data.STF_SQ);
				$("#stf_eml1_lo").val(data.STF_EML1);
				$("#stf_eml2_lo").val(data.STF_EML2);
			},
			error : function(request, status, error) {
				alert("list search fail :: error code: "
						+ request.status + "\n" + "error message: "
						+ error + "\n");
			}
		});
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