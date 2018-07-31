<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- body start -->
<body>
<section id="container">

<!--sidebar start-->
<!--sidebar end-->

<!--main content start-->
<section id="main-content">
	<section class="wrapper">
			<div class="table-agile-info">
			    <div class="row">
							<div align= "center"><h1>기안서 분류</h1></div>
						   	
						   	<div>&nbsp;</div>
						   	<div class="compose-btn pull-right">
						   		<input type="button" value="결재선 가져오기" class="btn btn-info">
						   	</div>
						   	
						    <!-- 2단 -->
						    <div class="col-lg-12">
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
								           <td>문서번호</td>
								           <td>12123</td>
								           <td rowspan="2">결재선</td>
								           <td rowspan="2">
								           결재선 만들어야함
								           </td>
								          </tr>
								          
								          <tr>
								           <td>문서분류</td>
								           <td>기안서</td>
								          </tr>
									          
								          <tr>
								           <td>기안자</td>
								           <td>최나영</td>
								           <td>기안부서</td>
								           <td>개발팀</td>
								          </tr>
								          
								          <tr >
								           <td>참조자</td>
								           <td>결재선과 같게</td>
								          </tr>
								          
								          <tr>
								           <td>제목</td>
								           <td colspan="3">
			                                        <input type="text" class="form-control">
										   </td>
								          </tr>
								          
								          <tr>
								          <td colspan="4"><input type="textarea"><td>
								          </tr>
								          
								          <tr>
								           <td colspan="4">
									          <form action="" method="post" enctype="multipart/form-data" name="">
												    <input type="file" name="FileName">
											  </form>
											</td>
								          </tr>
								          
								        </tbody>
								      </table>
								      </div>
								  </div>
								  
								       <div class="w3ls_head">
								       	<input type="button" value="승인" class="btn btn-info">
								       	<input type="button" value="기각" class="btn btn-info">
								       </div>
						    </div>
			      </div>
			</div>
	</section>
</section>
<!--main content end-->
</section>
<!-- morris JavaScript -->	
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

