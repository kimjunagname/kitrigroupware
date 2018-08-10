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
					<button id="bttnAllEvents">bttnAllEvents</button>
					<button id="bttnRecreateEvents">bttnRecreateEvents</button>

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
					<!-- modal end -->
					
					<!-- 수정, 삭제 모달 시작 -->
					<!-- Modal content-->
					<div class="modal fade" id="dayModal" role="dialog">
    					<div class="modal-dialog">
							<div class="modal-content">
							<form class="form-horizontal" role="form" id="sform" action="${root}/schedule/sadd.kitri" method="get">
								<!-- MODAL HEADER -->
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">일정 등록하기</h4>
								</div>
								
								<!-- MODAL BODY -->
								<div class="modal-body" id="modalBody">
									
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
					<!-- 수정, 삭제 모달 끝 -->
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
    font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;9
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
    
    dayClick: function() {
        alert('a day has been clicked!');
      }
    ,
    
    /*
    eventClick: function(event, element) {

        event.title = "CLICKED!";

        $('#calendar').fullCalendar('updateEvent', event);

      }, //title을 clickd로 바꾸는것!!*/
    
    eventLimit: true, // allow "more" link when too many events
    events: [{
        id: 'All Day Event',
        title: 'All Day Event',
        start: '2018-08-01'
    }, {
    	type : 1,
        id: 'popo',
        title: 'popo',
        start: '2018-08-04T10:30:00',
        end:   '2018-08-05T12:30:00',
        description: 'This is a cool event',
        color: 'rgb(142, 67, 163)',
        textColor: 'white'
    }, {
        id: 'popo2',
        title: 'popo2',
        //url: 'http://google.com/',
        start: '2018-08-06'
    }]
});


$('#calendar').on('click','.fc-day',function(){
	alert("추가 이벤트");
	alert("$(this).children('.fc-title').html() > " + $(this).children('.fc-title').html());
	
    var myPrompt = prompt('uno','due');
    if(myPrompt != null && myPrompt != ''){
        $('#calendar').fullCalendar('addEventSource', [{
            id: myPrompt,
            title: myPrompt,
            start: $(this).attr('data-date')
        }]);
    }
   
});

$('#calendar').on('click','.fc-content',function(startDate, endDate){
	alert("삭제 이벤트");
	/*
	alert("$(this).children('.fc-title').html(); >> "+ $(this).children('.fc-title').html());
    var gugu = $(this).children('.fc-title').html();
    $('#calendar').fullCalendar('removeEvents', gugu);
    */
    
    var myEvents = $("#calendar").fullCalendar("clientEvents");
    alert("myEvents[1].id > " + myEvents[1].id); //나옴
    alert("myEvents[1].title > " + myEvents[1].title); //나옴
    alert("myEvents[1].start > " + myEvents[1].start); //1533081600000 잘못나옴
    alert("myEvents[1].end > " + myEvents[1].end); //null
    alert("myEvents[1].description > " + myEvents[1].description); //나옴
    alert("myEvents[1].color > " + myEvents[1].color);//나옴
    alert("myEvents[1].textColor > " + myEvents[1].textColor);//나옴
    // 알고리즘 : for문으로 id값 맞는지 비교한 후에 맞다면 ??? 맞는 Dto 값을 가져와서 뿌리기
    // id는 시퀀스 값으로 준다
    
    /*
    popo[0] = {};
    if(myEvents[0].id           ){popo[0]['id']          = myEvents[0].id;}
    if(myEvents[0].title        ){popo[0]['title']       = myEvents[0].title;}
    if(myEvents[0].start        ){popo[0]['start']       = myEvents[0].start._i;}
    if(myEvents[0].end          ){popo[0]['end']         = myEvents[0].end._i;}
    if(myEvents[0].description  ){popo[0]['description'] = myEvents[0].description;}
    if(myEvents[0].color        ){popo[0]['color']       = myEvents[0].color;}
    if(myEvents[0].textColor    ){popo[0]['textColor']   = myEvents[0].textColor;}
    */
        
	$("#modalBody").empty();
    
    document.getElementById("modalBody").innerHTML += '						<div class="form-group"> ';
    document.getElementById("modalBody").innerHTML += '								<label class="col-lg-2 col-sm-2 control-label">구분</label> ';
    document.getElementById("modalBody").innerHTML += '								<div class="col-lg-10"> ';
    document.getElementById("modalBody").innerHTML += '								<!-- spring form 태그로 select 불러오기 --> ';
    document.getElementById("modalBody").innerHTML += '								<p> 구분 불러오기  ';
    document.getElementById("modalBody").innerHTML += '								</div> ';
    document.getElementById("modalBody").innerHTML += '							</div> ';
    document.getElementById("modalBody").innerHTML += '						<div class="form-group"> ';
    document.getElementById("modalBody").innerHTML += '							<label class="col-lg-2 col-sm-2 control-label">시작날짜</label> ';
    document.getElementById("modalBody").innerHTML += '								<div class="col-lg-10"> ';
    document.getElementById("modalBody").innerHTML += '									<p> 시작날짜 고안 </p>  ';
    document.getElementById("modalBody").innerHTML += '								</div> ';
    document.getElementById("modalBody").innerHTML += '							</div> ';
    document.getElementById("modalBody").innerHTML += '						<div class="form-group"> ';
    document.getElementById("modalBody").innerHTML += '							<label class="col-lg-2 col-sm-2 control-label">종료날짜</label> ';
    document.getElementById("modalBody").innerHTML += '							<div class="col-lg-10"> ';
    document.getElementById("modalBody").innerHTML += '								<p> 종료날짜 고안 </p>  ';
    document.getElementById("modalBody").innerHTML += '							</div> ';
    document.getElementById("modalBody").innerHTML += '						</div> ';
    document.getElementById("modalBody").innerHTML += '						<div class="form-group"> ';
    document.getElementById("modalBody").innerHTML += '							<label class="col-lg-2 col-sm-2 control-label">제목</label> ';
    document.getElementById("modalBody").innerHTML += '							<div class="col-lg-10"> ';
    document.getElementById("modalBody").innerHTML += '								<p> '+ $(this).children('.fc-title').html() + ' </p> ';
    document.getElementById("modalBody").innerHTML += '								<p> time'+ $(this).children('.fc-time').html() + ' </p> ';
    document.getElementById("modalBody").innerHTML += '							</div> ';
    document.getElementById("modalBody").innerHTML += '						</div> ';
    document.getElementById("modalBody").innerHTML += '						<div class="form-group"> ';
    document.getElementById("modalBody").innerHTML += '							<textarea id="summernote" name="content"></textarea> ';
    document.getElementById("modalBody").innerHTML += '						</div> ';
    
	$("#dayModal").modal();		
});


$('#bttnAllEvents').click(function(){
    var myEvents = $("#calendar").fullCalendar("clientEvents");
    popo = {};
    for(var i=0; i<myEvents.length; i++){
        popo[i] = {};
        if(myEvents[i].id           ){popo[i]['id']          = myEvents[i].id;}
        if(myEvents[i].title        ){popo[i]['title']       = myEvents[i].title;}
        if(myEvents[i].start        ){popo[i]['start']       = myEvents[i].start._i;}
        if(myEvents[i].end          ){popo[i]['end']         = myEvents[i].end._i;}
        if(myEvents[i].description  ){popo[i]['description'] = myEvents[i].description;}
        if(myEvents[i].color        ){popo[i]['color']       = myEvents[i].color;}
        if(myEvents[i].textColor    ){popo[i]['textColor']   = myEvents[i].textColor;}
    }
    myPre.innerHTML = JSON.stringify(popo, undefined, 4);
});

$('#bttnRecreateEvents').click(function(){
    for(var i=0; i<Object.keys(popo).length; i++){
        $('#calendar').fullCalendar('addEventSource', [{
            id:          popo[i].id,
            title:       popo[i].title,
            start:       popo[i].start,
            end:         popo[i].end,
            description: popo[i].description,
            color:       popo[i].color,
            textColor:   popo[i].textColor
        }]);
        console.log('ok');
    }
});

    
$(document).on("click", "#registBtn", function() {
	$("#sform").attr("method", "post").attr("action", "${root}/schedule/sadd.kitri").submit();
});

/* select로 설정 변경할 것 있으면 사용...
 * onchange="javascript:selectedOption();"
 
function selectedOption(){
	// select에 따른 시간 변경
	var sselected= document.getElementById("sselect");
	var selectvalue= sselected.options[sselected.selectedIndex].value;
	
	if(selectvalue== )
}
*/

</script>