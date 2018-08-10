<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/commons/public.jsp"%>
<body>
<section id="main-content">
	<section class="wrapper">
		<div class="form-w3layouts">
        <!-- page start-->
        <div class="row">
            <div class="col-sm-12">
                <section class="panel">
                    <header class="panel-heading">
                                             메일 보내기
                    </header>
                    <div class="panel-body">
                        <center><b>메일 전송을 완료되었습니다.</b></center><br>
                        <button type="button" id="back" onclick="location='${root}/email/rcvList.kitri'" class="btn btn-success btn-sm">조직관리 페이지</button>	
                    </div>
                </section>
            </div>
        </div>
        <!-- page end-->
        </div>
	</section>
	
</body>
</html>