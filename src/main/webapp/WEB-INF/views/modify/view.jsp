<title>KITRI GROUPWARE</title>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>



<!--main content start-->
<section id="main-content">	
	
	<section class="wrapper">
	
	<div class="table-agile-info">	
	
	<h2 class="jg">마이 페이지</h2>			
	
	<hr style="clear: left;">
	<br>	
	
	
	
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
            <td>아이디</td>
            <td colspan="3">${userinfo.stf_sq}</td> 
          </tr>
     
          <tr> 
            <td>이름</td>
            <td colspan="3">
            
            <c:choose>
       	   	<c:when test="${userinfo.rnk_sq == 1}">
       	   		<img src="${root}/images/rating1.png" class="img-circle" style="width: 40px; height: 40px; margin-top: 15px;">       	   		
       	   </c:when> 
       	   <c:when test="${userinfo.rnk_sq == 2}">
       	   		<img src="${root}/images/rating2.png" class="img-circle" style="width: 40px; height: 40px; margin-top: 15px;">       	   		
       	   </c:when>
       	   <c:when test="${userinfo.rnk_sq == 3}">
       	   		<img src="${root}/images/rating3.png" class="img-circle" style="width: 40px; height: 40px; margin-top: 15px;">       	   		
       	   </c:when>
       	   <c:when test="${userinfo.rnk_sq == 4}">
       	   		<img src="${root}/images/rating4.png" class="img-circle" style="width: 40px; height: 40px; margin-top: 15px;">       	   		
       	   </c:when>
       	  <c:otherwise>	
				<img src="${root}/images/rating5.png" class="img-circle" style="width: 40px; height: 40px; margin-top: 15px;">	
		  </c:otherwise>   
			</c:choose>	
            
            &emsp;${userinfo.stf_nm}
            </td> 
          </tr>    
          
           <tr> 
            <td>핸드폰</td>
            <td colspan="3">${userinfo.stf_ph1} - ${userinfo.stf_ph2} - ${userinfo.stf_ph3}</td> 
          </tr> 
          
           <tr> 
            <td>주소</td>
            <td colspan="3">${userinfo.stf_zip_add} ${userinfo.stf_cm_add} ${userinfo.stf_dt_add}</td>            
          </tr>      
          
          <tr> 
            <td>부서</td>
            <td>${userinfo.dpt_nm}</td>     
            <td>직급</td>
            <td>${userinfo.rnk_nm}</td>        
          </tr> 
          
          <tr> 
            <td>회사 전화번호</td>
            
            <c:choose>
       	   			<c:when test="${userinfo.stf_bs_ph1 != null || userinfo.stf_bs_ph2 != null || userinfo.stf_bs_ph3 != null}">
       	   				 <td colspan="3">기입 하지 않음</td>    	   		
       	   			</c:when> 
       	  			<c:otherwise>	
						<td colspan="3">${userinfo.stf_bs_ph1} - ${userinfo.stf_bs_ph2} - ${userinfo.stf_bs_ph3}</td> 
					</c:otherwise>  
			</c:choose>	
            
                       
          </tr> 
  
        </tbody>
         
      </table>
 		
    </div>   
    
  </div>
  
 <center>
  <button type="button" id="modifyBtn" class="btn btn-info ns" style="background-color: #56aebf; border-color: #56aebf; margin-right: 10px;">수정</button>
  <button type="button" id="deleteBtn" class="btn btn-info ns" style="background-color: #56aebf; border-color: #56aebf;"  data-toggle="modal" data-target="#deleteModal">탈퇴</button>
 </center>
  <br>
</div>

<!-- Modal -->
  <div class="modal fade" id="deleteModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h2 class="modal-title jg">회원 탈퇴</h2>
        </div>
        <div class="modal-body">
          <p class="ns">정말 탈퇴하실 건가요?</p>
        </div>
        <div class="modal-footer ns">
          <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
          <button type="button" class="btn btn-default" id="deleteokBtn">탈퇴</button>
        </div>
      </div>
     </div>
    </div>

  </section>  

<script type="text/javascript">
$(document).ready(function() {
		
	$("#modifyBtn").click(function() {
		$(location).attr("href", "${root}/member/modify.kitri");
	});		
	
	$("#deleteokBtn").click(function() {	
		$(location).attr("href", '${root}/member/delete.kitri?stf_sq=${userinfo.stf_sq}');
	});
})

</script>


