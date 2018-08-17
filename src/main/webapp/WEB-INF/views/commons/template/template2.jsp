<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<c:if test="${userinfo == null}">
<script>
alert("회원 전용 서비스입니다");
document.location.href = "${root}/index.jsp";
</script>
</c:if>

<!DOCTYPE html>
<html>
<head>



<!-- 각종 스크립트 및 CSS -->
<script type="text/javascript">

</script>
</head>
<body>
	
	<tiles:insertAttribute name="sheader" />
	
	
	<tiles:insertAttribute name="spublic" />
	
	 
	
	<tiles:insertAttribute name="sidemenu" />
	
	 
	
	<tiles:insertAttribute name="body" />
	

	
	<tiles:insertAttribute name="footer" />
	
	</section>
		<!--main content end-->
	</section>
	
<!-- 	Body
		================================================== 
	-->
</body>

</html>