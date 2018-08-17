<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<!--main content start--><!--main content start--><!--main content start--><!--main content start-->
<!--main content start--><!--main content start--><!--main content start--><!--main content start-->
<!--main content start--><!--main content start--><!--main content start--><!--main content start-->
<!--main content start--><!--main content start--><!--main content start--><!--main content start-->
<!--main content start--><!--main content start--><!--main content start--><!--main content start-->


<section id="main-content">
 <section class="wrapper">
 <div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      개인출근조회
    </div>
    <div class="row w3-res-tb">
      <div class="col-sm-7 m-b-xs">
      	<form id="searchFrom">
      	<input type="hidden" id="stf_sq" name="stf_sq" value="5"><!-- TODO session.stf_sq -->
		<input type="date" class="input-sm form-control w-sm inline v-middle" name="startDate" id="startDate" value="">
		~
		<input type="date" class="input-sm form-control w-sm inline v-middle" name="endDate" id="endDate" value="">
		<!-- 
        <select class="input-sm form-control w-sm inline v-middle">
          <option value="0">Bulk action</option>
          <option value="1">Delete selected</option>
          <option value="2">Bulk edit</option>
          <option value="3">Export</option>
        </select>
         -->
        <a href="#" class="btn btn-sm btn-default" id="searchBtn">조회</a>
        </form>                
      </div>
      <div class="col-sm-0">
      </div>
      <div class="col-sm-5">
        <!-- 
        <div class="input-group">
          <input type="text" class="input-sm form-control" placeholder="Search">
          <span class="input-group-btn">
            <button class="btn btn-sm btn-default" type="button">Go!</button>
          </span>
        </div>
         -->
         <a href="#timeMngBtn1" id="punchInBtn" data-toggle="modal" class="btn btn-default">출퇴근등록</a>
        <!--  <a href="#timeMngBtn2" data-toggle="modal" class="btn btn-default">외근/출장/휴가/휴일근무</a> -->
      </div>
    </div>
    
    
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
          <tr>
            <th data-breakpoints="xs">날짜</th>
            <th>출근시간</th>
            <th>퇴근시간</th>
            <th data-breakpoints="xs">상태</th>
           
            <th data-breakpoints="xs sm md" data-title="DOB">지각시간</th>
            <th data-breakpoints="xs">사유</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach var="cmt" items="${commuteList}">
          <tr>
            <td>${cmt.cmt_dt}</td>
            <td strTm="${cmt.cmt_str_tm}">${cmt.cmt_str_tm}</td>
            <td endTm="${cmt.cmt_end_tm}">${cmt.cmt_end_tm}</td>
            <td>${cmt.scd_nm}</td>
            <td></td>
            <td>${cmt.cmt_msg}</td>
          </tr>
        </c:forEach>
        </tbody>
          <tr>
            <td>합계</td>
            <td></td>
            <td></td>
            <td></td>
            <td align="left">00:00</td>
          </tr>
      </table>
    </div>

  </div>
</div>
</section>
</section>

<!--main content end--><!--main content end--><!--main content end--><!--main content end--><!--main content end-->
<!--main content end--><!--main content end--><!--main content end--><!--main content end--><!--main content end-->
<!--main content end--><!--main content end--><!--main content end--><!--main content end--><!--main content end-->
<!--main content end--><!--main content end--><!--main content end--><!--main content end--><!--main content end-->
<!--main content end--><!--main content end--><!--main content end--><!--main content end--><!--main content end-->
<!--main content end--><!--main content end--><!--main content end--><!--main content end--><!--main content end-->

<!-- Modal --><!-- Modal --><!-- Modal --><!-- Modal --><!-- Modal --><!-- Modal --><!-- Modal --><!-- Modal -->
<!-- Modal --><!-- Modal --><!-- Modal --><!-- Modal --><!-- Modal --><!-- Modal --><!-- Modal --><!-- Modal -->
                            <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="timeMngBtn1" class="modal fade">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                        <h4 class="modal-title">출퇴근등록</h4>
                                    </div>
                                    <div class="modal-body">

                                        <form class="form-horizontal" role="form" id="punchForm">
                                            <div class="form-group">
                                                <label for="now" class="col-lg-2 col-sm-2 control-label">일시</label>
                                                <div class="col-lg-10">
                                                    <input type="text" class="form-control" id="toDay" placeholder="00:00" readonly="readonly">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="radio" class="col-lg-2 col-sm-2 control-label">출퇴근</label>
                                                <div class="col-lg-10">
                                                   <div >
					                                    <input type="radio" name="punch" id="punchIn" value="in" checked="">
					                                    	출근
					                                    <input type="radio" name="punch" id="punchOut" value="out">
				                                    		퇴근
                           						   </div>

                                                </div>
                                            </div>
                                            <div class="form-group">
                                               <label for="text" class="col-lg-2 col-sm-2 control-label">사유</label>
                                                <div class="col-lg-offset-2 col-lg-10">
                                                    <div class="checkbox">
                                                          <div class="col-lg-10">
															<textarea rows="5" cols="40" name="cmt_msg"></textarea>
	                                                      </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-lg-offset-2 col-lg-10">
                                                    <button type="button" class="btn btn-default" id="punchBtn">저장</button>
                                                    <button aria-hidden="true" data-dismiss="modal" class="btn btn-default" type="button">취소</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>





                            <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="timeMngBtn2" class="modal fade">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                        <h4 class="modal-title">근태구분 작성</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form class="form-horizontal" role="form">
                                            <div class="form-group">
                                                <label for="now" class="col-lg-2 col-sm-2 control-label">날짜</label>
                                                <div class="col-md-6">
                                                	<input type="date" name="" id="" class="form-control form-inline">~<input type="date" name="" id="" class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="radio" class="col-lg-2 col-sm-2 control-label">대분류</label>
                                                <div class="col-lg-10">
                                                   <div >
											        <select class="input-sm form-control w-sm inline v-middle">
											          <option value="0">외근</option>
											          <option value="1">출장</option>
											          <option value="2">휴가</option>
											          <option value="3">휴일근무</option>
											        </select>
                           						   </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="radio" class="col-lg-2 col-sm-2 control-label">소분류</label>
                                                <div class="col-lg-10">
                                                   <div >
											        <select class="input-sm form-control w-sm inline v-middle">
											          <option value="0">출근후외근</option>
											          <option value="1">현장직접외근</option>
											          <!-- 
											          <option value="0">국내출장</option>
											          <option value="1">해외출장</option>
											           -->
											          
											          <!-- 
											          <option value="0">연차</option>
											          <option value="1">월차</option>
											          <option value="2">외출</option>
											           -->
											          
											        </select>
                           						   </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                               <label for="text" class="col-lg-2 col-sm-2 control-label">사유</label>
                                                <div class="col-lg-offset-2 col-lg-10">
                                                    <div class="checkbox">
                                                          <div class="col-lg-10">
															<textarea rows="5" cols="40"></textarea>
	                                                      </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-lg-offset-2 col-lg-10">
                                                    <button type="button" class="btn btn-default" id="">저장</button>
                                                    <button aria-hidden="true" data-dismiss="modal" class="btn btn-default" type="button">취소</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

<!-- Modal --><!-- Modal --><!-- Modal --><!-- Modal --><!-- Modal --><!-- Modal --><!-- Modal --><!-- Modal -->
<!-- Modal --><!-- Modal --><!-- Modal --><!-- Modal --><!-- Modal --><!-- Modal --><!-- Modal --><!-- Modal -->

</section>

<script>
$(document).ready(function(){
	setDate();
	
	$("td:contains('토')").css('color', 'blue');
	$("td:contains('일')").css('color', 'red');
});
var date = new Date();
$("#searchBtn").click(function() {
	var cmt_str_tm = $("#startDate").val();
	var cmt_end_tm = $("#endDate").val();
	if(cmt_end_tm < cmt_str_tm){
		alert("종료 일이 시작일 보다 빠를 수 없습니다.");
		return;
	}else{
		$("#searchFrom").attr("method", "post").attr("action", "${root}/commute/list.kitri").submit();
	}
});

$("#punchBtn").click(function() {
	$("#punchForm").attr("method", "post").attr("action", "${root}/commute/punch.kitri").submit();
});

$("#punchInBtn").click(function() {
	var now = date.toISOString().slice(0,10);
	var check = $("td[strTm^='"+ now +"']");
	if(check.text() != ""){
		$("#punchIn").attr("disabled", "disabled");
		$("#punchOut").attr("checked", "checked");
	}
	$("#toDay").val(now + " " +date.toLocaleTimeString());
});

function setDate(){
	var startDate = "${startDate}";
	var endDate = "${endDate}";
	if(startDate == "" && endDate == ""){
		var year = date.getFullYear();
		var month = date.getMonth();
		var lastDay = new Date(year, month+1, 1);
		
		$("#startDate").val(lastDay.toISOString().slice(0,8) + "01");
		$("#endDate").val(lastDay.toISOString().slice(0,10));
	}else{
		$("#startDate").val(startDate);
		$("#endDate").val(endDate);
	}	
};
</script>
