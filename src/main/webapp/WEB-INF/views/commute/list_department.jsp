<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<!--main content start--><!--main content start--><!--main content start--><!--main content start-->
<!--main content start--><!--main content start--><!--main content start--><!--main content start-->
<!--main content start--><!--main content start--><!--main content start--><!--main content start-->
<!--main content start--><!--main content start--><!--main content start--><!--main content start-->
<!--main content start--><!--main content start--><!--main content start--><!--main content start-->


<section id="main-content">
 <section class="wrapper">
 <div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      부서출근일별조회
    </div>
    <div class="row w3-res-tb">
      <div class="col-sm-7 m-b-xs">
     	[${commuteList[0].DPT_NM}]
     	<form id="searchForm">
		<input type="date" class="input-sm form-control w-sm inline v-middle" name="searchDate" id="searchDate" value="" required>
		<!-- 
        <select class="input-sm form-control w-sm inline v-middle">
          <option value="0">Bulk action</option>
          <option value="1">Delete selected</option>
          <option value="2">Bulk edit</option>
          <option value="3">Export</option>
        </select>
         -->
        <button class="btn btn-sm btn-default" id="searchBtn">조회</button>                
      	</form>
      </div>
      <div class="col-sm-0">
      </div>
      <div class="col-sm-5">
        <!-- 
        <div class="input-group">
          <input type="text" class="input-sm form-control" placeholder="Search">
          <span class="input-group-btn">
            <button class="btn btn-sm btn-default" type="button">Go!</button>
          </span>
        </div>
         -->
      </div>
    </div>
    
    
    <div>
      <table class="table" ui-jq="footable" ui-options='{
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
            <th data-breakpoints="xs">이름</th>
            <th>출근시간</th>
            <th>퇴근시간</th>
            <th data-breakpoints="xs">상태</th>
<!--             <th data-breakpoints="xs sm md" data-title="DOB">지각시간</th> -->
            <th data-breakpoints="xs">사유</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="map" items="${commuteList}">
          <tr>
          	<td class="NM">[${map.STF_SQ}]${map.STF_NM} [${map.RNK_NM}]</td>
          	<td class="STR">${fn:substring(map.CMT_STR_TM, 11, 16)}</td>
          	<td class="END">${fn:substring(map.CMT_END_TM, 11, 16)}</td>
			<td class="STT">${map.SCD_NM}</td>
<!-- 			<td></td> -->
          	<td class="MSG">${map.CMT_MSG}</td>
          </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>

  </div>
</div>
</section>
</section>

<!--main content end--><!--main content end--><!--main content end--><!--main content end--><!--main content end-->
<!--main content end--><!--main content end--><!--main content end--><!--main content end--><!--main content end-->
<!--main content end--><!--main content end--><!--main content end--><!--main content end--><!--main content end-->
<!--main content end--><!--main content end--><!--main content end--><!--main content end--><!--main content end-->
<!--main content end--><!--main content end--><!--main content end--><!--main content end--><!--main content end-->
<!--main content end--><!--main content end--><!--main content end--><!--main content end--><!--main content end-->


<script>
$(document).ready(function(){
	var searchDate = "${searchDate}";
	if(searchDate != ""){
		$("#searchDate").val(searchDate);
	}else{
		setDate();
	}
});

$("#searchBtn").click(function() {
	$("#searchForm").attr("method", "post").attr("action", "${root}/commute/listdepart.kitri").submit();
});

function setDate(){
	var date = new Date();
	var year = date.getFullYear();
	var month = date.getMonth();
	$("#searchDate").val(date.toISOString().slice(0,10));
	
};
</script>

