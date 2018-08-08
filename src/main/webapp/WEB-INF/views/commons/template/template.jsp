<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<!-- 각종 스크립트 및 CSS -->
		<tiles:insertAttribute name="public" />
		<tiles:insertAttribute name="public2" />
</head>
<body>
	<!-- Body
		================================================== 
	-->

		<tiles:insertAttribute name="header" />

		<tiles:insertAttribute name="sidemenu" />

	<!-- TEMPLATE BODY TEMPLATE BODY TEMPLATE BODY TEMPLATE BODY TEMPLATE BODY TEMPLATE BODY -->
		<tiles:insertAttribute name="body" />
	<!-- TEMPLATE BODY TEMPLATE BODY TEMPLATE BODY TEMPLATE BODY TEMPLATE BODY TEMPLATE BODY -->

		<tiles:insertAttribute name="footer" />
		
		</section>
		<!--main content end-->
			</section>
	<!-- Body
		================================================== 
	-->
</body>
</html>