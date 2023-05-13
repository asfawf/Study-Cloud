<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 - 내 예약 관리</title>
<%@ include file="/WEB-INF/views/module/link.jsp" %>
</head>
<body>
<section>
<%@ include file="/WEB-INF/views/module/header2.jsp" %>
<input type="hidden" class="form-control" name="memId" value="${pageContext.request.userPrincipal.name}">
	<!-- Start page header --> 
	<div class="slider-area" >
		<div class="slider-content">
	         <div class="row">
	             <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
	                 <div class="">
	                     <form action="" class="form-inline">
	                         <div class="form-group">                                   
	                             <select name="selectedProNum" id="selectedProNum" class="form-control" title="내 공간 목록">
									<c:forEach items="${listVo}" var="product"> 	
			                     		<option value="${product.proNum }" >${product.proName }</option>
									</c:forEach>
	                             </select>
	                         </div>
	                     </form>
	                 </div>
	             </div>                    
	         </div>
<!-- End page header -->

	
	


<!-- 테이블구역 -->
			<div class="container" style="color: black; margin-top: 40px;">
			<table class="table table-striped">
				<thead>
					<tr>
						<th class="text-center">신청날짜</th>
						<th class="text-center">이용날짜</th>
						<th class="text-center">공간이름</th>
						<th class="text-center">관리</th>				
					</tr>
				</thead>
				<tbody>
				
				<c:forEach items="${reserveVo}" var="product">				
					<tr>
						<td class="text-center" value="${product.regDate }">${product.regDate }</td>
						<td class="text-center" value="${product.rsvDate }">${product.rsvDate }</td>
						<td class="text-center"><a href="#" onClick="moveReserveCheck('${product.regDate }', '${product.proNum }');">${product.proName}</a></td>					
						<td class="text-center" class="text-center"><button class="delete-btn" data-pronum="${product.proNum }" data-regdate="${product.regDate }">예약취소</button></td>
						<%-- <td colspan="1" class="text-center" style="display:none;" value="${product.proNum }"></td> --%>
					</tr>
				</c:forEach>				
				</tbody>
			</table>
		</div>
	</div>
</div>


</section>
<%@ include file="/WEB-INF/views/module/footer.jsp" %>

<script>
	$(".delete-btn").click(function(){
		console.log($(this).data("regdate"));
		console.log($(this).data("pronum"));
		$.ajax({
			url:"${pageContext.request.contextPath}/user/reserve/delete"
			,type:"post"
			,data:{regDate: $(this).data("regdate"),proNum: $(this).data("pronum") }
			,success:function(result){
				console.log(result);
				location.reload();
				alert('예약이 취소되었습니다.');
			}
			,error: function(error){
			  alert(error.errorMsg);
			  }
			  ,beforeSend : function(xhr){
				  xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
				  }
		});	
	});

	function moveReserveCheck(regDate, proNum) {    
		console.log(regDate + " " + proNum);
		location.href='${pageContext.request.contextPath}/reserve/reserveinfo?regDate='+regDate+'&proNum='+proNum+'&state='+1;
		
	}  
</script>

</body>
</html>