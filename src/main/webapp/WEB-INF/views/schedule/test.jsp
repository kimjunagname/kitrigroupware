<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- body start -->
<section id="container">
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<div class="table-agile-info">
				<div class="row">
					<!--main content start-->


					<!-- Calendar start -->
					<h1>일정관리</h1>
					<div id="divCalendar">
						<div id="calendar"></div>
					</div>
					<!-- Calendar end -->



					<!--main content end-->
				</div>
			</div>
		</section>
	</section>

</section>
<!--main content end-->


<script type='text/javascript'>
$('#calendar').fullCalendar({
	  defaultView: 'month'
	});

$('#calendar').fullCalendar({
	  defaultView: 'agendaWeek'
	});
	
var calendar = null;
var events = null;

events = [
    {
        title: 'Long Event',
        start: new Date(y, m, d-5),
        end: new Date(y, m, d-2),
        color: 'red',
        backgroundColor: 'yellow',
        borderColor: 'blue',
        textColor: 'green',

        uid: 'event_0003',                     //--- Customize한 속성
        flagCheckbox: true                     //--- Customize한 속성
    }
];

$(document).ready(function() {
	calendar = $('#calendar').fullCalendar({
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay'
		},
		selectable: true,
		selectHelper: true,
		dayClick: function(date, allDay, jsEvent, view) {
			window.alert("dayClick");
			calendar.fullCalendar('unselect');
		},
		eventClick: function(calEvent, jsEvent, view) {
			window.alert("eventClick");
		},
		select: function(start, end, allDay) {
			var title = prompt('Event Title:');
			if (title) {
				calendar.fullCalendar('renderEvent',
					{
						title: title,
						start: start,
						end: end,
						allDay: allDay
					},
					true // make the event "stick"
				);
			}
			calendar.fullCalendar('unselect');
		},
		eventMouseover: function( event, jsEvent, view) { 
			window.alert("eventMouseover");
		},
		eventMouseout: function( event, jsEvent, view) { 
			window.alert("eventMouseout");
		},
		eventDrop: function( event, dayDelta, minuteDelta, allDay, revertFunc, jsEvent, ui, view ) {
			window.alert("eventDrop");
		},
		eventResize:function( event, dayDelta, minuteDelta, revertFunc, jsEvent, ui, view ) { 
			window.alert("eventResize");
		},
 		editable: true,
 		events: events,
		firstDay: 0,				//---	0. 일요일
		weekends: true,
		allDaySlot: true,
		allDayText: '종일',
		axisFormat : 'hh:mm tt',
		slotMinutes: 30,
		defaultEventMinutes: 60,
		firstHour: 9,
		timeFormat: 'hh:mm tt',
		columnFormat: {month: 'ddd', week: 'M/d ddd', day: 'M/d dddd'},
		titleFormat: {month: 'yyyy년 M월', week: 'yyyy년 M월 d일{ — [yyyy년] [M월] d일 }', day: 'yyy y년 M월 d일 dddd'},
		monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'] ,
		monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'], 
		dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
 		dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
 		buttonText: {today: '오늘', month: '월', week: '주', day: '일'}
	});
});
</script>