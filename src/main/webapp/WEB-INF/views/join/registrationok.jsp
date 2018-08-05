<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}"/>

<script type="text/javascript">
$(document).ready(function() {
		
	$("#back").click(function() {	
		$(location).attr("href", "${root}/member/login.kitri");
	});	
	
})

</script>
</head>
<body>
<div class="reg-w3">
<div class="w3layouts-main" style="width: 50%;">
	<h2 class="jg">회원가입 완료</h2>	
			
			<hr>
			
			<div class="row">
  				<p class="ns">
  				회원가입을 축하드립니다!<br>
  				가입되신 아이디는 <span style="color: red">${userinfo.stf_sq}</span>입니다.
  				</p>
  			</div> 			
  					
			<hr>			
		
		<center><label class="ns" id="back">로그인하러 가기</label></center>
</div>
</div>
<script src="${root}/js/bootstrap.js"></script>
<script src="${root}/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="${root}/js/scripts.js"></script>
<script src="${root}/js/jquery.slimscroll.js"></script>
<script src="${root}/js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="${root}/js/jquery.scrollTo.js"></script>
</body>
</html>
