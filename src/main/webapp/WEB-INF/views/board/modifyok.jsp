<title>KITRI GROUPWARE</title>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>

<c:set var="ntc_div_sq" value="${param.ntc_div_sq}"/>
<c:set var="ntc_div_nm" value="${param.ntc_div_nm}"/>
<c:set var="pg" value="${param.pg}"/>
<c:set var="key" value="${param.key}"/>
<c:set var="word" value="${param.word}"/>

<form name="commonform">
	<input type="hidden" name="ntc_div_sq" id="ntc_div_sq">
	<input type="hidden" name="ntc_div_nm" id="ntc_div_nm">
	<input type="hidden" name="ntc_sq" id="ntc_sq">
	<input type="hidden" name="pg" id="pg">
	<input type="hidden" name="key" id="key">
	<input type="hidden" name="word" id="word">	
</form>

<!--main content start-->
<section id="main-content">	
	
	<section class="wrapper">
	
	<div class="table-agile-info">	
	
	<h2 class="jg">${ntc_div_nm} 수정 성공</h2>			
	
	<hr style="clear: left;">
	<br>		
	
	<div class="row">
  		<br>				
	</div>
		
 	<div>    
    <p>${userinfo.stf_nm}님의 글이 정상적으로 수정되었습니다.</p>	    
    <br>
  	</div>
  	
  	<center>
  	<div class="btn-group" >
  		<button type="button" class="btn btn-primary" id="listBtn" style="background-color: #56aebf; border-color: #56aebf;">목록</button>
  		<button type="button" class="btn btn-primary" id="viewBtn" style="background-color: #56aebf; border-color: #56aebf;">작성글 보기</button>  		
	</div>	
	</center>
    
  <br>
</div>
  </section>  


<!-- boardutil.js -->
<script type="text/javascript" src="${root}/js/boardutil.js"></script>

<script>
control = "${root}/board";
initPath();

$("#listBtn").click(function() {
	moveBoard('${ntc_div_sq}', '${ntc_div_nm}','' ,'${pg}', '${key}', '${word}', listpath); 
});

$("#viewBtn").click(function() {
	moveBoard('${ntc_div_sq}', '${ntc_div_nm}','${article.ntc_sq}' ,'${pg}', '${key}', '${word}', viewpath); 
});

</script>
