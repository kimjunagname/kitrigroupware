<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}"/>
</head>
<body>
<div class="reg-w3">
<div class="w3layouts-main" style="width: 50%;">
	<h2 class="jg">아이디 찾기</h2>
		<form action="#" method="post" class="ns">
			
			<hr>
			
			<br><br>
			
			<p>입력하신  이메일로 아이디가 전송되었습니다.</p>	
			
			<br><br>	
  					
			<hr>
			
				<div class="clearfix"></div>
				<input type="button" value="로그인 페이지로 이동" onclick="location.href='login.html'">
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
