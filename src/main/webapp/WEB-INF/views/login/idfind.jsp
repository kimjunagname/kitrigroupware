<title>KITRI GROUPWARE</title>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}"/>

<script type="text/javascript">
$(document).ready(function() {
		
	$("#back").click(function() {
		$(location).attr("href", "${root}/member/login.kitri");
	});	
	
	$("#idfind").click(function() {
		$("form[name='idfindform']").attr("method","POST").attr("action","${root}/member/idfind.kitri").submit();
	});
	
})

</script>
</head>
<body>
<div class="reg-w3">
<div class="w3layouts-main" style="width: 50%;">
	<h2 class="jg">아이디 찾기</h2>
		<form name="idfindform" method="post" action="">	
			
			<hr>			
  			
  			<div class="row">
  				<div class="col-sm-4">
  					<span>이메일</span>
  				</div>
  				<div class="col-sm-8">
  					<input type="text" class="form-control gg" placeholder="이메일"  style="float: left; width: 45%;" name="stf_eml1" id="stf_eml1">
  					<span style="float: left;">&nbsp;@&nbsp;</span>
  					<input type="text" class="form-control gg" value="gmail.com"  style="float: left; width: 45%;" name="stf_eml2" id="stf_eml2" readonly="readonly"> 
  				</div>
  			</div> 			
  					
			<hr>
			
				<div class="clearfix"></div>
				<input type="button" value="아이디 찾기" id="idfind">
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
