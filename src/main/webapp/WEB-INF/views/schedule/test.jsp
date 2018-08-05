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
			<div class="table-agile-info">
				<div class="row">
					<!--main content start-->


					<!-- Calendar start -->
					<div id="divCalendar">
						<div id="calendar"></div>
					</div>
					<!-- Calendar end -->
					
					<div>&nbsp;</div>
					
					<!-- Modal -->
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
												<form:select path="Scd_nm" items="${stype}"></form:select>
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
					<!-- modal end -->
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
    font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 900px;
    margin: 0 auto;
  }

</style>
<style>

  body {
    margin: 40px 10px;
    padding: 0;
    font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 900px;
    margin: 0 auto;
  }

</style>
<!-- summernote -->
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
<script>
  $(document).ready(function() {

    $('#calendar').fullCalendar({
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,basicWeek,basicDay'
      },
      defaultDate: '2018-03-12',
      navLinks: true, // can click day/week names to navigate views
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      events: [
        {
          title: 'NaYeong Made Event',
          start: '2018-03-01'
        },
        {
          title: 'Long Event',
          start: '2018-03-07',
          end: '2018-03-10'
        },
        {
          id: 999,
          title: 'Repeating Event',
          start: '2018-03-09T16:00:00'
        },
        {
          id: 999,
          title: 'Repeating Event',
          start: '2018-03-16T16:00:00'
        },
        {
          title: 'Conference',
          start: '2018-03-11',
          end: '2018-03-13'
        },
        {
          title: 'Meeting',
          start: '2018-03-12T10:30:00',
          end: '2018-03-12T12:30:00'
        },
        {
          title: 'Lunch',
          start: '2018-03-12T12:00:00'
        },
        {
          title: 'Meeting',
          start: '2018-03-12T14:30:00'
        },
        {
          title: 'Happy Hour',
          start: '2018-03-12T17:30:00'
        },
        {
          title: 'Dinner',
          start: '2018-03-12T20:00:00'
        },
        {
          title: 'Birthday Party',
          start: '2018-03-13T07:00:00'
        },
        {
          title: 'Click for Google',
          url: 'http://google.com/',
          start: '2018-03-28'
        }
      ]
    });
 });
    
    $(document).on("click", "#registBtn", function() {
		$("#sform").attr("method", "post").attr("action", "${root}/schedule/sadd.kitri").submit();
	});
</script>