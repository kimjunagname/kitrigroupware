<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/commons/public.jsp" %>
	<!--sidebar end--> 
	<!-- 메일 조회시 부트스트랩 모달 시작(할일) -->
	<div class="modal fade" id="readModal" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">편지조회</h4>
				</div>
				<div class="modal-body">
					<form role="form" id="readFrm" method="post" >
						<table class="table table-striped table-bordered">
							<colgroup>
								<col width="30%" />
								<col width="70%" />
							</colgroup>

							<tbody>
								<tr>
									<th>제목</th>
									<td id="eml_nm1">여기는 제목입니다.</td>
								</tr>
								<tr>
									<th>내용</th>
									<td>
										<textarea id="eml_cnt1" readonly="readonly" rows="10"style="width: 100%; resize:none;">여기는 내용입니다.</textarea>
									<td>
								</tr>
								<tr>
									<th>보낸사람</th>
									<td id="stf_nm1">여기는 보내는 사람입니다.</td>
								</tr>
								<tr>
									<th>받은시간</th>
									<td id="rcv_dt1">여기는 받는사람입니다.</td>
								<tr>
									<th>첨부파일</th>
									<td id="eml_pl_nm1"></td>
								</tr>
							</tbody>
						</table>
                     </form>
					</div>
					<div class="modal-footer">
					    <button type="button" class="btn btn-success" data-dismiss="modal">확인</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>	
		<!-- 메일 조회시 부트스트랩 모달 끝 -->
		<!--main content start--> 
		<section id="main-content"> 
			<section class="wrapper">
			<div class="table-agile-info">
			<!-- page start-->
				<div class="row">
					<div class="col-sm-20 mail-w3agile">
						<section class="panel"> 
							<header class="panel-heading wht-bg">
								<h4 class="gen-case">
								<strong>받은 메일 보관함</strong>
								<form action="#" class="pull-right mail-src-position">
									<div>
									<select name="item" style="width: 60px; height: 30px; font-size: 16px;" class="inp">
										<option value="subject">제목
										<option value="writer">이름
									</select> 
									<span> 
										<input type="text" name="query" size="22" class="inp" style="margin-top: -19px;">
									</span> 
									<span>
										<button class="btn btn-success" id="search" type="button">검색</button>
									</span>
									<span>
										<button class="btn btn-warning" id="deleteBtn" type="button">체크 메일 삭제</button>
									</span>
									</div>
								</form>
								</h4>
							</header>
							<div class="panel-body minimal">
								<div class="table-inbox-wrap ">
									<table class="table table-inbox table-hover">
									<tbody id="mail list">
									<tr class="">
										<td class="inbox-small-cells">
											<input type="checkbox" class="mail-checkbox">
										</td>
										<td class="view-message  dont-show">
											<a href="#">ABC Company</a>
										</td>
										<td class="view-message ">
											<a href="#" data-toggle="modal" class="eml_rd" data-value="" data-target="#readModal">Lorem ipsumdolor imit set.</a>
										</td>
										<td class="view-message  inbox-small-cells"></td>
										<td class="view-message  text-right">12.10 AM</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells">
											<input type="checkbox" class="mail-checkbox">
										</td>
										<td class="view-message dont-show">
											<a href="#">Mr Bean</a>
										</td>
										<td class="view-message">
											<a href="#">Hi Bro, Lorem ipsum dolor imit</a>
										</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">Jan 11</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells">
											<input type="checkbox" class="mail-checkbox">
										</td>
										<td class="view-message dont-show">
											<a href="#">Jonathan Smith</a>
										</td>
										<td class="view-message">
											<a href="#">Lorem ipsum dolorsit amet</a>
										</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">March 15</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells">
											<input type="checkbox" class="mail-checkbox">
										</td>
										<td class="view-message dont-show">
											<a href="#">Facebook</a>
										</td>
										<td class="view-message">
											<a href="#">Dolor sit amet, consectetuer adipiscing</a>
										</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">June 01</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells">
											<input type="checkbox"class="mail-checkbox">
										</td>
										<td class="view-message dont-show">
											<a href="#">Tasi man </a>
										</td>
										<td class="view-message">
											<a href="#">Lorem ipsum dolor sit amet</a>
										</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">May 2</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells"><input type="checkbox"
										class="mail-checkbox"></td>
										<td class="view-message dont-show"><a href="#">Facebook</a></td>
										<td class="view-message"><a href="#">Dolor sit amet,
											consectetuer adipiscing</a></td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">March 14</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells"><input type="checkbox"
										class="mail-checkbox"></td>
										<td class="view-message dont-show">Bafent</td>
										<td class="view-message">Lorem ipsum dolor sit amet</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">December 19</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells"><input type="checkbox"
										class="mail-checkbox"></td>
										<td class="view-message dont-show">Facebook</td>
										<td class="view-message view-message">Dolor sit amet,
										consectetuer adipiscing</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">March 04</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells"><input type="checkbox"
										class="mail-checkbox"></td>
										<td class="view-message dont-show">Dorimon</td>
										<td class="view-message view-message">Lorem ipsum dolor
											sit amet</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">June 13</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells"><input type="checkbox"
										class="mail-checkbox"></td>
										<td class="view-message dont-show">Facebook</td>
										<td class="view-message view-message">Dolor sit amet,
										consectetuer adipiscing</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">March 24</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells"><input type="checkbox"
										class="mail-checkbox"></td>
										<td class="view-message dont-show">Mogli Marion</td>
										<td class="view-message">Lorem ipsum dolor sit amet</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">February 09</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells"><input type="checkbox"
										class="mail-checkbox"></td>
										<td class="dont-show">Facebook</td>
										<td class="view-message">Dolor sit amet, consectetuer
										adipiscing</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">May 14</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells"><input type="checkbox"
										class="mail-checkbox"></td>
										<td class="view-message dont-show">Samual</td>
										<td class="view-message">Lorem ipsum dolor sit amet</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">February 25</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells"><input type="checkbox"
										class="mail-checkbox"></td>
										<td class="dont-show">Facebook</td>
										<td class="view-message view-message">Dolor sit amet,
										consectetuer adipiscing</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">March 14</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells"><input type="checkbox"
										class="mail-checkbox"></td>
										<td class="view-message dont-show">Dk brain</td>
										<td class="view-message">Lorem ipsum dolor sit amet</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">April 07</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells"><input type="checkbox"
										class="mail-checkbox"></td>
										<td class="view-message dont-show">Twitter</td>
										<td class="view-message">Dolor sit amet, consectetuer
										adipiscing</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">July 14</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells"><input type="checkbox"
										class="mail-checkbox"></td>
										<td class="view-message dont-show">Samual</td>
										<td class="view-message">Lorem ipsum dolor sit amet</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">August 10</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells"><input type="checkbox"
										class="mail-checkbox"></td>
										<td class="view-message dont-show">Facebook</td>
										<td class="view-message view-message">Dolor sit amet,
										consectetuer adipiscing</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">April 14</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells"><input type="checkbox"
										class="mail-checkbox"></td>
										<td class="view-message dont-show">Morlig doen</td>
										<td class="view-message">Lorem ipsum dolor sit amet</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">June 16</td>
									</tr>
									<tr class="">
										<td class="inbox-small-cells"><input type="checkbox"
										class="mail-checkbox"></td>
										<td class="view-message dont-show">Morlig doen</td>
										<td class="view-message">mail title</td>
										<td class="view-message inbox-small-cells"></td>
										<td class="view-message text-right">June 17</td>
									</tr>
								</tbody>
							</table>
						</div>
					<div class="unstyled inbox-pagination" align="center">
						<span>ajax 페이징 처리 부분</span>
					</div>
				</div>
				</section>
			</div>
		</div>
		<!-- page end-->
	</div>
	</section> 