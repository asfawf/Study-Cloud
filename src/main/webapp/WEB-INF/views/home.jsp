<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<%-- 
<form:form action="${pageContext.request.contextPath}/logout" method="POST">
    <input type="submit" value="로그아웃" />
</form:form>
 --%>
 
 
<!-- 로그인 하지 않을 경우 버튼이 나타남 + taglib prefix="sec" uri="http://www.springframework.org/security/tags" 이거 꼭 적용하셔야 합니다. --> 
<sec:authorize  access="isAnonymous()">
	<form:form action="${pageContext.request.contextPath}/login/loginForm.do" method="GET">
	    <input type="submit" value="로그인"/>
	</form:form>
</sec:authorize>

<!-- 로그인 할 경우 버튼이 나타남  + taglib prefix="sec" uri="http://www.springframework.org/security/tags" 이거 꼭 적용하셔야 합니다. -->
<sec:authorize access="isAuthenticated()">
	<form:form action="${pageContext.request.contextPath}/logout" method="POST">
	    <input type="submit" value="로그아웃"/>
	</form:form>
</sec:authorize>

</body>
</html>
