<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:if test="${userInfo == null}">
<script>
alert("회원전용 서비스입니다.");
document.location.href = "${root}/index.jsp";
</script>
</c:if>