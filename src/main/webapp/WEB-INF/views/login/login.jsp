<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<%

Cookie cookie[] = request.getCookies();
String stf_sq = "";
String ck = "";
if(cookie != null) {
	int len = cookie.length;
	for(int i=0; i<len; i++) {
		if("loginid".equals(cookie[i].getName())){
			stf_sq = cookie[i].getValue();
			ck = "checked='checked'";
			break;
		}
	}
}
%>   

<script type="text/javascript">
$(document).ready(function() {
	
	$("#loginBtn").click(function() {
		if($("#stf_sq").val() == "") {
			alert("아이디 입력!");
			return;
		} else if($("#stf_pw").val() == "") {
			alert("비번 입력!");
			return;
		} else {
			$("form[name='loginform']").attr("method","POST").attr("action","${root}/member/login.kitri").submit();
		}		
	}); 
	
	$("#registerBtn").click(function name() {			
		$(location).attr("href", "${root}/member/register.kitri");
	});
	
	$("#idfind").click(function name() {
		$(location).attr("href", "${root}/member/idfind.kitri");
	});
	
	$("#pwfind").click(function name() {
		$(location).attr("href", "${root}/member/pwfind.kitri");
	});
})

</script>
</head>
<body>
<div class="log-w3 ns">
<div class="w3layouts-main">
	<img src="${root}/images/logo.png" style="display: block; margin-left: auto; margin-right: auto;">
	
	<br> 
	
		<form name="loginform" method="post" action="">					
			<input id="stf_sq" type="text" class="form-control ggg" name="stf_sq" placeholder="ID" value="<%= stf_sq%>">
			<input id="stf_pw" type="password" class="form-control ggg" name="stf_pw" placeholder="PASSWORD">
			<span><input type="checkbox" name="idsave" <%=ck %> value="saveok"> 아이디 저장</span>
			<h6><label id="idfind">아이디</label> 또는 <br>
			<label id="pwfind">비밀번호</label> 찾기</h6>
				<div class="clearfix"></div>
				<input type="button" value="LOGIN" id="loginBtn">
		</form>
		<p class="ns">아직 계정이 없으신가요?<label id="registerBtn">회원가입</label></p>
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