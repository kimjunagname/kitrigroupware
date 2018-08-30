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
	
	<h2 class="jg">${ntc_div_nm} 작성</h2>			
	
	<hr style="clear: left;">
	<br>	
	
	
	
	<div class="row">
  		<br>				
	</div>
		
 	<div class="panel panel-default">    
    <div>
    
    <form name="writeform">
    
    	<input type="hidden" name="ntc_div_sq" value="${ntc_div_sq}">
		<input type="hidden" name="ntc_div_nm" value="${ntc_div_nm}">			
		<input type="hidden" name="pg" value="1">
		<input type="hidden" name="key" value="">
		<input type="hidden" name="word" value="">
    
      <table class="table ns" ui-jq="footable" ui-options='{
        "paging": {
          "enabled": true
        },
        "filtering": {
          "enabled": true
        },
        "sorting": {
          "enabled": true
        }}'>

        <tbody>       
          <tr>            
            <td>제목</td>
            <td><input name="ntc_nm" id="ntc_nm" type="text" style="width: 1050px;"></td>            
          </tr>    
           <tr>            
            <td>내용</td>
            <td><textarea class="summernote" id="ntc_cnt" name="ntc_cnt"></textarea></td>            
          </tr>            
        </tbody>
         
      </table>
    
    
    </div>   
    
  </div>
  	<center>
  	<div class="btn-group" >
  		<button type="button" class="btn btn-primary" id="cencelBtn" style="background-color: #56aebf; border-color: #56aebf;">이전</button>
  		<button type="button" class="btn btn-primary" id="registerBtn" style="background-color: #56aebf; border-color: #56aebf;">글등록</button>  		
	</div>	
	</center>
	</form>
</div>
  </section>  
  
 <!-- boardutil.js -->
<script type="text/javascript" src="${root}/js/boardutil.js"></script>

<!-- summernote -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.js"></script>

<script type="text/javascript">
  $(function() {
    $('.summernote').summernote({
      height: 300,         
      width: 1050,
      minHeight: null,      
      maxHeight: null,     
      lang: 'ko-KR'      
    });
  });
  
  control = "${root}/board";
  initPath();

 
  $("#registerBtn").click(function() {
  	if($("#ntc_nm").val() == "") {
  		alert("제목을 입력해주세요");
  		return;
  	} else if($("#ntc_cnt").val() == "") {
  		alert("내용을 입력해주세요");
  		return;
  	} else {  		
  		$("form[name='writeform']").attr("method","post").attr("action", writepath).submit();
  	}
  });
  
	$("#cencelBtn").click(function() {
		moveBoard('${ntc_div_sq}', '${ntc_div_nm}','' ,'1', '', '', listpath); 
	});	
  
  
</script>

