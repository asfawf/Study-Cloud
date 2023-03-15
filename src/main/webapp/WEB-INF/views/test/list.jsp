<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${testlist }


	<hr>
	<c:forEach begin="${pageInfo.startPage }" end="${pageInfo.endPage }"
		var="page">
		<a href="<%=request.getContextPath() %>/test/list?page=${page }">${page }</a>
		<c:if test="${pageInfo.endPage != page }">
	,
	</c:if>
	</c:forEach>

</body>
</html>