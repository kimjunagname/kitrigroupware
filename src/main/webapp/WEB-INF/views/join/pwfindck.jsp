<title>KITRI GROUPWARE</title>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<script type="text/javascript">
$(document).ready(function() {
		
	$("#back").click(function name() {
		$(location).attr("href", "${root}/member/login.kitri");
	});	
	
})
</script>
</head>
<body>
<div class="reg-w3">
<div class="w3layouts-main" style="width: 50%;">
	<h2 class="jg">비밀번호 찾기</h2>
		<form action="#" method="post" class="ns">
			
			<hr>
			
			<br><br>
			
			<p>입력하신  이메일로 비밀번호가 전송되었습니다.</p>	
			
			<br><br>	
  					
			<hr>
			
				<div class="clearfix"></div>
				<input type="button" value="로그인 페이지로 이동" id="back">
		</form>
		
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
