<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/module/link.jsp"%>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/views/module/header2.jsp" %> 
<section>
	<form action="${pageContext.request.contextPath}/admin/host"
		method="get">
		<select id="selectbox" name="selectbox"
			onchange="chageLangSelect(this)">
			<option value="" selected disabled>설정을 고르세요</option>
			<option value="1">전체</option>
			<option value="2">활성화 유저</option>
			<option value="3">탈퇴 혹은 차단</option>
		</select>
		<button type="submit">검색</button>
	</form>

	<table class="table" style="margin-left: auto; margin-right: auto; border: 1px solid #444444; border-collapse: collapse; width: 80%;">

		<thead style="border-top: none">
			<tr style="text-align: center; border-top: none">
				<th scope="col" style="border-top: none">&nbsp;&nbsp;이름&nbsp;&nbsp;</th>
				<th scope="col" style="border-top: none">&nbsp;&nbsp;아이디&nbsp;&nbsp;</th>
				<th scope="col" style="border-top: none">&nbsp;&nbsp;전회번호&nbsp;&nbsp;</th>
				<th scope="col" style="border-top: none">&nbsp;&nbsp;이메일&nbsp;&nbsp;</th>
				<th scope="col" style="border-top: none">&nbsp;&nbsp;탈퇴(0/1)&nbsp;&nbsp;</th>
				<th scope="col" style="border-top: none">&nbsp;&nbsp;관리&nbsp;&nbsp;</th>
			</tr>
		</thead>

		<tbody class="table-group-divider">
			<c:forEach items="${usersList }" var="vo">
				<tr
					style="border: 1px solid #444444; padding: 10px; text-align: center">
					<td style="border: 1px solid #444444; padding: 10px;">${vo.memName }</td>
					<td style="border: 1px solid #444444; padding: 10px;">${vo.memId }</td>
					<td style="border: 1px solid #444444; padding: 10px;">${vo.memPhone }</td>
					<td style="border: 1px solid #444444; padding: 10px;">${vo.memEmail }</td>
					<td style="border: 1px solid #444444; padding: 10px;">${vo.memQuit }</td>
					<td style="border: 1px solid #444444; padding: 10px;"><c:choose>
							<c:when test="${vo.memQuit != 0}">
								<form:form id="block${vo.memId}" action="${pageContext.request.contextPath}/admin/host/block?memId=${vo.memId }&selectbox=${nowoption }" method="POST">
									<button form="block${vo.memId}" type="button"
										class="btn btn-primary block" onclick="submit();">차단하기</button>
								</form:form>
							</c:when>
							<c:otherwise>
								<form:form id="block${vo.memId}" action="${pageContext.request.contextPath}/admin/host/unblock?memId=${vo.memId }&selectbox=${nowoption }" method="POST">
									<button form="block${vo.memId}" type="button"
										class="btn btn-primary block" onclick="submit();">차단해제</button>
								</form:form>
							</c:otherwise>
						</c:choose></td>
				</tr>
			</c:forEach>
		</tbody>

	</table>

	<c:forEach begin="${pageInfo.startPage }" end="${pageInfo.endPage }" var="page">
		<a href="<%=request.getContextPath() %>/admin/host?selectbox=${nowoption }&page=${page }">${page }</a>
		<c:if test="${pageInfo.endPage != page }">
	,
	</c:if>
	</c:forEach>
</section>
<%@ include file="/WEB-INF/views/module/footer.jsp"%>
</body>
</html>