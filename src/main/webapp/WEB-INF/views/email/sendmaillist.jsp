<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/commons/public.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>발신 메일함</title>
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
</head>
<body>
	<section id="container"> <!--header start--> <header
		class="header fixed-top clearfix"> <!--logo start-->
	<div class="brand">

		<a href="index.html" class="logo"> KITRIWARE </a>
		<div class="sidebar-toggle-box">
			<div class="fa fa-bars"></div>
		</div>
	</div>
	<!--logo end-->

	<div class="nav notify-row" id="top_menu">
		<!--  notification start -->
		<ul class="nav top-menu">
			<!-- settings start -->
			<li class="dropdown"><a data-toggle="dropdown"
				class="dropdown-toggle" href="#"> <i class="fa fa-tasks"></i> <span
					class="badge bg-success">8</span>
			</a>
				<ul class="dropdown-menu extended tasks-bar">
					<li>
						<p class="">You have 8 pending tasks</p>
					</li>
					<li><a href="#">
							<div class="task-info clearfix">
								<div class="desc pull-left">
									<h5>Target Sell</h5>
									<p>25% , Deadline 12 June’13</p>
								</div>
								<span class="notification-pie-chart pull-right"
									data-percent="45"> <span class="percent"></span>
								</span>
							</div>
					</a></li>
					<li><a href="#">
							<div class="task-info clearfix">
								<div class="desc pull-left">
									<h5>Product Delivery</h5>
									<p>45% , Deadline 12 June’13</p>
								</div>
								<span class="notification-pie-chart pull-right"
									data-percent="78"> <span class="percent"></span>
								</span>
							</div>
					</a></li>
					<li><a href="#">
							<div class="task-info clearfix">
								<div class="desc pull-left">
									<h5>Payment collection</h5>
									<p>87% , Deadline 12 June’13</p>
								</div>
								<span class="notification-pie-chart pull-right"
									data-percent="60"> <span class="percent"></span>
								</span>
							</div>
					</a></li>
					<li><a href="#">
							<div class="task-info clearfix">
								<div class="desc pull-left">
									<h5>Target Sell</h5>
									<p>33% , Deadline 12 June’13</p>
								</div>
								<span class="notification-pie-chart pull-right"
									data-percent="90"> <span class="percent"></span>
								</span>
							</div>
					</a></li>

					<li class="external"><a href="#">See All Tasks</a></li>
				</ul></li>
			<!-- settings end -->
			<!-- inbox dropdown start-->
			<li id="header_inbox_bar" class="dropdown"><a
				data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
					class="fa fa-envelope-o"></i> <span class="badge bg-important">4</span>
			</a>
				<ul class="dropdown-menu extended inbox">
					<li>
						<p class="red">You have 4 Mails</p>
					</li>
					<li><a href="#"> <span class="photo"><img
								alt="avatar" src="${root}/images/3.png"></span> <span class="subject">
								<span class="from">Jonathan Smith</span> <span class="time">Just
									now</span>
						</span> <span class="message"> Hello, this is an example msg. </span>
					</a></li>
					<li><a href="#"> <span class="photo"><img
								alt="avatar" src="${root}/images/1.png"></span> <span class="subject">
								<span class="from">Jane Doe</span> <span class="time">2
									min ago</span>
						</span> <span class="message"> Nice admin template </span>
					</a></li>
					<li><a href="#"> <span class="photo"><img
								alt="avatar" src="${root}/images/3.png"></span> <span class="subject">
								<span class="from">Tasi sam</span> <span class="time">2
									days ago</span>
						</span> <span class="message"> This is an example msg. </span>
					</a></li>
					<li><a href="#"> <span class="photo"><img
								alt="avatar" src="${root}/images/2.png"></span> <span class="subject">
								<span class="from">Mr. Perfect</span> <span class="time">2
									hour ago</span>
						</span> <span class="message"> Hi there, its a test </span>
					</a></li>
					<li><a href="#">See all messages</a></li>
				</ul></li>
			<!-- inbox dropdown end -->
			<!-- notification dropdown start-->
			<li id="header_notification_bar" class="dropdown"><a
				data-toggle="dropdown" class="dropdown-toggle" href="#"> <i
					class="fa fa-bell-o"></i> <span class="badge bg-warning">3</span>
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

				</ul></li>
			<!-- notification dropdown end -->
		</ul>
		<!--  notification end -->
	</div>
	<div class="top-nav clearfix">
		<!--search & user info start-->
		<ul class="nav pull-right top-menu">
			<li><input type="text" class="form-control search"
				placeholder=" Search"></li>
			<!-- user login dropdown start-->
			<li class="dropdown"><a data-toggle="dropdown"
				class="dropdown-toggle" href="#"> <img alt="" src="${root}/images/2.png">
					<span class="username">John Doe</span> <b class="caret"></b>
			</a>
				<ul class="dropdown-menu extended logout">
					<li><a href="#"><i class=" fa fa-suitcase"></i>Profile</a></li>
					<li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
					<li><a href="login.html"><i class="fa fa-key"></i> Log Out</a></li>
				</ul></li>
			<!-- user login dropdown end -->

		</ul>
		<!--search & user info end-->
	</div>
	</header> <!--header end--> <!--sidebar start--> <aside>
	<div id="sidebar" class="nav-collapse">
		<!-- sidebar menu start-->
		<div class="leftside-navigation">
			<ul class="sidebar-menu" id="nav-accordion">
				<li><a href="index.html"> <i class="fa fa-dashboard"></i> <span>Dashboard</span>
				</a></li>

				<li class="sub-menu"><a href="javascript:;"> <i
						class="fa fa-book"></i> <span>UI Elements</span>
				</a>
					<ul class="sub">
						<li><a href="typography.html">Typography</a></li>
						<li><a href="glyphicon.html">glyphicon</a></li>
						<li><a href="grids.html">Grids</a></li>
					</ul></li>
				<li><a href="fontawesome.html"> <i class="fa fa-bullhorn"></i>
						<span>Font awesome </span>
				</a></li>
				<li class="sub-menu"><a href="javascript:;"> <i
						class="fa fa-th"></i> <span>Data Tables</span>
				</a>
					<ul class="sub">
						<li><a href="basic_table.html">Basic Table</a></li>
						<li><a href="responsive_table.html">Responsive Table</a></li>
					</ul></li>
				<li class="sub-menu"><a href="javascript:;"> <i
						class="fa fa-tasks"></i> <span>Form Components</span>
				</a>
					<ul class="sub">
						<li><a href="form_component.html">Form Elements</a></li>
						<li><a href="form_validation.html">Form Validation</a></li>
						<li><a href="dropzone.html">Dropzone</a></li>
					</ul></li>
				<li class="sub-menu"><a class="active" href="javascript:;">
						<i class="fa fa-envelope"></i> <span>Mail </span>
				</a>
					<ul class="sub">
						<li><a href="${root}/email/emaillist.kitri">수신 메일함</a></li>
						<li><a href="${root}/email/sendlist.kitri">발신 메일함</a></li>
						<li><a href="${root}/email/keeplist.kitri">받은 메일 보관함</a></li>
					</ul></li>
				<li class="sub-menu"><a href="javascript:;"> <i
						class=" fa fa-bar-chart-o"></i> <span>Charts</span>
				</a>
					<ul class="sub">
						<li><a href="chartjs.html">Chart js</a></li>
						<li><a href="flot_chart.html">Flot Charts</a></li>
					</ul></li>
				<li class="sub-menu"><a href="javascript:;"> <i
						class=" fa fa-bar-chart-o"></i> <span>Maps</span>
				</a>
					<ul class="sub">
						<li><a href="google_map.html">Google Map</a></li>
						<li><a href="vector_map.html">Vector Map</a></li>
					</ul></li>
				<li class="sub-menu"><a href="javascript:;"> <i
						class="fa fa-glass"></i> <span>Extra</span>
				</a>
					<ul class="sub">
						<li><a href="gallery.html">Gallery</a></li>
						<li><a href="404.html">404 Error</a></li>
						<li><a href="registration.html">Registration</a></li>
					</ul></li>
				<li><a href="login.html"> <i class="fa fa-user"></i> <span>Login
							Page</span>
				</a></li>
			</ul>
		</div>
		<!-- sidebar menu end-->
	</div>
	</aside> 
		<!--sidebar end--> 
		<!-- 메일 조회시 부트스트랩 모달 시작(할일) -->
		<div class="modal fade" id="readModal" role="dialog">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">편지조회</h4>
					</div>
					<div class="modal-body">
					<form role="form" id="readFrm" method="post" >
						<table class="table table-striped table-bordered">
							<colgroup>
								<col width="30%" />
								<col width="70%" />
							</colgroup>

							<tbody>
								<tr>
									<th>제목</th>
									<td id="eml_nm1">여기는 제목입니다.</td>
								</tr>
								<tr>
									<th>내용</th>
									<td>
										<textarea id="eml_cnt1" readonly="readonly" rows="10"style="width: 100%; resize:none;">여기는 내용입니다.</textarea>
									<td>
								</tr>
								<tr>
									<th>보낸사람</th>
									<td id="stf_nm1">여기는 보내는 사람입니다.</td>
								</tr>
								<tr>
									<th>받은시간</th>
									<td id="rcv_dt1">여기는 받는사람입니다.</td>
								<tr>
									<th>첨부파일</th>
									<td id="eml_pl_nm1"></td>
								</tr>
							</tbody>
						</table>
                     </form>
					</div>
					<div class="modal-footer">
					    <button type="button" class="btn btn-success" data-dismiss="modal">확인</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>	
		<!-- 메일 조회시 부트스트랩 모달 끝 -->
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
								<strong>발신 메일함</strong>
								<form action="#" class="pull-right mail-src-position">
									<div>									
									<select name="item" style="width: 60px; height: 30px; font-size: 16px;" class="inp">
										<option value="subject">제목
										<option value="writer">이름
									</select> 
									<span> 
										<input type="text" name="query" size="22" class="inp" style="margin-top: -19px;">
									</span> 
									<span>
										<button class="btn btn-success" id="search" type="button">검색</button>
									</span>
									</div>
								</form>
								</h4>
							</header>
							<div class="panel-body minimal">
								<div class="table-inbox-wrap ">
									<table class="table table-inbox table-hover">
									<tbody id="mail list">
									<tr class="">
										<td class="inbox-small-cells">
											1
										</td>
										<td class="view-message  dont-show">
											<a href="#" data-toggle="modal" class="eml_rd" data-value="" data-target="#readModal">Lorem ipsumdolor imit set.</a>
										</td>
										<td class="view-message ">
											<a href="#">Lorem ipsumdolor imit set.</a>
										</td>
										<td class="view-message  inbox-small-cells"></td>
										<td class="view-message  text-right">12.10 AM</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells">
											2
										</td>
										<td class="view-message dont-show">
											<a href="#">Mr Bean</a>
										</td>
										<td class="view-message">
											<a href="#">Hi Bro, Lorem ipsum dolor imit</a>
										</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">Jan 11</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells">
											3
										</td>
										<td class="view-message dont-show">
											<a href="#">Jonathan Smith</a>
										</td>
										<td class="view-message">
											<a href="#">Lorem ipsum dolorsit amet</a>
										</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">March 15</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells">
											4
										</td>
										<td class="view-message dont-show">
											<a href="#">Facebook</a>
										</td>
										<td class="view-message">
											<a href="#">Dolor sit amet, consectetuer adipiscing</a>
										</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">June 01</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells">
											5
										</td>
										<td class="view-message dont-show">
											<a href="#">Tasi man </a>
										</td>
										<td class="view-message">
											<a href="#">Lorem ipsum dolor sit amet</a>
										</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">May 2</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells">
										6
										</td>
										<td class="view-message dont-show"><a href="#">Facebook</a></td>
										<td class="view-message"><a href="#">Dolor sit amet,
											consectetuer adipiscing</a></td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">March 14</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells">
										7
										</td>
										<td class="view-message dont-show">Bafent</td>
										<td class="view-message">Lorem ipsum dolor sit amet</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">December 19</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells">
										8
										</td>
										<td class="view-message dont-show">Facebook</td>
										<td class="view-message view-message">Dolor sit amet,
										consectetuer adipiscing</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">March 04</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells">
										9
										</td>
										<td class="view-message dont-show">Dorimon</td>
										<td class="view-message view-message">Lorem ipsum dolor
											sit amet</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">June 13</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells">10</td>
										<td class="view-message dont-show">Facebook</td>
										<td class="view-message view-message">Dolor sit amet,
										consectetuer adipiscing</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">March 24</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells">11</td>
										<td class="view-message dont-show">Mogli Marion</td>
										<td class="view-message">Lorem ipsum dolor sit amet</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">February 09</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells">12</td>
										<td class="dont-show">Facebook</td>
										<td class="view-message">Dolor sit amet, consectetuer
										adipiscing</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">May 14</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells">13</td>
										<td class="view-message dont-show">Samual</td>
										<td class="view-message">Lorem ipsum dolor sit amet</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">February 25</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells">14</td>
										<td class="dont-show">Facebook</td>
										<td class="view-message view-message">Dolor sit amet,
										consectetuer adipiscing</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">March 14</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells">15</td>
										<td class="view-message dont-show">Dk brain</td>
										<td class="view-message">Lorem ipsum dolor sit amet</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">April 07</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells">16</td>
										<td class="view-message dont-show">Twitter</td>
										<td class="view-message">Dolor sit amet, consectetuer
										adipiscing</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">July 14</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells">17</td>
										<td class="view-message dont-show">Samual</td>
										<td class="view-message">Lorem ipsum dolor sit amet</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">August 10</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells">18</td>
										<td class="view-message dont-show">Facebook</td>
										<td class="view-message view-message">Dolor sit amet,
										consectetuer adipiscing</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">April 14</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells">19</td>
										<td class="view-message dont-show">Morlig doen</td>
										<td class="view-message">Lorem ipsum dolor sit amet</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">June 16</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells">20</td>
										<td class="view-message dont-show">Morlig doen</td>
										<td class="view-message">mail title</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">June 17</td>
									</tr>
								</tbody>
							</table>
						</div>
					<div class="unstyled inbox-pagination" align="center">
						<span>ajax 페이징 처리 부분</span>
					</div>
				</div>
				</section>
			</div>
		</div>
		<!-- page end-->
	</div>
	</section> 
	<!-- footer -->
	<div class="footer">
		<div class="wthree-copyright">
			<p>
				© 2018 KITRIWARE All rights reserved | Design by DC #26 3TEAM <a
					href="http://w3layouts.com">W3layouts</a>
			</p>
		</div>
	</div>
	<!-- / footer --> 
	</section> 
	<!--main content end--> 
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