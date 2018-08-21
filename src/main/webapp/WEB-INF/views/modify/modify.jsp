<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>



<!--main content start-->
<section id="main-content">	
	
	<section class="wrapper">
	
	<div class="table-agile-info">	
	
	<h2 class="jg">마이 페이지 수정</h2>			
	
	<hr style="clear: left;">
	<br>	
	
	
	
	<div class="row">
  		<br>				
	</div>
		
 	<div class="panel panel-default ns" style="padding: 20px;">    
      <form name="modifyform" method="post" action="">	
      
      		<div class="row" style="padding: 5px;">
  				<div class="col-sm-4">
  					<span>아이디</span>
  				</div>
  				<div class="col-sm-8">
  					<input type="text" class="form-control gg"  readOnly="readonly" name="stf_sq" id="stf_sq" value="${userinfo.stf_sq}">
  				</div>  				
			</div>      		
      		
      		<div class="row" style="padding: 5px;">
  				<div class="col-sm-4">
  					<span>이름</span>
  				</div>
  				<div class="col-sm-8" >
  					<input type="text" class="form-control gg" name="stf_nm" id="stf_nm" value="${userinfo.stf_nm}">
  				</div>
  			</div>
  			
  			<div class="row" style="padding: 5px;">
  				<div class="col-sm-4">
  					<span>비밀번호</span>
  				</div>
  				<div class="col-sm-8">
  					<input type="password" class="form-control gg" name="stf_pw" id="stf_pw"  placeholder="비밀번호">
  				</div>
  			</div>
  			
  			<div class="row" style="padding: 5px;">
  				<div class="col-sm-4">
  					<span>비밀번호 재확인</span>
  				</div>
  				<div class="col-sm-8">
  					<input type="password" class="form-control gg" name="stf_pwcheck" id="stf_pwcheck" placeholder="비밀번호 재확인">
  				</div>  				
			</div>
			 
			<hr>			
  			
  			<div class="row" style="padding: 5px;">
  				<div class="col-sm-4">
  					<span>핸드폰</span>
  				</div>
  				<div class="col-sm-8">
  					<select class="form-control gg" style="float: left; width: 30%;" name="stf_ph1" id="stf_ph1"> 
  					
  					 <c:choose>
  					 
       	   				<c:when test="${userinfo.stf_ph1 == 010}">
       	   				    <option selected="selected">010</option>
        					<option>011</option>
        					<option>019</option> 	   		
       	   				</c:when> 
       	   				<c:when test="${userinfo.stf_ph1 == 011}">
       	   				    <option>010</option>
        					<option selected="selected">011</option>
        					<option>019</option> 	   		
       	   				</c:when> 
       	  				<c:otherwise>	
							<option>010</option>
        					<option>011</option>
        					<option selected="selected">019</option> 
						</c:otherwise> 
					 
					</c:choose>	  					
        		       		
      				</select>
      				<span style="float: left;">&nbsp;-&nbsp;</span> 
      				<input type="text" class="form-control gg" style="float: left; width: 30%;" name="stf_ph2" id="stf_ph2" value="${userinfo.stf_ph2}">			
					<span style="float: left;">&nbsp;-&nbsp;</span>
					<input type="text" class="form-control gg" style="float: left; width: 30%;" name="stf_ph3" id="stf_ph3" value="${userinfo.stf_ph3}">
  				</div>
  			</div>
  			
  			<div class="row" style="padding: 5px;">
  				<div class="col-sm-4">
  					<span>주소</span>
  				</div>
  				<div class="col-sm-8">
  					<span>
  						<input type="text" id="sample6_postcode" class="form-control gg"  readOnly="readonly"  style="float: left; width: 20%" name="stf_zip_add" value="${userinfo.stf_zip_add}">
  						<p style="float: left"> &emsp;</p>
  						<p class="zip ns" onclick= "sample6_execDaumPostcode()" style="float: left; background-color: #56aebf; color: white; padding: 5px; margin: 5px;" >
  						&emsp;검색 &emsp;</p><br>						
						<input type="text" class="form-control gg" id="sample6_address" name="stf_cm_add" readOnly="readonly" style="margin-bottom: 5px;" value="${userinfo.stf_cm_add}">
						<input type="text" class="form-control gg" id="sample6_address2" name="stf_dt_add" value="${userinfo.stf_dt_add}">							
  					</span> 
  				</div>  				
			</div>			
  			
  			<div class="row" style="padding: 5px;">
  				<div class="col-sm-4">
  					<span>본인확인용 이메일</span>
  				</div>
  				<div class="col-sm-8">
  					<input type="text" class="form-control gg" style="float: left; width: 45%;" name="stf_eml1" id="stf_eml1" value="${userinfo.stf_eml1}">
  					<span style="float: left;">&nbsp;@&nbsp;</span>
  					<input type="text" class="form-control gg" value="gmail.com"  style="float: left; width: 45%;" name="stf_eml2" id="stf_eml2" readonly="readonly">  									
      				<div id= "emailresult" style="clear: left;">사용 중인 이메일은 이용하실 수 없습니다</div>
  				</div>
  			</div>		
  				
			<div class="row" style="padding: 5px;">
  				<div class="col-sm-4">
  					<span>부서</span>
  				</div>
  				<div class="col-sm-8">
  					<select class="form-control gg" name="dpt_sq" id="dpt_sq">			
  					<c:forEach var="dpt" items="${dptlist}">
  					
  					<c:choose>
  					 
       	   				<c:when test="${userinfo.dpt_sq == dpt.dpt_sq}">
       	   				    <option value="${dpt.dpt_sq}" selected="selected">${dpt.dpt_nm}</option>      		
       	   				</c:when>        	   				
       	  				<c:otherwise>	
							<option value="${dpt.dpt_sq}">${dpt.dpt_nm}</option>   
						</c:otherwise> 
					 
					</c:choose>	     
        			</c:forEach>						
        				    	
      				</select>
  				</div>  				
			</div>			
			
			
			
			<hr>
			
			<div class="row" style="padding: 5px;">
  				<div class="col-sm-4">
  					<span>* 선택사항 *</span>
  				</div>  								
			</div>
			
			<div class="row" style="padding: 5px;">
  				<br>	  											
			</div>
						
			<div class="row" style="padding: 5px;">
  				<div class="col-sm-4">
  					<span>회사 전화번호</span>
  				</div>
  				<div class="col-sm-8">
  					<select class="form-control gg" style="float: left; width: 30%;" name="stf_bs_ph1" id="stf_bs_ph1">
  					
  					<c:choose>
  					 
       	   				<c:when test="${userinfo.stf_bs_ph1 == 02}">
       	   				    <option selected="selected">02</option>
        					<option>031</option>
        					<option>032</option>	   		
       	   				</c:when> 
       	   				<c:when test="${userinfo.stf_ph1 == 031}">
       	   				    <option>02</option>
        					<option selected="selected">031</option>
        					<option>032</option>	   		
       	   				</c:when> 
       	  				<c:otherwise>	
							<option>02</option>
        					<option>031</option>
        					<option selected="selected">032</option>
						</c:otherwise> 
					 
					</c:choose>	  					
        				      		
      				</select>
      				<span style="float: left;">&nbsp;-&nbsp;</span> 
      				<input type="text" class="form-control gg" style="float: left; width: 30%;" name="stf_bs_ph2" id="stf_bs_ph2" value="${userinfo.stf_bs_ph2}">			
					<span style="float: left;">&nbsp;-&nbsp;</span>
					<input type="text" class="form-control gg" style="float: left; width: 30%;" name="stf_bs_ph3" id="stf_bs_ph3" value="${userinfo.stf_bs_ph3}">
  				</div>
  			</div>  		 			
  			
    </form>
  </div>
  
 <center>
  <button type="button" id="modifyBtn" class="btn btn-info ns" style="background-color: #56aebf; border-color: #56aebf;">수정</button>
 </center>
  <br>
</div>
  </section>  
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	$("#modifyBtn").click(function() {
		if($("#stf_nm").val()== ""){
			alert("이름 입력!");
			return;
		} else if($("#stf_pw").val()== ""){
			alert("비밀번호 입력!");
			return;
		} else if($("#stf_pw").val()!= $("#stf_pwcheck").val()){
			alert("비밀번호 확인!");
			return;
		} else if($("#sample6_address").val() == ""){
			alert("주소 확인!");
			return;			
		} else if($("#stf_eml1").val() == ""){
			alert("이메일 확인!");
			return;	
		} else if($("#stf_ent").val() == ""){
			alert("입사일 확인!");
			return;	
		} else {
			$("form[name='modifyform']").attr("method","POST").attr("action","${root}/member/modify.kitri").submit();
		}
		
	})		
	
	$('#stf_eml1').keyup(function() {
		var stf_eml1= $('#stf_eml1').val();
		var stf_eml2= $('#stf_eml2').val();
		
		$.ajax({
			type : "GET",
			url : "${root}/member/emlckeck.kitri",
			dataType : "json",
			data : {"stf_eml1": stf_eml1, "stf_eml2": stf_eml2},
			success : function(data){
			cnt= parseInt(data.emlcount);					
					
			if(cnt== 0){
				$('#emailresult').css("color", "blue");
				$('#emailresult').text(stf_eml1 +"@" + stf_eml2 + "는 사용가능합니다");
				} else {
					$('#emailresult').css("color", "red");
					$('#emailresult').text(stf_eml1 +"@" + stf_eml2 + "는 사용중입니다");
				} 
			},
			error : function(e){
					
			}
		});
		
	});
	
})

 function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }

</script>


   



