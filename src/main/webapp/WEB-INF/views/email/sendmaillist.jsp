<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/commons/public.jsp" %> 
<!-- jQuery EasyUi API -->
<link rel="stylesheet" type="text/css" href="${root}/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${root}/easyui/themes/icon.css">
<script type="text/javascript" src="${root}/easyui/jquery.easyui.min.js"></script>
		<!-- 조회모달 시작 -->
		<div class="modal fade" id="readModal" role="dialog">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">메일조회창</h4>
					</div>
					<div class="modal-body">
						<table class="table table-striped table-bordered">
							<colgroup>
								<col width="30%" />
								<col width="70%" />
							</colgroup>
							<tbody>
								<tr>
									<th>파일이름</th>
									<td id="eml_pl_nm1">${emailDto.eml_pl_nm}</td>
								</tr>
								<tr>
									<th>제목</th>
									<td id="eml_nm1">${emailDto.eml_nm}</td>
								</tr>
								<tr>
									<th>내용</th>
									<td><textarea id="eml_cnt1" readonly="readonly" rows="10" style="width:100%; resize: none;">${emailDto.eml_cnt}</textarea></td>
								</tr>
								<tr>
									<th>받은시간</th>
									<td id="rcv_dt1">
									<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${emailDto.snd_dt}" /></td>
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
		<!-- 조회모달 종료 -->
		
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
								<strong>보낸 편지함</strong>
								</h4>
							</header>
							<div class="panel-body minimal">
								<div class="table-inbox-wrap ">
									<div class="table-responsive">
							<table id="sndList" class="table table-hover">
								<colgroup>
									<col width="30px" />
									<col width="250px" />
									<col width="100px" />
								</colgroup>
								<thead>
									<tr class="active">
								     	<th style="padding-left:18px;">번호</th>
										<th>제목</th>
										<th>발송시간</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${sndList}" var="emailDto">
										<tr class="eml_snd_rd" data-value="${emailDto.eml_sq}" valign="middle">
										 	<td>${emailDto.eml_sq}</td> 
											<td><a href="#" data-toggle="modal" data-target="#readModal">${emailDto.eml_nm}</a></td>
											<td>${emailDto.snd_dt}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>  
					</div>
				</div>
			</div>
			<!-- content 종료 -->
          </div>
	  </section>
		<!-- page end-->
	</section> 
	
<script type="text/javascript">

	$(document).ready(function() {
		$(".eml_snd_rd").on("click", function() {
			var eml = $(this).attr("data-value");
			 sndEmailRead(eml);
		});

		function sndEmailRead(eml) {
			var params = {
				eml_sq : eml
			};
			$.ajax({
				url : "${root}/email/emailSendRead.kitri",
				dataType : "json",
				type : "POST",
				contentType: "application/json; charset=UTF-8",
				data : JSON.stringify(params), 
				beforeSend : function() { 
					$("#eml_pl_nm1").val(""); 
					$("#eml_nm1").val(""); 
					$("#rcv_dt1").val(""); 
				},
				success : function(data) { 
					console.log(data);
				 	var eml_pl_nm = data.eml_pl_nm;
				 	var eml_nm = data.eml_nm;
				 	var eml_cnt = data.eml_cnt;
				 	var rcv_dt = data.snd_dt;
					var eml_pl_crs = data.eml_pl_crs;
				 	$("#eml_pl_nm1").text(eml_pl_nm); 
				 	$("#eml_nm1").text(eml_nm); 
				 	$("#eml_cnt1").text(eml_cnt); 
				 	$("#rcv_dt1").text(rcv_dt);
				 	var filePath = "D:/javadata/workspace/framework/kitrigroupware/src/main"+eml_pl_crs;
				    if(eml_pl_nm != null){
				    	$("#eml_pl_nm1").html('<a href=${root}/email/download.kitri?fileFullPath='+filePath+'>'+ eml_pl_nm +'</a>');
				    } else if(eml_pl_nm == null){
				    	$("#eml_pl_nm1").html("등록된 파일이 없습니다.");
				    }
				},
				error : function(request, status, error) {
					alert("list search fail :: error code: "+ request.status + "\n" + "error message: "+ error + "\n");
				}
			});
		}
	});
	
	// 보낸편지함 검색 
	function sndEmailListSearch(params) {
		$.ajax({
			url : "${root}/email/sndEmailListSearch.kitri",
			type : "POST",
			dataType : "json",
			data : JSON.stringify(params),
			contentType : "application/json; charset=UTF-8",
			beforeSend : function() {
				$("#sndList > tbody").empty();
				$("#pageIndexList").empty();
			},
			success : function(data) { 
				var sndList = data.sndList;
				var pageIndexListAjax = data.pageIndexListAjax;
				var tbody = $("#sndList > tbody");

				$.each(sndList, function(idx, val) {
					tbody.append($('<tr>').append($('<td>',	{text : val.snd_eml_sq}))
										  .append($('<td>',	{html : "<a href='#' data-toggle='modal' data-target='#readModal'>"+val.eml_nm+"</a>"}))
										  .append($('<td>',	{text : val.stf_nm}))
										  .append($('<td>',	{text : val.snd_dt})));
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
</script>