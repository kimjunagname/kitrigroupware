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
       
             
       <tr> 
       	<td  align="center">   
       	
       	<c:choose>
       	   <c:when test="${userinfo.stf_pt_rt != null && userinfo.stf_pt_nm != null}">
       	   		<img src="${root}/upload/profile/${userinfo.stf_pt_rt}/${userinfo.stf_pt_nm}" style="width: 40px; height: 40px; margin-top: 15px;">
       	   		
       	   </c:when> 
       	   <c:otherwise>	
				<img src="${root}/images/noimage.png" style="width: 40px; height: 40px; margin-top: 15px;">	
			</c:otherwise>  
		</c:choose>			
		</td>
       	<td  align="center">         		
			<textarea class="form-control" id="rtf_cnt" name="rtf_cnt" cols="150" rows="3" style="float: left"></textarea>			
		</td>	
		
		<td  align="center">       		
			<input type="button" value="작성" id="rpyBtn" class="btn btn-primary ns" style="background-color: #56aebf; border-color: #56aebf; float: right; margin-top: 20px;">
		</td>
		
       </tr>   
        <tbody id="rpyview">	 
         
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

//////////////댓글//////////////////

	$.ajax({
		url : "${root}/rpy/${article.ntc_sq}",
		type : 'GET',
		contentType : 'application/json; charset=UTF-8',
		dataType : "json",		
		success : function(data) {					
			makeList(data);				
		}
	});
	
	$("#rpyBtn").click(function() {		
		var ntc_sq = "${article.ntc_sq}";
		var rtf_cnt = $("#rtf_cnt").val();
		$("#rtf_cnt").val('');
		var parameter = JSON.stringify({"ntc_sq" : ntc_sq, "rtf_cnt" : rtf_cnt});		
		if(rtf_cnt.trim().length != 0) { //아무것도 안썼을 때 전송되는 것을 막음
			$.ajax({
				url : "${root}/rpy",
				type : 'POST',
				contentType : 'application/json; charset=UTF-8',
				dataType : "json",
				data : parameter,
				success : function(data) {					
					makeList(data);				
				}
			});
		}
	});	
	
	$(document).on("click",".deleteRpyBtn", function() {		
		if(confirm("정말 삭제할건가요??")){
			var rpy_sq = $(this).parent("td").attr("date-seq");					
			$.ajax({
				url : "${root}/rpy/" + rpy_sq,
				type : 'DELETE',
				contentType : 'application/json; charset=UTF-8',
				dataType : "json",		
				success : function(data) {					
								
				}
			});			
		}		
		getList(); 
	});
	
	$(document).on("click",".viewModifyBtn", function() {			
		var rpy_sq = $(this).parent("td").attr("date-seq");			
		$("#div" + rpy_sq).parent("td").css("display","");
	});
	
	$(document).on("click",".rpyModifyBtn", function() {				
		var rpy_sq = $(this).parents("td").attr("data-seq");
		$("#div" +rpy_sq).css("display","none");
		var ntc_sq = "${article.ntc_sq}";
		var rtf_cnt = $("#rtf_cnt" + rpy_sq).val();
		$("#rtf_cnt").val('');
		var parameter = JSON.stringify({"ntc_sq" : ntc_sq, "rpy_sq" : rpy_sq,"rtf_cnt" : rtf_cnt});		
		if(rtf_cnt.trim().length != 0) { //아무것도 안썼을 때 전송되는 것을 막음
			$.ajax({
				url : "${root}/rpy",
				type : 'PUT',
				contentType : 'application/json; charset=UTF-8',
				dataType : "json",
				data : parameter,
				success : function(data) {					
					makeList(data);				
				}
			});
		}
	});
	
	function getList() {
	
		$.ajax({
			url : "${root}/rpy/${article.ntc_sq}",
			type : 'GET',
			contentType : 'application/json; charset=UTF-8',
			dataType : "json",		
			success : function(data) {					
				makeList(data);				
			}
		});
	}

	function makeList(memos) {
		$("#rpyview").empty();
		var rpylist = memos.rpylist;	
		var output = "";
		for(var i=0;i<rpylist.length;i++) {		
				output += '<tr>'
				if(rpylist[i].stf_pt_rt != null &&  rpylist[i].stf_pt_nm != null){
				output += '		<td rowspan="2"><img src="${root}/upload/profile/' + rpylist[i].stf_pt_rt + '/' + rpylist[i].stf_pt_nm + ' style="width: 40px; height: 40px; margin-top: 15px;""></td>'
				} else {
					output += '		<td rowspan="2"><img src="${root}/images/noimage.png" style="width: 40px; height: 40px; margin-top: 15px;"></td>'
				}
				output += '		<td><b>' + rpylist[i].stf_nm + '</b>  작성시간  : ' + rpylist[i].rtf_dt + ' 수정시간  : ' + rpylist[i].rpy_mod + '</td>'   
				if(rpylist[i].stf_sq == '${userinfo.stf_sq}') {
				output += '		<td rowspan="2" date-seq="' + rpylist[i].rpy_sq + '" width=100 style=" text-align:center; vertical-align:middle;">'
				output += '     	<label class="viewModifyBtn">수정</label>'
				output += '     	<label class="deleteRpyBtn">삭제</label>'
				output += '     </td>'					
				} 
				output += '</tr>'
				output += '<tr>'
				output += '		<td>' + rpylist[i].rtf_cnt + '</td>'
				output += '</tr>'
				if(rpylist[i].stf_sq == '${userinfo.stf_sq}') {
				output += '<tr>'
				output += '	<td colspan="4" data-seq="' + rpylist[i].rpy_sq + '" style="display: none;">';
				output += '	<div id="div' + rpylist[i].rpy_sq + '">';
				output += '	<textarea class="form-control" id="rtf_cnt' + rpylist[i].rpy_sq + '" cols="150" rows="3">' + rpylist[i].rtf_cnt + '</textarea>';
				output += '	<input type="button" value="작성" class="rpyModifyBtn btn btn-primary ns" style="background-color: #56aebf; border-color: #56aebf; margin-top: 15px; float:right;">';
				output += '	</div>';
				output += '</tr>'
				}
		}
		$("#rpyview").append(output);
	}
</script>
