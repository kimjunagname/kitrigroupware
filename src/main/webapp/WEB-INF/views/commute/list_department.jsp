<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
     	[인사총무팀]
		<input type="date" class="input-sm form-control w-sm inline v-middle" name="" id="" value="" required>
		<!-- 
        <select class="input-sm form-control w-sm inline v-middle">
          <option value="0">Bulk action</option>
          <option value="1">Delete selected</option>
          <option value="2">Bulk edit</option>
          <option value="3">Export</option>
        </select>
         -->
        <button class="btn btn-sm btn-default">조회</button>                
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
           
            <th data-breakpoints="xs sm md" data-title="DOB">지각시간</th>
            <th data-breakpoints="xs">사유</th>
          </tr>
        </thead>
        <tbody>
          <tr data-expanded="true">
            <td>홍길동 부장</td>
            <td>08:30</td>
            <td>18:30</td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td>이순신 차장</td>
            <td>08:30</td>
            <td>18:30</td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td>사원1</td>
            <td>08:30</td>
            <td>18:30</td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td>사원2</td>
            <td>08:30</td>
            <td>18:30</td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
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
$('#myModal').on('shown.bs.modal', function () {
	  $('#myInput').focus()
	})
</script>

