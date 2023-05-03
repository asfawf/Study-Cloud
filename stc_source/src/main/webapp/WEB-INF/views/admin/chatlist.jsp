<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/module/link.jsp"%>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<meta charset="UTF-8">
<title>관리자 채팅 관리</title>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.js"></script>
<%@ include file="/WEB-INF/views/module/link.jsp" %>
</head>
<body>

<%@ include file="/WEB-INF/views/module/header2.jsp" %>
<section>
<!-- 테이블구역 -->
	<div class="container" style="color: black; margin-top: 40px; margin-top: 105px;">
		<table class="table table-striped" border="1px">
			<thead>
				<tr>
					<th style="text-align:center;">건의자</th>
					<th style="text-align:center;">남긴 마지막 내용</th>
					<th style="text-align:center;">전송 시간</th>
					<th style="text-align:center;">행동</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${roomList }" var="list">
					<tr>
						<td style="text-align:center;"> ${list.chaRoomId } </td>
						<td style="text-align:center;"> ${list.roomContents }</td>
						<td style="text-align:center;"> ${list.roomLastDate } </td>
						<td style="text-align:center; padding: 0px;"> <button class="btn btn-info" type="button" style="width: 100%;" onclick="window.open('<%=request.getContextPath()%>/chatting?room_id=${list.chaRoomId }')">입장</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>


</section>
<%@ include file="/WEB-INF/views/module/footer.jsp" %>

</body>
</html>