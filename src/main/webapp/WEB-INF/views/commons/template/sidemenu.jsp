<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>


<!-- error 발생으로 sidebar css 만 반영  -->
<style>
	/*sidebar navigation*/
#sidebar {
    width:240px;
    height:100%;
    position:fixed;
    background:rgba(52, 48, 48, 0.78);
    -webkit-transition:all .3s ease-in-out;
    -moz-transition:all .3s ease-in-out;
    -o-transition:all .3s ease-in-out;
    transition:all .3s ease-in-out;
}
#sidebar ul li {
    position: relative;
}
.leftside-navigation,.right-stat-bar{
    height: 100%;
}
.right-stat-bar ul {
    list-style-type: none;
    padding-left: 0;
}
/*LEFT NAVIGATION ICON*/
.dcjq-icon {
    height:17px;
    width:17px;
    display:inline-block;
    background:url(../images/nav-expand.png) no-repeat top;
    border-radius:3px;
    -moz-border-radius:3px;
    -webkit-border-radius:3px;
    position:absolute;
    right:10px;
}
.active .dcjq-icon {
    background:url(../images/nav-expand.png) no-repeat bottom;
    border-radius:3px;
    -moz-border-radius:3px;
    -webkit-border-radius:3px;
}
.right-side-accordion .dcjq-icon {
    height:17px;
    width:17px;
    display:inline-block;
    background:url(../images/acc-expand.png) no-repeat top;
    border-radius:3px;
    -moz-border-radius:3px;
    -webkit-border-radius:3px;
    position:absolute;
    right:10px;
}
.right-side-accordion .active .dcjq-icon {
    background:url(../images/acc-expand.png) no-repeat bottom;
    border-radius:3px;
    -moz-border-radius:3px;
    -webkit-border-radius: 3px;
}
.right-side-accordion li:nth-child(2) ul li .prog-row {
    border: none;
}
/*---*/
.nav-collapse.collapse {
    display:inline;
}
ul.sidebar-menu,ul.sidebar-menu li ul.sub {
    margin:-2px 0 0;
    padding:0;
}
ul.sidebar-menu {
    padding-top:80px;

}
#sidebar>ul>li>ul.sub {
    display:none;
}
#sidebar .sub-menu>.sub li a {
    padding-left:46px;
}
#sidebar>ul>li.active>ul.sub,#sidebar>ul>li>ul.sub>li>a {
    display:block;
}
ul.sidebar-menu li ul.sub li {
    background:rgba(52, 48, 48, 0);
    margin-bottom:0;
    margin-left:0;
    margin-right:0;
}
ul.sidebar-menu li ul.sub li a {
    font-size:12px;
    padding-top:13px;
    padding-bottom:13px;
    -webkit-transition:all 0.3s ease;
    -moz-transition:all 0.3s ease;
    -o-transition:all 0.3s ease;
    -ms-transition:all 0.3s ease;
    transition:all 0.3s ease;
    color:#fff;
}
ul.sidebar-menu li ul.sub li a:hover,ul.sidebar-menu li ul.sub li.active a {
    color:#fff;
    -webkit-transition:all 0.3s ease;
    -moz-transition:all 0.3s ease;
    -o-transition:all 0.3s ease;
    -ms-transition:all 0.3s ease;
    transition:all 0.3s ease;
    display:block;
    background:rgba(40, 40, 46, 0.28);
}
ul.sidebar-menu li {
    border-bottom:1px solid rgba(255,255,255,0.05);
}
ul.sidebar-menu li.sub-menu {
    line-height:15px;
}
ul.sidebar-menu ul.sub li {
    border-bottom:none;
}
ul.sidebar-menu li a span {
    display:inline-block;
}
ul.sidebar-menu li a {
    color:#fff;
    text-decoration:none;
    display:block;
    padding:18px 0 18px 25px;
    font-size:12px;
    outline:none;
    -webkit-transition:all 0.3s ease;
    -moz-transition:all 0.3s ease;
    -o-transition:all 0.3s ease;
    -ms-transition:all 0.3s ease;
    transition:all 0.3s ease;
}
ul.sidebar-menu li a.active, ul.sidebar-menu li a:hover, ul.sidebar-menu li a:focus {
    background: rgba(40, 40, 46, 0.28);
    color: #fff;
    display: block;
    -webkit-transition: all 0.3s ease;
    -moz-transition: all 0.3s ease;
    -o-transition: all 0.3s ease;
    -ms-transition: all 0.3s ease;
    transition: all 0.3s ease;
}
ul.sidebar-menu li a i {
    font-size:15px;
    padding-right:6px;
}
ul.sidebar-menu li a:hover i,ul.sidebar-menu li a:focus i {
    color:#fff;
}
ul.sidebar-menu li a.active i {
    color:#fff;
}
.mail-info,.mail-info:hover {
    margin:-3px 6px 0 0;
    font-size: 11px;
}
</style>


    
<!--sidebar start-->
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
            	<!-- index -->
                <li>
                    <a class="active" href="${root}/approval/list.kitri">
                        <i class="fa fa-dashboard"></i>
                        <span>KITRI GroupWare</span>
                    </a>
                </li>
                
                <!-- 공지사항 -->
                
                <li>
                    <a href="${root}/board/list.kitri?ntc_div_sq=1&ntc_div_nm=공지사항&ntc_sq=&pg=1&key=&word=">
                        <i class="fa fa-bullhorn"></i>
                        <span>공지사항</span>
                    </a>                
                </li>
                
                <!-- 메일  -->
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-envelope"></i>
                        <span>Mail </span>
                    </a>
                    <ul class="sub">
                        <li><a href="${root}/email/rcvList.kitri">수신 메일함</a></li>                     
                        <li><a href="${root}/email/sndList.kitri">발신 메일함</a></li>
                        <li><a href="${root}/email/keepList.kitri">받은 메일 보관함</a></li>
                    </ul>
                </li>
                
                <!-- 전자결재 -->
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-book"></i>
                        <span>전자결재</span>
                    </a>
                    <ul class="sub">
						<li><a href="${root}/approval/list.kitri">목록</a></li>
						<li><a href="${root}/approval/write.kitri">공문 작성</a></li>

                    </ul>
                </li>
                
                <!-- 일정관리 -->
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-th"></i>
                        <span>일정관리</span>
                    </a>
                    <ul class="sub">
                        <li><a href="${root}/schedule/aschedule.kitri">관리자 일정보기</a></li>
                        <li><a href="${root}/schedule/dschedule.kitri">부서 일정보기</a></li>
                        <li><a href="${root}/schedule/pschedule.kitri">개인 일정보기</a></li>
                    </ul>
                </li>
                
                <!-- 자유 게시판 -->
                <li>
                     <a href="${root}/board/list.kitri?ntc_div_sq=2&ntc_div_nm=자유게시판&ntc_sq=&pg=1&key=&word=">
                        <i class="fa fa-bullhorn"></i>
                        <span>자유 게시판</span>
                    </a>
                </li>
                
                <!-- 근태관리 -->
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-th"></i>
                        <span>근태관리</span>
                    </a>
                    <ul class="sub">
                        <li><a href="${root}/commute/list.kitri">개인출근조회</a></li>
                        <li><a href="${root}/commute/listdepart.kitri">부서출근조회</a></li>
                    </ul>
                </li>
                
                
              <!-- 관리자 -->
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-glass"></i>
                        <span>관리자</span>
                    </a>
                    <ul class="sub">
                        <li><a href="${root}/organization/organization.kitri">부서/구성원 관리</a></li>
                    </ul>
                </li>


				
            </ul>            
         </div>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->
