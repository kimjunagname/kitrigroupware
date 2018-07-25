<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/commons/public.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>근태관리</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="${root}/css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="${root}/css/project.css" rel='stylesheet' type='text/css' />
<link href="${root}/css/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="${root}/css/font.css" type="text/css"/>
<link href="${root}/css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<script src="${root}/js/jquery2.0.3.min.js"></script>

<script>
$('#myModal').on('shown.bs.modal', function () {
	  $('#myInput').focus()
	})
</script>


</head>
<body>
<section id="container">
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
<div class="brand">

    <a href="index.html" class="logo">
        VISITORS
    </a>
    <div class="sidebar-toggle-box">
        <div class="fa fa-bars"></div>
    </div>
</div>
<!--logo end-->

<div class="nav notify-row" id="top_menu">
    <!--  notification start -->
    <ul class="nav top-menu">
        <!-- settings start -->
        <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <i class="fa fa-tasks"></i>
                <span class="badge bg-success">8</span>
            </a>
            <ul class="dropdown-menu extended tasks-bar">
                <li>
                    <p class="">You have 8 pending tasks</p>
                </li>
                <li>
                    <a href="#">
                        <div class="task-info clearfix">
                            <div class="desc pull-left">
                                <h5>Target Sell</h5>
                                <p>25% , Deadline  12 June’13</p>
                            </div>
                                    <span class="notification-pie-chart pull-right" data-percent="45">
                            <span class="percent"></span>
                            </span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <div class="task-info clearfix">
                            <div class="desc pull-left">
                                <h5>Product Delivery</h5>
                                <p>45% , Deadline  12 June’13</p>
                            </div>
                                    <span class="notification-pie-chart pull-right" data-percent="78">
                            <span class="percent"></span>
                            </span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <div class="task-info clearfix">
                            <div class="desc pull-left">
                                <h5>Payment collection</h5>
                                <p>87% , Deadline  12 June’13</p>
                            </div>
                                    <span class="notification-pie-chart pull-right" data-percent="60">
                            <span class="percent"></span>
                            </span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <div class="task-info clearfix">
                            <div class="desc pull-left">
                                <h5>Target Sell</h5>
                                <p>33% , Deadline  12 June’13</p>
                            </div>
                                    <span class="notification-pie-chart pull-right" data-percent="90">
                            <span class="percent"></span>
                            </span>
                        </div>
                    </a>
                </li>

                <li class="external">
                    <a href="#">See All Tasks</a>
                </li>
            </ul>
        </li>
        <!-- settings end -->
        <!-- inbox dropdown start-->
        <li id="header_inbox_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <i class="fa fa-envelope-o"></i>
                <span class="badge bg-important">4</span>
            </a>
            <ul class="dropdown-menu extended inbox">
                <li>
                    <p class="red">You have 4 Mails</p>
                </li>
                <li>
                    <a href="#">
                        <span class="photo"><img alt="avatar" src="${root}/images/3.png"></span>
                                <span class="subject">
                                <span class="from">Jonathan Smith</span>
                                <span class="time">Just now</span>
                                </span>
                                <span class="message">
                                    Hello, this is an example msg.
                                </span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="photo"><img alt="avatar" src="${root}/images/1.png"></span>
                                <span class="subject">
                                <span class="from">Jane Doe</span>
                                <span class="time">2 min ago</span>
                                </span>
                                <span class="message">
                                    Nice admin template
                                </span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="photo"><img alt="avatar" src="${root}/images/3.png"></span>
                                <span class="subject">
                                <span class="from">Tasi sam</span>
                                <span class="time">2 days ago</span>
                                </span>
                                <span class="message">
                                    This is an example msg.
                                </span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="photo"><img alt="avatar" src="${root}/images/2.png"></span>
                                <span class="subject">
                                <span class="from">Mr. Perfect</span>
                                <span class="time">2 hour ago</span>
                                </span>
                                <span class="message">
                                    Hi there, its a test
                                </span>
                    </a>
                </li>
                <li>
                    <a href="#">See all messages</a>
                </li>
            </ul>
        </li>
        <!-- inbox dropdown end -->
        <!-- notification dropdown start-->
        <li id="header_notification_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">

                <i class="fa fa-bell-o"></i>
                <span class="badge bg-warning">3</span>
            </a>
            <ul class="dropdown-menu extended notification">
                <li>
                    <p>Notifications</p>
                </li>
                <li>
                    <div class="alert alert-info clearfix">
                        <span class="alert-icon"><i class="fa fa-bolt"></i></span>
                        <div class="noti-info">
                            <a href="#"> Server #1 overloaded.</a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="alert alert-danger clearfix">
                        <span class="alert-icon"><i class="fa fa-bolt"></i></span>
                        <div class="noti-info">
                            <a href="#"> Server #2 overloaded.</a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="alert alert-success clearfix">
                        <span class="alert-icon"><i class="fa fa-bolt"></i></span>
                        <div class="noti-info">
                            <a href="#"> Server #3 overloaded.</a>
                        </div>
                    </div>
                </li>

            </ul>
        </li>
        <!-- notification dropdown end -->
    </ul>
    <!--  notification end -->
</div>
<div class="top-nav clearfix">
    <!--search & user info start-->
    <ul class="nav pull-right top-menu">
        <li>
            <input type="text" class="form-control search" placeholder=" Search">
        </li>
        <!-- user login dropdown start-->
        <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <img alt="" src="${root}/images/2.png">
                <span class="username">John Doe</span>
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu extended logout">
                <li><a href="#"><i class=" fa fa-suitcase"></i>Profile</a></li>
                <li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
                <li><a href="login.html"><i class="fa fa-key"></i> Log Out</a></li>
            </ul>
        </li>
        <!-- user login dropdown end -->
       
    </ul>
    <!--search & user info end-->
</div>
</header>
<!--header end-->
<!--sidebar start-->
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                <li>
                    <a href="index.html">
                        <i class="fa fa-dashboard"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-book"></i>
                        <span>UI Elements</span>
                    </a>
                    <ul class="sub">
                        
						<li><a href="typography.html">Typography</a></li>
						<li><a href="glyphicon.html">glyphicon</a></li>
                        <li><a href="grids.html">Grids</a></li>
                    </ul>
                </li>
                <li>
                    <a href="fontawesome.html">
                        <i class="fa fa-bullhorn"></i>
                        <span>Font awesome </span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a class="active" href="javascript:;">
                        <i class="fa fa-th"></i>
                        <span>Data Tables</span>
                    </a>
                    <ul class="sub">
                        <li><a href="basic_table.html">Basic Table</a></li>
                        <li><a class="active" href="responsive_table.html">Responsive Table</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-tasks"></i>
                        <span>Form Components</span>
                    </a>
                    <ul class="sub">
                        <li><a href="form_component.html">Form Elements</a></li>
                        <li><a href="form_validation.html">Form Validation</a></li>
						<li><a href="dropzone.html">Dropzone</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-envelope"></i>
                        <span>Mail </span>
                    </a>
                    <ul class="sub">
                        <li><a href="mail.html">Inbox</a></li>
                        <li><a href="mail_compose.html">Compose Mail</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class=" fa fa-bar-chart-o"></i>
                        <span>Charts</span>
                    </a>
                    <ul class="sub">
                        <li><a href="chartjs.html">Chart js</a></li>
                        <li><a href="flot_chart.html">Flot Charts</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class=" fa fa-bar-chart-o"></i>
                        <span>Maps</span>
                    </a>
                    <ul class="sub">
                        <li><a href="google_map.html">Google Map</a></li>
                        <li><a href="vector_map.html">Vector Map</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-glass"></i>
                        <span>Extra</span>
                    </a>
                    <ul class="sub">
                        <li><a href="gallery.html">Gallery</a></li>
						<li><a href="404.html">404 Error</a></li>
                        <li><a href="registration.html">Registration</a></li>
                    </ul>
                </li>
                <li>
                    <a href="login.html">
                        <i class="fa fa-user"></i>
                        <span>Login Page</span>
                    </a>
                </li>
            </ul>            </div>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->



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
      개인출근월별조회
    </div>
    <div class="row w3-res-tb">
      <div class="col-sm-7 m-b-xs">
		<input type="date" class="input-sm form-control w-sm inline v-middle" name="" id="" value="" required>
		~
		<input type="date" class="input-sm form-control w-sm inline v-middle" name="" id="" value="" required>
		<!-- 
        <select class="input-sm form-control w-sm inline v-middle">
          <option value="0">Bulk action</option>
          <option value="1">Delete selected</option>
          <option value="2">Bulk edit</option>
          <option value="3">Export</option>
        </select>
         -->
        <button class="btn btn-sm btn-default">조회</button>                
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
         <a href="#timeMngBtn1" data-toggle="modal" class="btn btn-default">출퇴근등록</a>
         <a href="#timeMngBtn2" data-toggle="modal" class="btn btn-default">외근/출장/휴가/휴일근무</a>
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
          <tr data-expanded="true">
            <td>180721</td>
            <td>08:30</td>
            <td>18:30</td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td>180722</td>
            <td>08:30</td>
            <td>18:30</td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td>180723</td>
            <td>08:30</td>
            <td>18:30</td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td>180724</td>
            <td>08:30</td>
            <td>18:30</td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
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
 <!-- footer -->
		  <div class="footer">
			<div class="wthree-copyright">
			  <p>© 2017 Visitors. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
			</div>
		  </div>
  <!-- / footer -->
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

                                        <form class="form-horizontal" role="form">
                                            <div class="form-group">
                                                <label for="now" class="col-lg-2 col-sm-2 control-label">일시</label>
                                                <div class="col-lg-10">
                                                    <input type="text" class="form-control" id="" placeholder="00:00" readonly="readonly">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="radio" class="col-lg-2 col-sm-2 control-label">출퇴근</label>
                                                <div class="col-lg-10">
                                                   <div >
					                                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
					                                    	출근
					                                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
				                                    		퇴근
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
                                                    <button type="submit" class="btn btn-default">저장</button>
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
                                                    <button type="submit" class="btn btn-default">저장</button>
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
<script src="${root}/js/bootstrap.js"></script>
<script src="${root}/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="${root}/js/scripts.js"></script>
<script src="${root}/js/jquery.slimscroll.js"></script>
<script src="${root}/js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="${root}/js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="${root}/js/jquery.scrollTo.js"></script>
</body>
</html>
