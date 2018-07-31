<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<%

Cookie cookie[] = request.getCookies();
String id = "";
String ck = "";
if(cookie != null) {
	int len = cookie.length;
	for(int i=0; i<len; i++) {
		if("loginid".equals(cookie[i].getName())){
			id = cookie[i].getValue();
			ck = "checked='checked'";
			break;
		}
	}
}
%>   

<script type="text/javascript">
$(document).ready(function() {
	
	$("#loginBtn").click(function name() {
		if($("#id").val() == "") {
			alert("아이디 입력!");
			return;
		} else if($("#pass").val() == "") {
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
<div class="log-w3">
<div class="w3layouts-main">
	<h2>kitrigroupware</h2>
	
	<br> 
	
		<form name="loginform" method="post" action="">					
			<input id="id" type="text" class="form-control ggg" name="id" placeholder="ID" value="<%= id%>">
			<input id="pass" type="password" class="form-control ggg" name="pass" placeholder="PASSWORD">
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