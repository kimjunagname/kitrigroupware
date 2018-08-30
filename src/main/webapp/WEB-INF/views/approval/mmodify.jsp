<title>KITRI GROUPWARE</title>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- body start -->
<section id="container">
	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<div class="table-agile-info">
				<div class="row">
					<div align="center">
						<h1>메모 결재</h1>
					</div>

					<div>&nbsp;</div>
					<div class="compose-btn pull-right">
						<input type="button" value="결재선 가져오기" class="btn btn-info">
					</div>
					<div>
						<br>
						<br>
					</div>

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
								        }}'>
									<tbody>

										<tr data-expanded="true">
											<th>문서번호
											</td>
											<td>12123</td>
											<th rowspan="2">결재선
											</td>
											<td rowspan="2"><span> 테스트 </span> <span> 테스트 </span> <span>
													테스트 </span></td>
										</tr>

										<tr>
											<th>문서분류
											</td>
											<td>기안서</td>
										</tr>

										<tr>
											<th>공개여부
											</td>
											<td><input type="checkbox"> 공개 <input
												type="checkbox"> 비공개</td>
										</tr>

										<tr>
											<th>기안자
											</td>
											<td>최나영</td>
											<th>기안부서
											</td>
											<td>개발팀</td>
										</tr>

										<tr>
											<th>참조자
											</td>
											<td>결재선과 같게</td>
										</tr>

										<tr>
											<th>제목
											</td>
											<td colspan="3"><input type="text" class="form-control">
											</td>
										</tr>

										<tr>
											<!-- 아래에 썸머노트 rink와 script있음 -->
											<td colspan="4"><textarea id="summernote" name="content"></textarea></td>
										</tr>

										<tr>
											<td colspan="4">
												<form action="" method="post" enctype="multipart/form-data"	name="">
													<input type="file" name="FileName">
												</form>
											</td>
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
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.js"></script>

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



