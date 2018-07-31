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
		#blah {
			width:96px;
			height:126px;
		}
	</style>
	<section id="container"> 
	<!-- 조직관리 모달 시작 -->
	<div class="modal fade" id="DeptModal" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">조직관리</h4>
				</div>
				<div class="modal-body">
					<div>
						<table class="tableMiddle table table-hover">
							<tr>
								<td><a href="#">기획부</a></td>
							</tr>
							<tr>
								<td><a href="#">개발부</a></td>
							</tr>
							<tr>
								<td><a href="#">경영부</a></td>
							</tr>
							<tr>
								<td><a href="#">홍보부</a></td>
							</tr>
						</table>
					</div>
				</div>
				<div class="modal-footer">
					<div align="left">
						<strong>추가할 부서명 입력</strong>
					</div>
					<input type="text" class="form-control" placeholder="추가 부서명 입력">
					<span>
						<button type="button" id="applybutton" class="btn btn-primary btn-sm" data-dismiss="modal">등록</button>
						<button type="button" id="okbutton" class="btn btn-success btn-sm" data-dismiss="modal">닫기</button>
					</span>
				</div>
			</div>
		</div>
	</div>
	<!-- 조직관리 모달 끝   --> 
	
	<!-- 구성원 추가 모달 --> 
	<div class="modal fade" id="PersonModal" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">구성원 추가</h4>
				</div>
				<div class="modal-body">
					<div>
						<table class="tableMiddle table table-striped" enctype="multipart/form-data">
							<tr>
								<td>
									사진등록
								</td>
								<td>
								<!-- 사진 미리보기 기능 추가. (JPG, GIF, PNG외 다른 확장자 파일 제한)  -->
								<form id="form1" runat="server"> 
									<input type='file' id="applyphoto" class="form-control" onchange="readURL(this);" accept=".jpg,.gif,.png"/> 
									<img id="blah" src="#" alt="미리보기"/> 
								</form>
								이미지는 가로 96px, 세로 126px를 준수해 주세요.<br>(*)이 작성된 칸은 필수항목 입니다.
								</td>
							</tr>
							<tr>
								<td>이름(*)</td>
								<td><input type="text" id="name" class="form-control"></td>
							</tr>
							<tr>
								<td>비밀번호(*)</td>
								<td><input type="password" id="pass" class="form-control"></td>
							</tr>
							<tr>
								<td>비밀번호 확인(*)</td>
								<td><input type="password" id="passcheck" class="form-control"></td>
							</tr>
							<tr>
								<td>사원번호(*)</td>
								<td><input type="text" id="memberno" class="form-control"></td>
							</tr>
							<tr>
								<td>권한(*)</td>
								<td><input type="text" id="author" class="form-control"></td>
							</tr>
							<tr>
								<td>직급(*)</td>
								<td><input type="text" id="grade" class="form-control"></td>
							</tr>
							<tr>
								<td>우편번호(*)</td>
								<td>
									<input type="text" id="zipcode" class="col-xs-4" readonly="readonly" data-target="#zip_codeModal">
									&nbsp;
									<span>
										<button class="btn btn-primary btn-sm" id="addressBtn" type="button" data-toggle="modal" data-target="#zip_codeModal">우편번호 검색</button>
									</span>
								</td>
							</tr>
							<tr>
								<td>상세주소(*)</td>
								<td>
									<input type="text" id="addrdetail" class="form-control">
								</td>
							</tr>
							<tr>
								<td>이메일(*)</td>
								<td>
									<input type="text" id="email" class="form-control">
								</td>
							</tr>
							<tr>
								<td>휴대폰(*)</td>
								<td>
									<input type="text" id="tel1" class="col-xs-2">
									<input type="text" id="tel2" class="col-xs-2">
									<input type="text" id="tel3" class="col-xs-2">
								</td>
							</tr>
							<tr>
								<td>내선번호</td>
								<td>
									<input type="text" id="companytel1" class="col-xs-2">
									<input type="text" id="companytel2" class="col-xs-2">
									<input type="text" id="companytel3" class="col-xs-2">
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="modal-footer">
					<span>
						<button type="button" id="applybutton" class="btn btn-primary btn-sm" data-dismiss="modal">등록</button>
						<button type="button" id="okbutton" class="btn btn-success btn-sm" data-dismiss="modal">닫기</button>
					</span>
				</div>
			</div>
		</div>
	</div>
	<!-- 구성원 추가 모달 끝  -->
	
	<!-- 우편번호 조회 모달 -->
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
	
	<!-- 구성원 조회 /수정/삭제 모달 --> 
	
	<!-- 구성원 조회 /수정/삭제 모달 끝  -->
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
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
						<!----------------->
						<span align="left">
							<button class="btn btn-primary btn-sm" id="deptManage"
								type="button" data-toggle="modal" data-target="#DeptModal">관리</button>
						</span>
					</div>
					<ul class="easyui-tree">
						<li><span>KITRIWARE</span>
							<ul>
								<li data-options="state:'opened'"><span>기획부</span>
									<ul>
										<li><span>이부장</span></li>
										<li><span>김과장</span></li>
										<li><span>이대리</span></li>
										<li><span>박사원</span></li>
									</ul></li>
								<li><span>개발부</span>
									<ul>
										<li>박부장</li>
										<li>서과장</li>
										<li>함대리</li>
										<li>이사원</li>
									</ul></li>
								<li><span>경영부</span>
									<ul>
										<li>서부장</li>
										<li>임과장</li>
										<li>송대리</li>
										<li>김사원</li>
									</ul></li>
								<li><span>홍보부</span>
									<ul>
										<li>서부장</li>
										<li>임과장</li>
										<li>박대리</li>
										<li>박사원</li>
									</ul></li>
								<!-- data 둘어갈 시 원상복귀 시키기 -->
								<!-- <ul>
									<c:forEach items="${selectDpt_Div_Tb}" var="dptmap">
										<li data-options="state:'closed'"><span>${dptmap.DPT_NM}</span>
											<ul>
												<c:forEach items="${selectOrganization}" var="stfmap">
													<c:if test="${dptmap.DPT_NM eq stfmap.DPT_NM}">
														<li>[${stfmap.DPT_NM}/${stfmap.RNK_NM}]
															${stfmap.STF_NM}</li>
													</c:if>
												</c:forEach>
											</ul></li>
									</c:forEach> -->
								<!------------------------->
							</ul></li>
					</ul>
				</div>
				</section>
			</div>
			<!-- 조직도 왼쪽 메뉴 끝 -->
			<div class="col-sm-14 col-md-9">
				<section class="panel"> <header
					class="panel-heading wht-bg">
				<h4 class="gen-case">
					<b>구성원 보기</b>
				</header>
				</h4>
				<div id="rightBottom">
					<span> <label>전체 : </label> <span id="userCount">
							<!-- ${officerListCount}-->
					</span>명 <input type="hidden" id="navStfNm" value="${navStfNm }" />
					</span> &nbsp; <span>
						<button class="btn btn-success btn-sm" id="manage" type="button"
							data-toggle="modal" data-target="#PersonModal">구성원 추가</button>
					</span>
				</div>
				<div class="table-responsive">
					<table id="officerList" class="tableMiddle table table-hover">
						<colgroup>
							<col width="96PX" />
							<col width="15%" />
							<col width="15%" />
							<col width="15%" />
							<col width="15%" />
							<col width="15%" />
							<col width="15%" />
						</colgroup>
						<thead>
							<tr class="active">
								<th class="text-center">사진</th>
								<th class="text-center">이름</th>
								<th class="text-center">직급</th>
								<th class="text-center">조직</th>
								<th class="text-center">핸드폰번호</th>
								<th class="text-center">내선번호</th>
								<th class="text-center">이메일</th>
							</tr>
						</thead>
						<!-- 
								<tbody>
									<c:forEach items="${officerList}" var="map">
										<tr>
											<td class="text-center"><input type="checkbox" id=""></td>
											<td class="text-center"><img src="${map.STF_PT_RT}" class="profileImg"/></td>
											<td class="text-center">${map.STF_NM}</td>
											<td class="text-center">${map.RNK_NM}</td>
											<td class="text-center">${map.DPT_NM}</td>
											<td class="text-center">${map.STF_PH}</td>
											<td class="text-center">${map.STF_BS_PH}</td>
											<td class="text-center">${map.STF_EML}</td>
										</tr>
									</c:forEach>
								</tbody>
								--->
					</table>
					<div class="unstyled inbox-pagination" align="center">AJAX
						Paging 처리</div>
				</div>
				</section>
			</div>
		</div>

		<!-- page end-->
	</div>
	</section>
	
	<!-- 기능부 스크립트 시작 -->
	<script type="text/javascript">
	$(document).ready(function() {
		// 우편번호 검색기능
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
	});		
	// 원하는 우편번호 선택시 함수 실행
	function put(address,zipcode){
    	var address = address;
    	var zipcode = zipcode;
    	// 모달창 닫고, 선택값 대입
    	$('#zip_codeModal').removeClass('in')
    	$("#zipcode").val(zipcode);
    	$("#addrdetail").val(address);
        $("#zip_codeList").empty();
	}
	// 사진 업로드시 미리보기 업로드
	function readURL(input) {		
		if(input.files && input.files[0]){
			var reader = new FileReader(); 
			reader.onload = function (e) { 
				$('#blah').attr('src', e.target.result); 
			} 
			reader.readAsDataURL(input.files[0]);
		}
	}
	</script>
</body>
</html>