<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/commons/public.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>

<!-- body start -->
	<section id="container">

		<!--sidebar start-->
		<!--sidebar end-->

		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<div class="table-agile-info">
					<div class="row">
						

						<!-- 2단 -->
						<div class="col-lg-12">
							<div class="panel panel-default">
								<div>
								
									<table class="table" ui-jq="footable"
										ui-options='{
								        "paging": {
								          "enabled": true
								        },
								        "filtering": {
								          "enabled": true
								        },
								        "sorting": {
								          "enabled": true
								        }}' >
								     
								        <tbody>
								        	<tr>
								        		<th></th>
								        		<th colspan="2">
								        			<div align="center">
														<img src="${root}/images/g1.jpg" align="center" width="100" height="100">
													</div>
								        		</th>
								        		<!-- <th></th>  -->
								        		<th colspan="4">
								        			<div align="center" >
														<h6>즐거운 삶이 가득한 회사</h6>
													</div>
														<br>
													<div align="center" >
														<h2>KITRI 주식 회사</h2>
													</div>
								        		</th>
								        		<!-- <th></th> --> 
								        		<!-- <th></th> -->
								        		<th colspan="2">
								        			<div align="center">
														<img src="${root}/images/g1.jpg" align="center" width="100" height="100">
													</div>
								        		</th>
								        		<!-- <th></th>  -->
								        		<th></th>
											</tr>
								        	<tr>
								        		<th></th>
								        		<th>제목</th>
								        		<th colspan="7">수신자 참조</th>
								        		<!-- <th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th> -->
								        		<th></th>  
											</tr>
								        	<tr>
								        		<th></th>
								        		<th>(경유)</th>
								        		<th colspan="7"></th>
								        		<!-- <th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>-->
								        		<th></th>
											</tr>
								        	<tr>
								        		<th></th>
								        		<th>제목</th>
								        		<th colspan="7">빅이슈(노숙인 판매 잡지) 판매원 공간이용 협조</th>
								        		<!-- <th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>-->
								        		<th></th>
											</tr>
								        	<tr>
								        		<th colspan="10">
								        			<div>
														<img src="${root}/images/stick.png" align="center" width="100%" height="15%">
													</div>
								        		</th>
								        		<!-- <th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>  -->
											</tr>		
											<tr>
								          		<!-- 아래에 썸머노트 rink와 script있음 -->
								           		<td colspan="10"><textarea id="summernote" name="content"></textarea>
								           		</td>
								          	</tr>
								          	<tr>
								           		<td colspan="10">
									         		<form action="" method="post" enctype="multipart/form-data" name="">
												  		<input type="file" name="FileName">
											    	</form>
												</td>
								         	 </tr>

								        	<tr>
								        		<th colspan="10">
								        			<div>
														<img src="${root}/images/stick.png" align="center" width="100%" height="15%">
													</div>
								        		</th>
								        		<!-- <th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>  -->
											</tr>

											<tr>
								        		<th></th>
								        		<th>사장</th>
								        		<th>송민섭</th>
								        		<th>부장</th>
								        		<th>최나영</th>
								        		<th>과장</th>
								        		<th>이상규</th>
								        		<th>사원</th>
								        		<th>김정남</th>
								        		<th></th>
											</tr>																																																			        		
											<tr>
								        		<th></th>
								        		<th>경유자</th>
								        		<th>차장</th>
								        		<th>함은진</th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th>
											</tr>									        
											<tr>
								        		<th></th>
								        		<th>시행</th>
								        		<th colspan="4">영업관리팀-0000(2018.08.01)</th>
								        		<!-- <th></th>
								        		<th></th>
								        		<th></th>
								        		<th></th> -->
								        		<th>접수</th>
								        		<th>()</th>
								        		<th></th>
											</tr>																																																			        		
											<tr>
								        		<th></th>
								        		<th>우</th>
								        		<th>12345</th>
								        		<th colspan="4">서울시특별시 부천</th>
								        		<!-- <th></th>
								        		<th></th>
								        		<th></th> 
								        		<th></th> -->
								        		<th colspan="2">/www.kitri.com</th>
								        		<!-- <th></th>  -->
											</tr>								        
											<tr>
								        		<th></th>
								        		<th>전화</th>
								        		<th>123-4567</th>
								        		<th></th>
								        		<th>전송</th>
								        		<th>1234-4567</th>
								        		<th colspan="2">/1234@kitri.com</th>
								        		<!-- <th></th> -->
								        		<th>/공개</th>
								        		<th></th>
											</tr>									        
								        
										</tbody>
									</table>
								</div>
							</div>

							<div class="w3ls_head">
								<input type="button" value="임시보관하기" class="btn btn-info">
								<input type="button" value="상신하기" class="btn btn-info">
							</div>
						</div>
					</div>
				</div>
			</section>
		</section>
		<!--main content end-->
	</section>

<!-- summernote -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.js"></script>

<script type="text/javascript">
  $(function() {
    $('#summernote').summernote({
      height: 300,         
      minHeight: null,      
      maxHeight: null,     
      lang: 'ko-KR'      
    });
  });
</script>

	<!-- morris JavaScript -->
	<script>
</script>


<!-- 완성후 삭제 예정 -->

<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
    text-align: left;    
}
</style>	

	