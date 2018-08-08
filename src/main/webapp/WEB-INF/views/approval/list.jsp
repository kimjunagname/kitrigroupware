<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/commons/public.jsp" %>

<!-- body start -->
<section id="container">

<!--main content start-->
<section id="main-content">
	<section class="wrapper">
			<div class="table-agile-info">
			    <div class="row">
			    			<!-- 1단 -->
			                <div class="col-lg-4">
			                <h5>· 일반공문</h5><br>
								 <div class="panel panel-default">
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
								        <tbody>
								         <c:forEach items="${gListCountApproval}" var="map">
								            <td>미결재</td>
								            <td>${map.GLISTCOUNT}건</td>
								            <td>x건</td>
								          <tr>
								            <td>결재</td>
								            <td>x건</td>
								            <td>x건</td>
								          </tr>
								           </c:forEach>
								        </tbody>
								      </table>
								      </div>
								  </div>
						    </div>
						    <div class="col-lg-4">
			                <h5>· 협조공문</h5><br>
								 <div class="panel panel-default">
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
								        <tbody>
								          <tr data-expanded="true">
								            <td>상신문서</td>
								            <td>x건</td>
								            <td>반려문서</td>
								            <td>x건</td>
								          </tr>
								          <tr>
								            <td>임시저장</td>
								            <td>x건</td>
								            <td>결재완료</td>
								            <td>x건</td>
								          </tr>
								        </tbody>
								      </table>
								      </div>
								  </div>
						    </div>
						    <div class="col-lg-4">
			                <h5>· 기타공문</h5><br>
								 <div class="panel panel-default">
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
								         <tbody>
								          <tr data-expanded="true">
								             <td>임시저장</td>
								            <td>x건</td>
								            <td>결재완료</td>
								            <td>x건</td>
								          </tr>
								          <tr>
								            <td>결재</td>
								            <td>x건</td>
								            <td>x건</td>
								          </tr>
								        </tbody>
								      </table>
								      </div>
								  </div>
						    </div>
						    <!-- 2단 -->
						    <div class="col-lg-12">
			                <h5>· 일반 결재문서 > List</h5><br>
								 <div class="panel panel-default">
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
								          <tr data-expanded="true">
								           <th data-breakpoints="xs">문서번호</th>
								           <th data-breakpoints="xs">기안일자</th>
								           <th data-breakpoints="xs">제목</th>
								           <th data-breakpoints="xs">중간결재자</th>
								           <th data-breakpoints="xs">최종결재자</th>
								          </tr>
								         </thead>
								         <tbody>
								          <c:forEach items="${gListApproval}" var="map">
								           <td>${map.APV_SQ}</td>
								           <td>${map.APV_CR_DATE}</td>
								           <td>${map.APV_NM}</td>
								           <td>${map.APV_MID_SQ}</td>
								           <td>${map.APV_FNL_SQ}</td>								          
								          </tr>
								          </c:forEach>
								        </tbody>
								      </table>
								      </div>
								  </div>
						    </div>
						    <!-- 3단 -->
						    <div class="col-lg-12">
			                <h5>· 협조 결재문서 > List</h5><br>
								 <div class="panel panel-default">
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
								          <tr data-expanded="true">
								           <th data-breakpoints="xs">문서번호</th>
								           <th data-breakpoints="xs">기안일자</th>
								           <th data-breakpoints="xs">제목</th>
								           <th data-breakpoints="xs">중간결재자</th>
								           <th data-breakpoints="xs">최종결재자</th>
								          </tr>
								         </thead>
								         <tbody>
								          <c:forEach items="${cListApproval}" var="map">
								           <td>${map.APV_SQ}</td>
								           <td>${map.APV_CR_DATE}</td>
								           <td>${map.APV_NM}</td>
								           <td>${map.APV_MID_SQ}</td>
								           <td>${map.APV_FNL_SQ}</td>	
								          </tr>
								          </c:forEach>
								        </tbody>
								      </table>
								      </div>
								  </div>
						    </div>
						    <!-- 4단 -->
						    <div class="col-lg-12">
			                <h5>· 메모 결재문서 > List</h5><br>
								 <div class="panel panel-default">
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
								          <tr data-expanded="true">
								           <th data-breakpoints="xs">문서번호</th>
								           <th data-breakpoints="xs">기안일자</th>
								           <th data-breakpoints="xs">제목</th>
								           <th data-breakpoints="xs">중간결재자</th>
								           <th data-breakpoints="xs">최종결재자</th>
								          </tr>
								         </thead>
								         <tbody>
								          <c:forEach items="${mListApproval}" var="map">
								           <td>${map.APV_SQ}</td>
								           <td>${map.APV_CR_DATE}</td>
								           <td>${map.APV_NM}</td>
								           <td>${map.APV_MID_SQ}</td>
								           <td>${map.APV_FNL_SQ}</td>								          
								          </tr>
								          </c:forEach>
								        </tbody>
								      </table>
								      </div>
								  </div>
						    </div>
						  <!-- 5단 -->
						    <div class="col-lg-12">
			                <h5>· 기타 결재문서 > List</h5><br>
								 <div class="panel panel-default">
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
								          <tr data-expanded="true">
								           <th data-breakpoints="xs">문서번호</th>
								           <th data-breakpoints="xs">기안일자</th>
								           <th data-breakpoints="xs">제목</th>
								           <th data-breakpoints="xs">중간결재자</th>
								           <th data-breakpoints="xs">최종결재자</th>
								          </tr>
								         </thead>
								         <tbody>
								          <c:forEach items="${eListApproval}" var="map">
								           <td>${map.APV_SQ}</td>
								           <td>${map.APV_CR_DATE}</td>
								           <td>${map.APV_NM}</td>
								           <td>${map.APV_MID_SQ}</td>
								           <td>${map.APV_FNL_SQ}</td>
								          </tr>
								          </c:forEach>
								        </tbody>
								      </table>
								      </div>
								  </div>
						    </div>
			      </div>
			</div>
	</section>
	<!-- </section> 2개는 template.jsp에 위치 -->