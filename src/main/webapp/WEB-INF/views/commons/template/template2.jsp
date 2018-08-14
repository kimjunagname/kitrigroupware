<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="root" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>



<!-- 각종 스크립트 및 CSS -->
<script type="text/javascript">

</script>
</head>
<body>
	<div id="sheader">
		<tiles:insertAttribute name="sheader" />
	</div>
	<div id="spublic">
		<tiles:insertAttribute name="spublic" />
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
<!-- 	Body
		================================================== 
	-->
</body>

</html>