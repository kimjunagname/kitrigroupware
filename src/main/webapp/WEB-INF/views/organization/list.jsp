<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/commons/public.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>조직도 관리</title>
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

<!-- jQuery EasyUi API -->
<link rel="stylesheet" type="text/css" href="${root}/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${root}/easyui/themes/icon.css">
<script type="text/javascript" src="${root}/easyui/jquery.easyui.min.js"></script>

</head>
<body>
<section id="container">
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
<div class="brand">

    <a href="index.html" class="logo">
        KITRIWARE
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
				<li class="sub-menu"><a class="active" href="javascript:;">
						<i class="fa fa-user"></i> <span>관리자</span>
				</a>
					<ul class="sub">
						<li><a href="${root}/email/emaillist.kitri">조직도 관리</a></li>
						<li><a href="${root}/email/sendlist.kitri">기능1</a></li>
						<li><a href="${root}/email/keeplist.kitri">기능2</a></li>
					</ul></li>
			</ul>
		</div>
		<!-- sidebar menu end-->
	</div>
</aside>
<!--sidebar end-->
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
                           	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           	&nbsp;&nbsp;
                           	<!----------------->
                           	<span align="left">
								<button class="btn btn-primary btn-sm" id="manage" type="button" data-toggle="modal" data-target="#insertModal">관리</button>
							</span>
                        </div>
                        <ul class="easyui-tree">
                        	<li>
                        		<span>KITRIWARE</span>
                  				<ul>
                    				<li data-options="state:'opened'">
                        			<span>기획부</span>
                        			<ul>
                            			<li>
                                			<span>이부장</span>
                            			</li>
                            			<li>
                                			<span>김과장</span>
                           				</li>
                            			<li>
                                			<span>이대리</span>
                            			</li>
                            			<li>
                                			<span>박사원</span>
                            			</li>
                        				</ul>
                    				</li>
                    			<li>
                        		<span>개발부</span>
                        		<ul>
                            		<li>박부장</li>
                            		<li>서과장</li>
                            		<li>함대리</li>
                            		<li>이사원</li>
                        		</ul>
                        		</li>
                        		<li>
                        		<span>경영부</span>
                        		<ul>
                            		<li>서부장</li>
                            		<li>임과장</li>
                            		<li>송대리</li>
                            		<li>김사원</li>
                        		</ul>
                        		</li>
                        		<li>
                        		<span>홍보부</span>
                        		<ul>
                            		<li>서부장</li>
                            		<li>임과장</li>
                            		<li>박대리</li>
                            		<li>박사원</li>
                        		</ul>
                    			</li>
                    			<!-- data 둘어갈 시 원상복귀 시키기 -->	
								<!-- <ul>
									<c:forEach items="${selectDpt_Div_Tb}" var="dptmap">
										<li data-options="state:'closed'"><span>${dptmap.DPT_NM}</span>
											<ul>
												<c:forEach items="${selectOrganization}" var="stfmap">
													<c:if test="${dptmap.DPT_NM eq stfmap.DPT_NM}">
														<li>[${stfmap.DPT_NM}/${stfmap.RNK_NM}]
															${stfmap.STF_NM}</li>
													</c:if>
												</c:forEach>
											</ul></li>
									</c:forEach> -->
								<!------------------------->
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
                       <h4 class="gen-case"><b>구성원 보기</b>
                    </header>
                    </h4>
                    <div id="rightBottom">
						<span>
							<label>전체 : </label>
							<span id="userCount"><!-- ${officerListCount}--></span>명
							<input type="hidden" id="navStfNm" value="${navStfNm }"/>
						</span>
						&nbsp;
						<span>
							<button class="btn btn-success btn-sm" id="manage" type="button" data-toggle="modal" data-target="#insertModal">구성원 추가</button>
						</span>
						<span>
							<button class="btn btn-warning btn-sm" id="manage" type="button" data-toggle="modal" data-target="#insertModal">구성원 수정</button>
						</span>
						<span>
							<button class="btn btn-danger btn-sm" id="manage" type="button" data-toggle="modal" data-target="#insertModal">구성원 삭제</button>
						</span>
					</div>
                    <div class="table-responsive">
                    	<table id="officerList" class="tableMiddle table table-hover">
								<colgroup>
									<col width="96PX" />
									<col width="15%" />
									<col width="15%" />
									<col width="15%" />
									<col width="15%" />
									<col width="15%" />
									<col width="15%" />
								</colgroup>
								<thead>
									<tr class="active">
										<th class="text-center">사진</th>
										<th class="text-center">이름</th>
										<th class="text-center">직급</th>
										<th class="text-center">조직</th>
										<th class="text-center">핸드폰번호</th>
										<th class="text-center">내선번호</th>
										<th class="text-center">이메일</th>
									</tr>
								</thead>
								<!-- 
								<tbody>
									<c:forEach items="${officerList}" var="map">
										<tr>
											<td class="text-center"><img src="${map.STF_PT_RT}" class="profileImg"/></td>
											<td class="text-center">${map.STF_NM}</td>
											<td class="text-center">${map.RNK_NM}</td>
											<td class="text-center">${map.DPT_NM}</td>
											<td class="text-center">${map.STF_PH}</td>
											<td class="text-center">${map.STF_BS_PH}</td>
											<td class="text-center">${map.STF_EML}</td>
										</tr>
									</c:forEach>
								</tbody>
								--->
							</table>    
                        <div class="table-inbox-wrap ">
  
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
			  <p>© 2018 KITRIWARE All rights reserved | Design by DC #26 3TEAM<a href="http://w3layouts.com">W3layouts</a></p>
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
