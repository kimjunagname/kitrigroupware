<title>KITRI GROUPWARE</title>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>


<!--main content start-->
<section id="main-content">	
	
	<section class="wrapper">
	
	<div class="table-agile-info">	
	
	<h2 class="jg">마이 페이지 수정 성공</h2>			
	
	<hr style="clear: left;">
	<br>		
	
	<div class="row">
  		<br>				
	</div>
		
 	<div>    
    <p>${userinfo.stf_nm}님의 정보가 정상적으로 수정되었습니다.</p>	    
    <br>
  	</div>
  	
  	<center>
  	<div class="btn-group" >
  		<button type="button" class="btn btn-primary" id="mypageBtn" style="background-color: #56aebf; border-color: #56aebf;">내 정보 보기</button>  		
	</div>	
	</center>
    
  <br>
</div>
  </section>  


<script>
$(document).ready(function() {
	
	$("#mypageBtn").click(function() {
		$(location).attr("href", "${root}/member/view.kitri");
	});			
	
})
</script>
