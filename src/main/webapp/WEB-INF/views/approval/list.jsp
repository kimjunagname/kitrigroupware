<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!-- body start -->
<section id="container">


<!--main content start-->
<section id="main-content">
	<section class="wrapper">
			<div class="table-agile-info">
			    <div class="row">
			    			<!-- 1단 -->
			                <div class="col-lg-4">
			                <h5>· 결재진행</h5><br>
								 <div class="panel panel-default">
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
								        <tbody>
								          <tr data-expanded="true">
								            <td>미결재</td>
								            <td>x건</td>
								            <td>x건</td>
								          </tr>
								          <tr>
								            <td>결재</td>
								            <td>x건</td>
								            <td>x건</td>
								          </tr>
								        </tbody>
								      </table>
								      </div>
								  </div>
						    </div>
						    
						    <div class="col-lg-4">
			                <h5>· 개인문서함</h5><br>
								 <div class="panel panel-default">
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
								        <tbody>
								          <tr data-expanded="true">
								            <td>상신문서</td>
								            <td>x건</td>
								            <td>반려문서</td>
								            <td>x건</td>
								          </tr>
								          <tr>
								            <td>임시저장</td>
								            <td>x건</td>
								            <td>결재완료</td>
								            <td>x건</td>
								          </tr>
								        </tbody>
								      </table>
								      </div>
								  </div>
						    </div>
						    
						    <div class="col-lg-4">
			                <h5>· 협조문서함</h5><br>
								 <div class="panel panel-default">
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
								         <tbody>
								          <tr data-expanded="true">
								            <td>미결재</td>
								            <td>x건</td>
								            <td>x건</td>
								          </tr>
								          <tr>
								            <td>결재</td>
								            <td>x건</td>
								            <td>x건</td>
								          </tr>
								        </tbody>
								      </table>
								      </div>
								  </div>
						    </div>
						    
						    
						    <!-- 2단 -->
						    <div class="col-lg-12">
			                <h5>· 결재진행 > 미결재문서</h5><br>
								 <div class="panel panel-default">
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
								          <tr data-expanded="true">
								           <th data-breakpoints="xs">문서번호</th>
								           <th data-breakpoints="xs">문서분류</th>
								           <th data-breakpoints="xs">제목</th>
								           <th data-breakpoints="xs">기안자</th>
								           <th data-breakpoints="xs">기안일</th>
								           <th data-breakpoints="xs">상태</th>
								           <th data-breakpoints="xs">다음 결재자</th>
								          </tr>
								         </thead>
								         <tbody>
								           <td>12123</td>
								           <td>기안서</td>
								           <td>제목</td>
								           <td>최나영</td>
								           <td>2018.07.22</td>
								           <td>미결재</td>
								           <td>홍길동</td>
								          </tr>
								          <tr>
								           <td>12123</td>
								           <td>기안서</td>
								           <td>제목</td>
								           <td>최나영</td>
								           <td>2018.07.22</td>
								           <td>미결재</td>
								           <td>홍길동</td>
								          </tr>
								        </tbody>
								      </table>
								      </div>
								  </div>
						    </div>
						    
						    <!-- 3단 -->
						    <div class="col-lg-12">
			                <h5>· 개인문서함 > 상신문서</h5><br>
								 <div class="panel panel-default">
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
								          <tr data-expanded="true">
								           <th data-breakpoints="xs">문서번호</th>
								           <th data-breakpoints="xs">기안일자</th>
								           <th data-breakpoints="xs">제목</th>
								           <th data-breakpoints="xs">상태</th>
								          </tr>
								         </thead>
								         <tbody>
								           <td>12123</td>
								           <td>기안서</td>
								           <td>제목</td>
								           <td>진행중</td>
								          </tr>
								          <tr>
								           <td>12123</td>
								           <td>기안서</td>
								           <td>제목</td>
								           <td>진행중</td>
								          </tr>
								        </tbody>
								      </table>
								      </div>
								  </div>
						    </div>
						    
						    <!-- 4단 -->
						    <div class="col-lg-12">
			                <h5>· 협조문서함 > 미결재문서</h5><br>
								 <div class="panel panel-default">
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
								          <tr data-expanded="true">
								           <th data-breakpoints="xs">문서번호</th>
								           <th data-breakpoints="xs">문서분류</th>
								           <th data-breakpoints="xs">제목</th>
								           <th data-breakpoints="xs">기안자</th>
								           <th data-breakpoints="xs">기안일</th>
								           <th data-breakpoints="xs">상태</th>
								           <th data-breakpoints="xs">다음 결재자</th>
								          </tr>
								         </thead>
								         <tbody>
								           <td>12123</td>
								           <td>기안서</td>
								           <td>제목</td>
								           <td>최나영</td>
								           <td>2018.07.22</td>
								           <td>미결재</td>
								           <td>홍길동</td>
								          </tr>
								          <tr>
								           <td>12123</td>
								           <td>기안서</td>
								           <td>제목</td>
								           <td>최나영</td>
								           <td>2018.07.22</td>
								           <td>미결재</td>
								           <td>홍길동</td>
								          </tr>
								        </tbody>
								      </table>
								      </div>
								  </div>
						    </div>
						    
						    
			      </div>
			</div>
	</section>
</section>
<!--main content end-->
</section>


<script>
	$(document).ready(function() {
		//BOX BUTTON SHOW AND CLOSE
	   jQuery('.small-graph-box').hover(function() {
		  jQuery(this).find('.box-button').fadeIn('fast');
	   }, function() {
		  jQuery(this).find('.box-button').fadeOut('fast');
	   });
	   jQuery('.small-graph-box .box-close').click(function() {
		  jQuery(this).closest('.small-graph-box').fadeOut(200);
		  return false;
	   });
	   
	    //CHARTS
	    function gd(year, day, month) {
			return new Date(year, month - 1, day).getTime();
		}
		
		graphArea2 = Morris.Area({
			element: 'hero-area',
			padding: 10,
        behaveLikeLine: true,
        gridEnabled: false,
        gridLineColor: '#dddddd',
        axes: true,
        resize: true,
        smooth:true,
        pointSize: 0,
        lineWidth: 0,
        fillOpacity:0.85,
			data: [
				{period: '2015 Q1', iphone: 2668, ipad: null, itouch: 2649},
				{period: '2015 Q2', iphone: 15780, ipad: 13799, itouch: 12051},
				{period: '2015 Q3', iphone: 12920, ipad: 10975, itouch: 9910},
				{period: '2015 Q4', iphone: 8770, ipad: 6600, itouch: 6695},
				{period: '2016 Q1', iphone: 10820, ipad: 10924, itouch: 12300},
				{period: '2016 Q2', iphone: 9680, ipad: 9010, itouch: 7891},
				{period: '2016 Q3', iphone: 4830, ipad: 3805, itouch: 1598},
				{period: '2016 Q4', iphone: 15083, ipad: 8977, itouch: 5185},
				{period: '2017 Q1', iphone: 10697, ipad: 4470, itouch: 2038},
			
			],
			lineColors:['#eb6f6f','#926383','#eb6f6f'],
			xkey: 'period',
            redraw: true,
            ykeys: ['iphone', 'ipad', 'itouch'],
            labels: ['All Visitors', 'Returning Visitors', 'Unique Visitors'],
			pointSize: 2,
			hideHover: 'auto',
			resize: true
		});
		
	   
	});
	</script>
<!-- calendar -->
	<script type="text/javascript" src="${root}/js/monthly.js"></script>
	<script type="text/javascript">
		$(window).load( function() {

			$('#mycalendar').monthly({
				mode: 'event',
				
			});

			$('#mycalendar2').monthly({
				mode: 'picker',
				target: '#mytarget',
				setWidth: '250px',
				startHidden: true,
				showTrigger: '#mytarget',
				stylePast: true,
				disablePast: true
			});

		switch(window.location.protocol) {
		case 'http:':
		case 'https:':
		// running on a server, should be good.
		break;
		case 'file:':
		alert('Just a heads-up, events will not work when run locally.');
		}

		});
	</script>
	<!-- //calendar -->

