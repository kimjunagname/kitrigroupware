<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:if test="${userinfo == null}">
<script>
alert("회원전용 서비스입니다.");
document.location.href = "${root}/member/login.kitri";
</script>
</c:if>