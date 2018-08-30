<title>KITRI GROUPWARE</title>
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
                                             회원정보 입력                    
                    </header>
                    <div class="panel-body">
                        <center>
                        <b>죄송합니다. 서버문제로 정보 입력이 실패되었습니다.<br>
                                                      잠시 후 다시 시도해 주시기 바랍니다.<br>
                                                      이러한 문제가 지속적일 경우 웹마스터에게 문의해주세요.<br>  
                        </b>
                        
                        </center>
                        <button type="button" id="back" onclick="location='${root}/organization/organization.kitri'" class="btn btn-success btn-sm">조직관리 페이지</button>	
                    </div>
                </section>
            </div>
        </div>
        <!-- page end-->
        </div>
	</section>
	
</body>
</html>