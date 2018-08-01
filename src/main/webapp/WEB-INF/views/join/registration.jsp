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
	<h2 class="jg">회원가입</h2>
		<form action="#" method="post" class="ns">
			
			<hr>
			
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
  					<span>비밀번호</span>
  				</div>
  				<div class="col-sm-8">
  					<input type="text" class="form-control gg" placeholder="비밀번호(8자 이상)">
  				</div>
  			</div>
  			
  			<div class="row">
  				<div class="col-sm-4">
  					<span>비밀번호 재확인</span>
  				</div>
  				<div class="col-sm-8">
  					<input type="text" class="form-control gg" placeholder="비밀번호 재확인">
  				</div>  				
			</div>
			 
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
  					<span>핸드폰</span>
  				</div>
  				<div class="col-sm-8">
  					<select class="form-control gg" style="float: left; width: 30%;">
        				<option>010</option>
        				<option>011</option>
        				<option>019</option>        		
      				</select>
      				<span style="float: left;">&nbsp;-&nbsp;</span> 
      				<input type="text" class="form-control gg" style="float: left; width: 30%;">			
					<span style="float: left;">&nbsp;-&nbsp;</span>
					<input type="text" class="form-control gg" style="float: left; width: 30%;">
  				</div>
  			</div>
  			
  			<div class="row">
  				<div class="col-sm-4">
  					<span>본인확인용 이메일</span>
  				</div>
  				<div class="col-sm-8">
  					<input type="text" class="form-control gg" placeholder="이메일"  style="float: left; width: 45%;">
  					<span style="float: left;">&nbsp;@&nbsp;</span>
  					<select class="form-control gg" style="float: left; width: 45%;">
        				<option>naver.com</option>
        				<option>gmail.com</option>
        				<option>hanmail.net</option>        	
        				<option>nate.com</option> 	
      				</select>
  				</div>
  			</div>			
			
			<hr>
			
			<div class="row">
  				<div class="col-sm-4">
  					<span>부서</span>
  				</div>
  				<div class="col-sm-8">
  					<select class="form-control gg">
        				<option>개발부</option>
        				<option>판매부</option>
        				<option>기술부</option>       	
      				</select>
  				</div>  				
			</div>
			
			<div class="row">
  				<div class="col-sm-4">
  					<span>직급</span>
  				</div>
  				<div class="col-sm-8">
  					<select class="form-control gg">
        				<option>과장</option>
        				<option>부장</option>
        				<option>사원</option>     	
      				</select>
  				</div>  				
			</div>
			
			<div class="row">
  				<div class="col-sm-4">
  					<span>입사일</span>
  				</div>
  				<div class="col-sm-8">
  					<input type="date" class="form-control gg">
  				</div>  				
			</div>
			
			<hr>
			
				<div class="clearfix"></div>
				<input type="button" value="등록" name="register" onclick="location.href='login.html'">
		</form>
		<p class="ns">이미 계정이 있으신가요?<label id="back">Login</label></p>
</div>
</div>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.dcjqaccordion.2.7.js"></script>
<script src="js/scripts.js"></script>
<script src="js/jquery.slimscroll.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="js/jquery.scrollTo.js"></script>
</body>
</html>
