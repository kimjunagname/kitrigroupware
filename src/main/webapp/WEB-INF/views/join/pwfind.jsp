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
			
			<div class="row">
  				<div class="col-sm-4">
  					<span>이름</span>
  				</div>
  				<div class="col-sm-8">
  					<input type="text" class="form-control gg" placeholder="이름">
  				</div>
  			</div>
  			
  			<div class="row">
  				<div class="col-sm-4">
  					<span>아이디</span>
  				</div>
  				<div class="col-sm-8">
  					<input type="text" class="form-control gg" placeholder="아이디">
  				</div>
  			</div>
  			
  			<div class="row">
  				<div class="col-sm-4">
  					<span>이메일</span>
  				</div>
  				<div class="col-sm-8">
  					<input type="text" class="form-control gg" placeholder="이메일 주소 전체를 입력해주세요">
  				</div>
  			</div> 			
  					
			<hr>
			
				<div class="clearfix"></div>
				<input type="button" value="비밀번호 찾기" name="register" onclick="location.href='pwfindck.html'">
		</form>
		<center><label class="ns" id="back">이전 페이지로 돌아가기</label></center>
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
