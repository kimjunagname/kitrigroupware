<title>KITRI GROUPWARE</title>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/commons/public.jsp" %> 

<!-- jQuery EasyUi API -->
<link rel="stylesheet" type="text/css" href="${root}/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${root}/easyui/themes/icon.css">
<script type="text/javascript" src="${root}/easyui/jquery.easyui.min.js"></script>

	<!-- 편지쓰기 모달 시작 -->
	<div class="modal fade" id="insertModal" role="dialog">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">편지쓰기</h4>
					</div>
					<div class="modal-body">
						<form role="form" id="frm" method="post" action="${root}/email/register.kitri" enctype="multipart/form-data">
							<table id="list" class="table table-striped table-bordered">
								<colgroup>
									<col width="30%" />
									<col width="70%" />
								</colgroup>
								<thead>
								</thead>
								<tbody>
									<tr>
										<th>제목(*)</th>
										<td><input type="text" id="eml_nm" name="eml_nm"
											class="form-control" placeholder="이름"></td>
									</tr>
									<tr>
										<th>내용(*)</th>
										<td>
										<textarea id="eml_cnt" style="resize: none;" width: 100%" name="eml_cnt" rows="10" class="form-control">
										</textarea>
										</td>
									</tr>
									<tr>
										<th>보내는 사람(* 사원번호 입력) </th>
										<td>
											<div class="col-xs-4">
												<input type="text" id="stf_rcv_email" name="stf_rcv_sq" class="form-control" value="${userinfo.stf_sq}" readonly="readonly">
											</div>
										</td>										
									</tr>
									<tr>
										<th>받는 사람(* 사원번호 입력) </th>
										<td>
											<div class="col-xs-4">
												<input type="text" id="stf_snd_email" name="stf_snd_sq" class="form-control" readonly="readonly" > 
												<span>
													<button class="btn btn-primary btn-sm" id="searchNo" type="button" data-toggle="modal" data-target="#selectMemberModal">사원번호 검색</button>
												</span>
											</div>
										</td>										
									</tr>
									<tr>
										<th>파일첨부</th>
										<td>
											<input type="file" id="eml_pl_crs" name="file" class="form-control">
										</td>
									</tr>
								</tbody>
							</table>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" id="okbutton" class="btn btn-success"
							data-dismiss="modal">입력</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
		<!-- 편지쓰기 부트스트랩 모달 끝 -->
		
		<!-- 메일 조회시 부트스트랩 모달 시작 -->
		<div class="modal fade" id="readModal" role="dialog">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">편지 내용 읽기</h4>
					</div>
					<div class="modal-body">
					<table class="table table-striped table-bordered">
							<colgroup>
								<col width="30%" />
								<col width="70%" />
							</colgroup>
							<tbody>
								<tr>
									<th>제목</th>
									<td id="eml_nm1">${emailDto.eml_nm}</td>
								</tr>
								<tr>
									<th>내용</th>
									<td><textarea id="eml_cnt1" readonly="readonly" rows="10"
											style="width: 100%; resize: none;">
									${emailDto.eml_cnt}</textarea>
									</td>
								</tr>
								<tr>
									<th>받은사번</th>
									<td id="stf_nm1">${emailDto.stf_nm}</td>
								</tr>
								<tr>
									<th>받은시간</th>
									<td id="rcv_dt1">${emailDto.rcv_dt}</td>
								</tr>
								<tr>
									<th>첨부파일</th>
									<td id="eml_pl_nm1">${emailDto.eml_pl_nm}</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="modal-footer">
					    <button type="button" class="btn btn-success" data-dismiss="modal">확인</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
		<!-- 메일 조회시 부트스트랩 모달 끝 -->
		
		<!-- 메일 쓰기 회원정보 모달 시작 -->
		<div class="modal fade" id="selectMemberModal" role="dialog">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">보내는 사원을 선택하세요.</h4>
					</div>
				<div class="modal-body">
					<div id="dpt_sq_dept" class="form-group well">
						<ul class="easyui-tree" id="tt">
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
					<button type="button" id="selectMember" class="btn btn-success">선택</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
		</div>
	
		<!-- 메일 쓰기 회원정보 모달 끝 -->
		<!--main content start--> 
		<section id="main-content"> 
			<section class="wrapper">
			<div class="table-agile-info">
			<!-- page start-->
				<div class="row">
					<div class="col-sm-20 mail-w3agile">
						<section class="panel"> 
							<header class="panel-heading wht-bg">
								<h4 class="gen-case">
								<strong>수신 메일함</strong>
								<form id="rightTop" class="pull-right mail-src-position">
									<div>
										<span>
											<button class="btn btn-primary btn-sm" id="send" type="button" data-toggle="modal" data-target="#insertModal">메일작성</button>
										</span>
										<span>
											<button class="btn btn-danger btn-sm" id="emlRemove">편지 삭제</button>
										</span>
										<span>
											<button class="btn btn-success btn-sm" id="emlKeep">보관하기</button>
										</span>
									</div>
								</h4>
								</form>
							</header>
							<div class="panel-body minimal">
								<form role="form">
									<input id="div1" type="hidden" value="${emailDto.eml_sq}">
								</form>
								<div class="table-inbox-wrap ">
									<table id="rcvList" class="table table-inbox table-hover">
									<colgroup>
										<col width="30px" />
										<col width="250px" />
										<col width="60px" />
										<col width="100px" />
									</colgroup>
									<thead>
										<tr class="active">
											<th align="center">선택</th>
											<th align="center">제목</th>
											<th align="center">받은사번</th>
											<th align="center">수신시간</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach items="${rcvList}" var="emailDto">
										<tr valign="middle">
											<td class="eml_rm" data-value="${emailDto.eml_sq}">
											<input type="radio" name="radio" class="check" value="${emailDto.eml_sq}"></td>
											<td class="eml_rd" data-value="${emailDto.eml_sq}">
												<a href='#' data-toggle="modal" data-target="#readModal">${emailDto.eml_nm}</a>
											</td>
											<td>${emailDto.stf_snd_sq}</td>
											<td>${emailDto.rcv_dt}</td>
										</tr>
									</c:forEach>
									</tbody>
									</table>
						</div>
					
				</div>
				</section>
			</div>
		</div>
		<!-- page end-->
	</div>
	</section>
	
<!-- 기능단 스크립트 부 -->
<script type="text/javascript">
$(document).ready(function() {
	
	// 메일 전송 버튼
	$("#okbutton").click(function() {
		$("#frm").submit();
	});
	
	// 메일 쓰기 - 사번 가져오기
	$("#selectMember").click(function() {
		 var node = $('#tt').tree('getSelected');
		    if (node){
		        var s = node.text;
		        if (node.attributes){
					s += ","+node.attributes.p1+","+node.attributes.p2;
		        }
		        var jbSplit = s.split('|', 3);
		   		for ( var i in jbSplit ) {
		   			jbSplit[i];
		        }
		        $('#selectMemberModal').modal('hide');
		     	$('#stf_snd_email').val(jbSplit[1]);
		    }    
	});
		
	// 체크박스 클릭했을때 eml_sq 값을 가져옴
	$(document).on("click", ".eml_rm",function() {
		var test = $("#div1").val();
		var eml = test + $(this).attr("data-value");
		 $("#div1").val(eml);
		 console.log(eml);
	});
	
	// 메일 삭제버튼 눌렀을 때
	$("#emlRemove").on("click", function() {    
		var eml = $("#div1").val();
		emailRemove(eml);
	 });
	
	// 메일 삭제
	function emailRemove(eml) {
		var params = {
			eml_sq : eml	
		};
		$.ajax({
			url: "${root}/email/emailRemove.kitri",
			type: "POST",
			dataType: "text",
			data : JSON.stringify(params),
			contentType: "application/json; charset=UTF-8",
			success: function(result) {
				if(result=='SUCCESS'){
				    alert("삭제되었습니다");
				    window.location.reload();
				}
			 }
		});
	}
	
	// 메일 조회 
	$(document).on("click", ".eml_rd", function() {
		var eml = $(this).attr("data-value");  
		console.log(eml);
		emailRead(eml);
	});
	
	// 메일 조회
	function emailRead(eml) {
		var params = {
			eml_sq : eml	
		};
		$.ajax({
			url: "${root}/email/emailRead.kitri",
			type: "POST",
			dataType: "json",
			data : JSON.stringify(params),
			contentType: "application/json; charset=UTF-8",
			beforeSend : function() {
			    $("#eml_pl_nm1").empty();
			    $("#eml_nm1").empty();
			    $("#eml_cnt1").empty();
			    $("#stf_nm1").empty();
			    $("#rcv_dt1").empty();
			    $("#eml_pl_crs1 > a").empty();
			 },
			 success: function(data) {
			    console.log(data);
			    var eml_pl_nm = data.eml_pl_nm;
			    var eml_nm = data.eml_nm;
			    var eml_cnt = data.eml_cnt;
			    var stf_snd_sq = data.stf_snd_sq;
			   	var rcv_dt = data.rcv_dt;
			   	var eml_pl_crs = data.eml_pl_crs;
			    $("#eml_nm1").text(eml_nm);
			 	$("#eml_cnt1").text(eml_cnt);
			    $("#stf_nm1").text(stf_snd_sq);
			    $("#rcv_dt1").text(rcv_dt); 
			    $("#eml_pl_nm1").text(eml_pl_nm);
			    var filePath = "D:/javadata/workspace/framework/kitrigroupware/src/main"+eml_pl_crs;
			    if(eml_pl_nm != null){
			    	$("#eml_pl_nm1").html('<a href=${root}/email/download.kitri?fileFullPath='+filePath+'>'+ eml_pl_nm +'</a>');
			    } else if(eml_pl_nm == null){
			    	$("#eml_pl_nm1").html("등록된 파일이 없습니다.");
			    }
  
			 },
			 error: function(request, status, error) {
			    alert("list search fail :: error code: " + request.status + "\n" + "error message: " + error + "\n");
			   }
			});	
		}
  		// 메일 보관함 버튼 눌렀을 때
		$("#emlKeep").on("click", function() {  
		   var eml = $("#div1").val();
			emailKeep(eml);
		 });
  
		function emailKeep(eml) {
			var params = {
				eml_sq : eml
			};
			$.ajax({
				url: "${root}/email/emailKeep.kitri",
				type: "POST",
				dataType: "text",
			    data : JSON.stringify(params),
			    contentType: "application/json; charset=UTF-8",
			    success: function(result) {
				    if(result=='SUCCESS'){
				    	alert("보관함으로 이동하었습니다");
				    	window.location.reload();
				    }
			    }
			});
		}
})
</script>
