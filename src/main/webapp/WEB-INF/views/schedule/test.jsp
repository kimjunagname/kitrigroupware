<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var= "stf_sq" value= "62"></c:set>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<!-- body start -->
<section id="container">
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<div class="table-agile-info">
				<div class="row">
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
												<form:select path="Scd_nm" items="${stype}" id="sselect"></form:select>
											</form:form>
											</div>
										</div>
									<div class="form-group">
										<label class="col-lg-2 col-sm-2 control-label">시작날짜</label>
											<div class="col-lg-10">
												<input type="date" name="sstart_date" id="sstart_date"> 
												<input type="time" name="sstart_time" id="sstart_time">
											</div>
										</div>
									<div class="form-group">
										<label class="col-lg-2 col-sm-2 control-label">종료날짜</label>
										<div class="col-lg-10">
											<input type="date" name="send_date" id="send_date"> 
											<input type="time" name="send_time" id="send_time">
										</div>
									</div>
									<div class="form-group">
										<label class="col-lg-2 col-sm-2 control-label">제목</label>
										<div class="col-lg-10">
											<input type="text" name="sname" id="sname">
										</div>
									</div>
									<div class="form-group">
										<textarea id="summernote" name="content"></textarea>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
									<button type="button" class="btn btn-default" data-dismiss="modal" id="registBtn">등록하기</button>
									<button type="submit">test</button>
								</div>
							</form>
							</div>

						</div>
					</div>
					<!-- 스케쥴 등록 MODAL 끝 -->
					<!--main content end-->
				</div>
			</div>
		</section>
	</section>

</section>
<!--main content end-->
<style>

  body {
    margin: 40px 10px;
    padding: 0;
    font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;9
    font-size: 14px;
  }

  #calendar {
    max-width: 900px;
    margin: 0 auto;
  }

</style>
<!-- summernote 시작 -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.js"></script>

<script type="text/javascript">
  $(function() {
    $('#summernote').summernote({
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
});

// ajax로 스케쥴리스트 가져오기
function getList(){
	$.ajax({
		url : "${root}/schedule/slist/${stf_sq}",
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
    var eList= "";
    
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
	
	console.log(eList);
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
	    
	    eventLimit: true, // allow "more" link when too many events
	    
	    events: eList
	    
	});
}

</script>






