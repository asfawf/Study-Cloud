<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginPage</title>
</head>
<body>
	<form class="form-signin" action="loginProcess" method="POST">
		<h1 class="h3 mb-3 font-weight-normal">로그인</h1>
		<input type="text" name="userid" class="form-control" placeholder="ID" required autofocus>
		<input type="password" name="userpw" class="form-control" placeholder="Password" required>
		<button class="btn btn-lg btn-primary btn-block" type="submit">LOGIN</button>
		
		<c:if test="${param.err == true}">
			<p style="color: red">ID와 Password를 확인해주세요.</p>
		</c:if>
	</form>
</body>
</html>