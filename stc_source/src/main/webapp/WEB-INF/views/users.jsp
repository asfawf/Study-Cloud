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
	
	<table class="table" style="margin-left:auto;margin-right:auto; border: 1px solid #444444; border-collapse: collapse; width: 80%;">
		
		<thead style="border-top:none">
		   	<tr style="text-align:center; border-top:none">
		      <th scope="col" style="border-top:none">&nbsp;&nbsp;이름&nbsp;&nbsp;</th>
		      <th scope="col" style="border-top:none">&nbsp;&nbsp;아이디&nbsp;&nbsp;</th>
		      <th scope="col" style="border-top:none">&nbsp;&nbsp;전회번호&nbsp;&nbsp;</th>
		      <th scope="col" style="border-top:none">&nbsp;&nbsp;이메일&nbsp;&nbsp;</th>
		      <th scope="col" style="border-top:none">&nbsp;&nbsp;탈퇴(0/1)&nbsp;&nbsp;</th>
		      <th scope="col" style="border-top:none">&nbsp;&nbsp;관리&nbsp;&nbsp;</th>
			</tr>
		</thead>
		
		<tbody class="table-group-divider">
			<c:forEach items="${usersList }" var="vo">
		    	<tr style=" border: 1px solid #444444; padding: 10px;  text-align:center">
		      		<td style=" border: 1px solid #444444; padding: 10px;">${vo.memName }</td>
					<td style=" border: 1px solid #444444; padding: 10px;">${vo.memId }</td>
					<td style=" border: 1px solid #444444; padding: 10px;">${vo.memPhone }</td>
					<td style=" border: 1px solid #444444; padding: 10px;">${vo.memEmail }</td>
					<td style=" border: 1px solid #444444; padding: 10px;">${vo.memQuit }</td>
					<td style=" border: 1px solid #444444; padding: 10px;"><button style="text-align: right;"   class="btn btn-primary" type="submit">차단하기</button></td>
			 	</tr>
			</c:forEach>
		 </tbody>
		
	</table>
	
	<c:forEach begin="${pageInfo.startPage }" end="${pageInfo.endPage }"
		var="page">
		<a href="<%=request.getContextPath() %>/admin/users?page=${page }">${page }</a>
		<c:if test="${pageInfo.endPage != page }">
	,
	</c:if>
	</c:forEach>
</body>
</html>