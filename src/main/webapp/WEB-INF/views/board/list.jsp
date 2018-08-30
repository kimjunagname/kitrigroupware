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
	
	<h2 class="jg">${ntc_div_nm}</h2>			
	
	<hr style="clear: left;">
	<br>	
	
	<div class="row">
  		<div class="col-sm-11">
  			<select class="form-control" name="key" id="skey" style="float: left; width: 100px; margin-right: 10px;">
    			<option value="ntc_nm">제목</option>
    			<option value="stf_nm">작성자</option>    
  			</select>
  			
  			<input class="form-control" name="word" id="sword" type="text" style="float: left; width: 250px; margin-right: 10px; ">
  			
  			<button type="button" id="searchBtn" class="btn btn-info ns" style="float: left; background-color: #56aebf; border-color: #56aebf;">검색</button>
  		</div>
  		<div class="col-sm-1">
  							
  		<c:if test="${userinfo.admn_sq != 1 && ntc_div_sq == 1 || ntc_div_sq == 2}">
  			<input type="button" value="글쓰기" id="write" class="btn btn-info ns" style="background-color: #56aebf; border-color: #56aebf; float: right">
  		</c:if>
			
  		</div>  				
	</div>
	
	<div class="row">
  		<br>				
	</div>
		
 	<div class="panel panel-default">    
    <div>
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
        <thead>
          <tr>        
            <th style="text-align: center;">제목</th>
            <th style="text-align: center;">작성자</th>
            <th style="text-align: center;">작성일</th>
            <th style="text-align: center;">조회</th>
           
          </tr>
        </thead>
        <tbody>
        <c:forEach var="article" items="${list}">
          <tr style = "cursor:pointer;" class="posting" article-ntc_sq="${article.ntc_sq}"> 
            <td>${article.ntc_nm}</td>
            <td style="text-align: center;">${article.stf_nm}</td>
            <td style="text-align: center;">${article.ntc_dt}</td>
            <td style="text-align: center;">${article.ntc_hits}</td>     
          </tr>          
        </c:forEach>
        </tbody>
         
      </table>
 		
    </div>   
    
  </div>
    ${navigator.navigator}
  <br>
</div>
  </section>  

<!-- boardutil.js -->
<script type="text/javascript" src="${root}/js/boardutil.js"></script>

<script>
control = "${root}/board";
initPath();

$("#firstpage").click(function() {	
	moveBoard('${ntc_div_sq}','${ntc_div_nm}','', '1', '', '', listpath); 
});

$(".mvpage").click(function() {
	moveBoard('${ntc_div_sq}','${ntc_div_nm}','', $(this).attr("move-page-no"), '${key}', '${word}', listpath); 			
});

$("#write").click(function() {	
	moveBoard('${ntc_div_sq}', '${ntc_div_nm}', '','1', '', '', writepath); 
});

$("#searchBtn").click(function() {	
	moveBoard('${ntc_div_sq}', '${ntc_div_nm}','','1', $("#skey").val(), $("#sword").val(), listpath); 	
});

$(".posting").click(function() {
	$("#ntc_div_sq").val("${ntc_div_sq}");
	$("#ntc_div_nm").val("${ntc_div_nm}");
	$("#ntc_sq").val($(this).attr("article-ntc_sq"));
	$("#pg").val("${pg}");
	$("#key").val("${key}");
	$("#word").val("${word}");
	$("form[name='commonform']").attr("method","get").attr("action", viewpath).submit();
});

</script>
