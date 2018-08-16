<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<!-- body start -->
<section id="container">
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
						<!-- 나중에 풀것 -->
						<!---<c:if test="${userinfo.admn_sq == 3}">
						<span align="left">
							<button class="btn btn-primary btn-sm" id="deptManage"
								type="button" data-toggle="modal" data-target="#DeptModal">관리</button>
						</span>
						</c:if>-->
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
														 <li>${stfmap.RNK_NM}|${stfmap.STF_SQ}|${stfmap.STF_NM}</li>
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
				<h4 class="jg"></h4>			
				</header>
				<div class="row" style="background-color:white">
					<!--main content start-->
					<!-- Calendar 시작 -->
					<div id="divCalendar">
						<div id="calendar"></div>
					</div>
					<!-- Calendar 끝 -->
					
					<div>&nbsp;</div>
					
					<!-- 스케쥴 등록 MODAL 시작 -->
					<div align= "center">
						<button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal">일정 등록하기</button>
					</div>
					<div class="modal fade" id="myModal" role="dialog">
						<div class="modal-dialog">

							<!-- Modal content-->
							<div class="modal-content">
							<form class="form-horizontal" role="form" id="sform" action="${root}/schedule/sadd.kitri" method="get">
								<!-- MODAL HEADER -->
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">일정 등록하기</h4>
								</div>
								
								<!-- MODAL BODY -->
								<div class="modal-body">
									<div class="form-group">
											<label class="col-lg-2 col-sm-2 control-label">구분</label>
											<div class="col-lg-10">
											<!-- spring form 태그로 select 불러오기 -->
											<form:form commandName="ScheduleDivisionDto">
												<form:select path="Scd_nm" items="${stype}" id="sselect" onchange="javascript:changeForm();"></form:select>
											</form:form>
											</div>
										</div>
									<div class="form-group">
										<label class="col-lg-2 col-sm-2 control-label">시작날짜</label>
											<div class="col-lg-10">
												<input type="date" name="sstart_date" id="sstart_date"> 
												<input type="time" name="sstart_time" id="sstart_time" class="st">
											</div>
										</div>
									<div class="form-group">
										<label class="col-lg-2 col-sm-2 control-label">종료날짜</label>
										<div class="col-lg-10">
											<input type="date" name="send_date" id="send_date"> 
											<input type="time" name="send_time" id="send_time" class="st">
										</div>
									</div>
									<div class="form-group">
										<label class="col-lg-2 col-sm-2 control-label">제목</label>
										<div class="col-lg-10">
											<input type="text" name="sname" id="sname">
										</div>
									</div>
									<div class="form-group">
										<textarea id="summernote" name="summernote"></textarea>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
									<button type="button" class="btn btn-default" data-dismiss="modal" id="registBtn">등록하기</button>
								</div>
							</form>
							</div>

						</div>
					</div>
					<!-- 스케쥴 등록 MODAL 끝 -->
					
					<!-- 일정보기 모달 시작 -->
					<!-- Modal content-->
					<div class="modal fade" id="dayModal" role="dialog">
    					<div class="modal-dialog">
							<div class="modal-content">
							<form class="form-horizontal" role="form" id="sform" action="${root}/schedule/sadd.kitri" method="get">
								<!-- MODAL HEADER -->
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">일정 보기</h4>
								</div>
								
								<!-- MODAL BODY -->
								<div class="modal-body" id="modalBody">
								<!-- hidden value -->
								<input type="hidden" id="pid"></label>
									<div class="form-group">
										<div align= "center"><label class="col-lg-2">구분</label></div>
											<!-- spring form 태그로 select 불러오기 -->
											<label class="col-lg-10" id="pselect"></label>
										</div>
									<div class="form-group">
										<div align= "center"><label class="col-lg-2">시작날짜</label></div>
											<label class="col-lg-10" id="pstart"></label>
										</div>
									<div class="form-group">
										<div align= "center"><label class="col-lg-2">종료날짜</label></div>
											<label class="col-lg-10" id="pend"></label>
									</div>
									<div class="form-group">
										<div align= "center"><label class="col-lg-2">제목</label></div>
											<label class="col-lg-10" id="psubject"></label>
									</div>
									<div class="form-group">
										<div align= "center"><label class="col-lg-2">내용</label></div>
										<div id="pcontent" class="col-lg-10">
										</div>
									</div>
								</div>
								
								<div class="modal-footer">
									<button type="button" class="btn btn-default" data-dismiss="modal" id="modifyBtn">수정하기</button>
									<button type="button" class="btn btn-default" data-dismiss="modal" id="deleteBtn">삭제하기</button>
									<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
								</div>
							</form>
							</div>
						</div>
					</div>
					<!-- 일정보기 모달 끝 -->
					
					<!-- 수정모달 시작 -->
					<div class="modal fade" id="modifyModal" role="dialog">
						<div class="modal-dialog">

							<!-- Modal content-->
							<div class="modal-content">
							<form class="form-horizontal" role="form" id="mform" method="get">
								<!-- MODAL HEADER -->
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">일정 수정하기</h4>
								</div>
								
								<!-- MODAL BODY -->
								<div class="modal-body">
									<div class="form-group">
											<label class="col-lg-2 col-sm-2 control-label">구분</label>
											<div class="col-lg-10">
											<!-- spring form 태그로 select 불러오기 -->
											<form:form commandName="ScheduleDivisionDto">
												<form:select path="Scd_nm" items="${stype}" id="mselect" onchange="javascript:changeForm();"></form:select>
											</form:form>
											</div>
										</div>
									<div class="form-group">
										<label class="col-lg-2 col-sm-2 control-label">시작날짜</label>
											<div class="col-lg-10">
												<input type="date" name="mstart_date" id="mstart_date">
												<input type="time" name="mstart_time" id="mstart_time" class="mt">
											</div>
										</div>
									<div class="form-group">
										<label class="col-lg-2 col-sm-2 control-label">종료날짜</label>
										<div class="col-lg-10">
											<input type="date" name="mend_date" id="mend_date"> 
											<input type="time" name="mend_time" id="mend_time" class="mt">
										</div>
									</div>
									<div class="form-group">
										<label class="col-lg-2 col-sm-2 control-label">제목</label>
										<div class="col-lg-10">
											<input type="text" name="mname" id="mname">
										</div>
									</div>
									<div class="form-group">
										<textarea id="msummernote" name="summernote"></textarea>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
									<button type="button" class="btn btn-default" data-dismiss="modal" id="mModifyBtn">수정하기</button>
								</div>
							</form>
							</div>

						</div>
					</div>
					<!-- 수정모달 끝 -->
					
					<!--main content end-->
				</div>
				</section>
			</div>
		</div>
		<!-- page end-->
	</div>
	</section>

</section>
<!--main content end-->
<style type="text/css">
    body {
        padding: 0;       
        font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
        font-size: 14px;
    }

    #calendar {
        max-width: 700px;
        margin: 0 auto;
    }
    
    .fc-day-number.fc-sat.fc-past { color:#0000FF; }     /* 토요일 */
    .fc-day-number.fc-sun.fc-past { color:#FF0000; }     /* 일요일 */
</style>
<!-- jQuery EasyUi API -->
<link rel="stylesheet" type="text/css" href="${root}/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${root}/easyui/themes/icon.css">
<script type="text/javascript" src="${root}/easyui/jquery.easyui.min.js"></script>

<!-- summernote 시작 -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.js"></script>
<!-- 공휴일 사용하기 위한 캘린더 -->

<script type="text/javascript">
  $(function() {
    $('#summernote').summernote({
      height: 300,         
      minHeight: null,      
      maxHeight: null,     
      lang: 'ko-KR'      
    });
  });
  
  $(function() {
    $('#msummernote').summernote({
      height: 300,         
      minHeight: null,      
      maxHeight: null,     
      lang: 'ko-KR'      
    });
  });
</script>
<!-- summernote 끝 -->

<script>
// 시작하면 getList 함수 시작
$(document).ready(function() {
	getList();
	
	// 달력 만들기
	$('#calendar').fullCalendar({
	    header: {
	        left: 'prev,next today',
	        center: 'title',
	        right: 'month,basicWeek,basicDay'
	    },
	    
	    defaultDate: "${today}",
	    editable: true,
	    
	    eventDrop: function(event){
	        event.start._i = event.start.format();
	    },
	    
	    eventResize: function(event) {
	        event.end._i = event.end.format();
	    },
	    
	    /*googleCalendarApiKey : "AIzaSyDcnW6WejpTOCffshGDDb4neIrXVUA1EAE"   
            // 예제소스에 적힌 구글캘린더 API 키는 FullCalendar 예제에 있는 API키를 그대로 사용한 것이다.
        , eventSources : [
                // 대한민국의 공휴일
                {
                      googleCalendarId : "kisg3qklq89ejfh7n7hldksgrc@group.calendar.google.com"
                    , className : "koHolidays"
                    , color : "#FF0000"
                    , textColor : "#FFFFFF"
                }
          ],*/
        googleCalendarApiKey: 'AIzaSyCwK5wYXRcuxOJWOn3I4fD1Zg4z_DQsbSI',
        events: {
          googleCalendarId: 'ko.south_korea#holiday@group.v.calendar.google.com',
          className : "koHolidays",
          color : "#FF0000",
          textColor : "#FFFFFF"
        },
        
        monthNames: ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
        
        monthNamesShort: ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
        
        dayNames: ["일요일","월요일","화요일","수요일","목요일","금요일","토요일"],
        
        dayNamesShort: ["일","월","화","수","목","금","토"],
        
        buttonText: {
        today : "오늘",
        month : "월별",
        week : "주별",
        day : "일별",
        },

	    // title 클릭했을 때 event id 가져와서 뿌려주기
	    eventClick: function(event, element) {
	    	// 수정모달에 데이터 집어넣기
	    	$("#pid").val(event.id);
	    	$("#pselect").text(event.sname);
        	$("#psubject").text(event.title);
        	

    		alert(event.end);
        	
        	// Fri Aug 31 2018 09:00:00 GMT+0000 > 기본형
        	// new Date(event.start).toISOString() > format 바꾸기
        	// 2018-08-31T09:00:00.000Z > 바뀐 format
        	if($("#pselect").text()== "출장" ||$("#pselect").text()== "병가" || $("#pselect").text()== "연차"){
        		$("#pstart").text(new Date(event.start).toISOString().slice(0, 10));
        		$("#pend").text(new Date(event.end).toISOString().slice(0, 10));
        	} else {
				$("#pstart").text(new Date(event.start).toISOString().slice(0, 10) + " "+ new Date(event.start).toISOString().slice(11, 19));
	        	
	        	//$("#pend").text(moment(event.end).format('YYYY-MM-DD hh:mm:ss'));
	        	$("#pend").text(new Date(event.end).toISOString().slice(0, 10) + " "+ new Date(event.end).toISOString().slice(11, 19));
        	}
        	
        	$("#pcontent").html(event.content);
        	
	    	$("#dayModal").modal();	
	    	
	    	/* fullcalendar date format 바꾸는법
	    	alert("start date edit >> "+ (new Date(event.start).toISOString()));
	    	alert("end date edit >> "+ (new Date(event.end).toISOString()));
	    	*/
	    	
		    //event.title = "CLICKED!";
		    //$('#calendar').fullCalendar('updateEvent', event);
		 },
	    
	    eventLimit: true, // allow "more" link when too many events
	      
	    timeFormat: 'H(:mm)' // uppercase H for 24-hour clock
	    
	    //events: eList
	});
});

// ajax로 스케쥴리스트 가져오기
function getList(){
	$.ajax({
		url : "${root}/schedule/slist/${userinfo.stf_sq}",
		type : 'POST',
		contentType : 'application/json;charset=UTF-8',
		dataType : 'json',
		success : function(data){
			makeList(data);
		}
	});
}

// 스케쥴리스트로 달력이벤트 만들기
function makeList(data){
	var sList= data.scheduleList;
	
	// 하나하나 추가해준다
	for(var i=0; i<sList.length; i++){
		var scolor= "";
		if(sList[i].scd_nm== "미팅"){ //미팅, 파랑
			scolor= "#3399ff";
		} else if(sList[i].scd_nm== "외근"){ //외근, 주황
			scolor= "#ff9900";
		} else if(sList[i].scd_nm== "출장"){ //출장, 노랑
			scolor= "#efc050";
		} else if(sList[i].scd_nm== "병가"){ //병가, 하늘
			scolor= "#33ccff";
		} else if(sList[i].scd_nm== "연차"){ //연차, 초록
			scolor= "#006600";
		} else if(sList[i].scd_nm== "반차"){ //반차, 연두
			scolor= "#33ff00";
		} else {//7, 교육, 회색
			scolor= "gray";
		}
	
		$('#calendar').fullCalendar('addEventSource', [{
	        id: sList[i].bs_scd_sq,
	        // select 값 가져오기
	        title: sList[i].bs_scd_nm,
	        start: sList[i].bs_scd_str_dt,
	        end: sList[i].bs_scd_end_dt,
	        content: sList[i].bs_scd_cnt,
	        sname: sList[i].scd_nm, 
	        color: scolor,
	        textColor: 'white'
	    }]);
	//	alert("for문 안 >>> title : "+ sList[i].bs_scd_nm+ " end : "+ sList[i].bs_scd_end_dt);
	}
	
    /*
    eList+= "[";
    for(var i=0; i<sList.length; i++){
    	if(i!= sList.length-1){ // 처음~ 마지막리스트 전
    		eList+= "{ \n";
    		eList+= "id : '"+ sList[i].bs_scd_sq+ "', \n";
    		eList+= "title : '"+ sList[i].bs_scd_nm+ "', \n";
    		eList+= "start : '2018-08-"+ (i+1) +"', \n";
    		eList+= "}, ";
    	} else { // 마지막리스트일때
    		eList+= "{ \n";
	    	eList+= "id : '"+ sList[i].bs_scd_sq+ "', \n";
	    	eList+= "title : '"+ sList[i].bs_scd_nm+ "', \n";
	    	eList+= "start : '2018-08-"+ (i+1) +"', \n";
	    	//eList+= "start : '"+ sList[i].bs_scd_str_dt+ "', \n";
	    	eList+= "}";
    	}
    }
    eList+= "]";
    */
}

// 등록하기 눌렀을 때 이벤트
$(document).on("click", "#registBtn", function() {
	if($("#summernote").val().trim().length== 0){
		alert("내용을 적어주세요");
	} else if($("#sstart_date").val()== '' || $("#send_date").val()== ''){
		alert("날짜를 적어주세요");
	} else if($("#sname").val()== ''){
		alert("제목을 적어주세요");
	} else { // 유효성검사 모두 만족할 때
		// $("#sform").attr("method", "post").attr("action", "${root}/schedule/sadd.kitri").submit();
		
		// 일정구분 선택
		var selectValue= $("#sselect option:selected").val();
	
		// TODO 사원번호 집어넣기
		
		var sstart_date= $("#sstart_date").val();
		var send_date= $("#send_date").val();
		
		var	sstart_time= $("#sstart_time").val();
		var send_time= "";
		
		if($("#mstart_time").val()== ''){
			alert("if 문 안! 23:59 setting")
			send_time= "23:59";
		} else { //null일 때, length가 0이 일때
			alert("else 문 안!")
			send_time= $("#send_time").val();
		}
		
		var sname= $("#sname").val();
		var scontent= $("#summernote").val();
		
		if(sstart_date+ " "+ sstart_time > send_date+ " "+ send_time){ //end가 start보다 작으면
			alert("종료 일이 시작일 보다 빠를 수 없습니다.");
			return;
		} else {
			var parameter= JSON.stringify({
					'scd_sq' : selectValue,
					'stf_sq' : ${userinfo.stf_sq},
					'bs_scd_nm' : sname,
					'bs_scd_cnt' : scontent,
					'bs_scd_str_dt' : sstart_date+ " "+ sstart_time,
					'bs_scd_end_dt' : send_date+ " "+ send_time
			});
		}
		
		alert(parameter);
			
		$.ajax({
			url : "${root}/schedule/sadd.kitri",
			type : 'PUT',
			contentType : 'application/json;charset=UTF-8',
			dataType : 'json',
			data : parameter,
			success : function(data){
				addList(data);
			}
		});
	}
});

// 빈 호면 클릭했을 때 등록하기 모달창 띄워주기
$('#calendar').on('click','.fc-day',function(){
	alert($(this).attr('data-date'));
	$("#sstart_date").val($(this).attr('data-date'));
	$("#send_date").val($(this).attr('data-date'));
	$("#myModal").modal();
});


// 등록하기 눌렀을 때 DB에 데이터 INSERT & AJAX로 화면에 띄워주기
function addList(data){
	$('#calendar').fullCalendar('addEventSource', [{
        id: data.bs_scd_sq,
        title: data.bs_scd_nm,
        start: data.bs_scd_str_dt,
        end: data.bs_scd_end_dt,
        content: data.bs_scd_cnt,
        sname: data.scd_nm
    }]);
}

function viewContent(sid){
	// 기존 이벤트 모두 가져오기
	/*
	var event = $("#calendar").fullCalendar("clientEvents");
	
    for(var i=0; i<event.length; i++){
        if(event[i].id== sid){
        	alert("if문 들어옴");
        	alert("event title >>> "+ event[i].title);
        	$("#pselect").text(event[i].id);
        	$("#psubject").text(event[i].title);
        	$("#pstart").text(event[i].start);
        	$("#pend").text(event[i].end);
        	$("#pcontent").html(event[i].content);
        }
    }
    */
}

// 삭제하기 버튼 눌렀을때
$(document).on("click", "#deleteBtn", function() {
	if(confirm("정말 삭제하시겠습니까?")){
		var id= $("#pid").val();
		
		$.ajax({
			url : "${root}/schedule/sdelete/" + id,
			type : 'GET',
			success : function(data){
				deleteschedule(data);
			}
		});

	}	
});

function deleteschedule(data){
	$('#calendar').fullCalendar('removeEvents', data);
}

// 수정하기 버튼 눌렀을때
$(document).on("click", "#modifyBtn", function() {
	var stxt = $("#pselect").text();
	var options = $("#mselect option");
	for(var i=1; i<options.length; i++){
		if(options.eq(i).text() == stxt){
			$("#mselect option:eq(" + i + ")").attr("selected", "selected");
			
			var mitem =i+1;
			
			alert("mitem >>> "+ mitem);

			if(mitem== 3 || mitem== 4 || mitem== 5)
				$(".mt").css("display", "none");
			else
				$(".mt").css("display", "");
			
			break;
		}
	}
	
	$("#mname").val($("#psubject").text());
	$("#mstart_date").val($("#pstart").text().slice(0, 10));
	$("#mend_date").val($("#pend").text().slice(0, 10));
	$("#mstart_time").val($("#pstart").text().slice(11, 19));
	$("#mend_time").val($("#pend").text().slice(11, 19));
	
	//$("#msummernote").val($("#pcontent").html());
	$('#msummernote').summernote('code', $("#pcontent").html());
	
	$("#modifyModal").modal();
});

$(document).on("click", "#mModifyBtn", function() {
	var id= $("#pid").val();
	
	// 일정구분 선택
	var selectValue= $("#mselect option:selected").val();

	// TODO 사원번호 집어넣기
	
	var mstart_date= $("#mstart_date").val();
	var mend_date= $("#mend_date").val();
	
	var mstart_time= $("#mstart_time").val();
	var mend_time= "";
	
	if($("#mstart_time").val()== ''){
		alert("if 문 안! 23:59 setting")
		mend_time= "23:59";
	} else { //null일 때, length가 0이 일때
		alert("else 문 안!")
		mend_time= $("#mend_time").val();
	}
	
	var mname= $("#mname").val();
	var mcontent= $("#msummernote").val();
	
	alert("수정한 제목 >> "+ mname);
	var parameter= JSON.stringify({
			'bs_scd_sq' : id, // 사내일정번호
			'scd_sq' : selectValue, //일정구분번호
			'stf_sq' : ${userinfo.stf_sq}, //사원번호 TMI
			'bs_scd_nm' : mname, // 제목
			'bs_scd_cnt' : mcontent, // 내용
			'bs_scd_str_dt' : mstart_date+ " "+ mstart_time, //시작일
			'bs_scd_end_dt' : mend_date+ " "+ mend_time //종료일
	});
	
	alert(parameter);
		
	//if(scontent.trim().length!= 0){
		$.ajax({
			url : "${root}/schedule/smodify.kitri",
			type : 'PUT',
			contentType : 'application/json;charset=UTF-8',
			dataType : 'json',
			data : parameter,
			success : function(data){
				modifySchedule(data);
			}
		});
	//}
});

function modifySchedule(data){
	var sList= data.scheduleList;
	
	// 기존의 리스트를 불러와서 삭제
	for(var i=0; i<sList.length; i++){
		$('#calendar').fullCalendar('removeEvents', sList[i].bs_scd_sq);
	}
	
	getList();
	/*
	var event= {
		id: data.scd_sq,
		title: data.bs_scd_nm,
		content: data.bs_scd_cnt,
		start: data.bs_scd_str_dt,
		end: data.bs_scd_end_dt
	};
	
	alert("title >>> "+ event.title); // 여기까지 잘뜸
	
	$('#calendar').fullCalendar('updateEvent', event);
	*/
}

// 선택된 스케쥴에 따라 시간 보이냐, 보이지 않느냐
function changeForm(){
	/* 리스트
	1	미팅
	2	외근
	3	출장
	4	병가
	5	연차
	6	반차
	7	교육
	*/
	// 등록하기
	var sitem = $("#sselect").val();

	if(sitem== 3 || sitem== 4 || sitem== 5)
		$(".st").css("display", "none");
	else
		$(".st").css("display", "");
	
	// 수정하기
	var mitem = $("#mselect").val();

	if(mitem== 3 || mitem== 4 || mitem== 5)
		$(".mt").css("display", "none");
	else
		$(".mt").css("display", "");
}

</script>






