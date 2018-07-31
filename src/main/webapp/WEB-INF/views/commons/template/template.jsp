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
<script type="text/javascript">

</script>
</head>
<body>
	<br>
	<br>
	<br>
	<!-- Body
		================================================== 
	-->
	<div id="header">
		<tiles:insertAttribute name="header" />
	</div>
	<div id="public">
		<tiles:insertAttribute name="public" />
	</div>
	 
	<div id="sidemenu">
		<tiles:insertAttribute name="sidemenu" />
	</div>	
	 
	<div id="body">
		<tiles:insertAttribute name="body" />
	</div>
	<div id="footer">
		<tiles:insertAttribute name="footer" />
	</div>
	<!-- Body
		================================================== 
	-->
</body>

</html>