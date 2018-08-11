<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>

<c:set var="ntc_div_sq" value="${param.ntc_div_sq}"/>
<c:set var="ntc_div_nm" value="${param.ntc_div_nm}"/>
<c:set var="ntc_sq" value="${param.ntc_sq}"/>
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
  		<div class="col-sm-10">
  			<input type="button" value="목록" id="listBtn" class="btn btn-info ns" style="background-color: #56aebf; border-color: #56aebf; float: left">
  		</div>
  		<div class="col-sm-2">
  							
  		<c:if test="${userinfo.admn_sq != 1 && ntc_div_sq == 1 && userinfo.stf_sq == article.stf_sq || ntc_div_sq == 2 && userinfo.stf_sq == article.stf_sq}">
  			
  			<input type="button" value="삭제" class="btn btn-primary ns" style="background-color: #56aebf; border-color: #56aebf; float: right;"  data-toggle="modal" data-target="#deleteModal">
  			<input type="button" value="수정" id="modifyBtn" class="btn btn-primary ns" style="background-color: #56aebf; border-color: #56aebf; float: right;  margin-right: 10px;">
						
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
       
        <tbody>
        
          <tr> 
            <td>작성자</td>   
            <td>${article.stf_nm}</td>   
            <td>등록날짜</td>   
            <td>${article.ntc_dt}</td> 
            <td>조회수</td>   
            <td>${article.ntc_hits}</td>     
          </tr> 
          
          <tr> 
          	<td>제목</td>
          	<td colspan="5">${article.ntc_nm}</td>          
          </tr>   
          
          <tr> 
          	<td>내용</td>
          	<td colspan="5">${article.ntc_cnt}</td>          
          </tr>    
     
       
        </tbody>
         
      </table>
 		
    </div>   
    
  </div>
  
  <br>
  
</div>

<!-- Modal -->
  <div class="modal fade" id="deleteModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h2 class="modal-title">${ntc_div_nm} 삭제</h2>
        </div>
        <div class="modal-body">
          <p>정말 삭제하실 건가요?</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
          <button type="button" class="btn btn-default" id="deleteBtn">삭제</button>
        </div>
      </div>

  </section>  

<!-- boardutil.js -->
<script type="text/javascript" src="${root}/js/boardutil.js"></script>

<script>
control = "${root}/board";
initPath();

$("#listBtn").click(function() {	
	moveBoard('${ntc_div_sq}', '${ntc_div_nm}', '${ntc_sq}','${pg}', '${key}', '${word}', listpath);  	
});

$("#modifyBtn").click(function() {	
	moveBoard('${ntc_div_sq}', '${ntc_div_nm}', '${ntc_sq}','${pg}', '${key}', '${word}', modifypath);  	
});

$("#deleteBtn").click(function() {	
	moveBoard('${ntc_div_sq}', '${ntc_div_nm}', '${ntc_sq}','${pg}', '${key}', '${word}', deletepath);  	
});

</script>
