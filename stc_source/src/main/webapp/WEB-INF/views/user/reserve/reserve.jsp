<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${pageContext.request.userPrincipal.name}님 예약 확인하기</title>
<%@ include file="/WEB-INF/views/module/link.jsp" %>
</head>


<body>
<%@ include file="/WEB-INF/views/module/header2.jsp" %>

<!-- Start page header --> 
<section>
    <div class="count-area"> 
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
	    <h2 style=""></h2>               
            </div>
        </div>
    </div>
</div>
<!-- End page header -->


<!-- Body content -->	
	<div class="content-area">
		<div class="reserved-content">
			<div class="row">
				<div
					class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
					<form action="" class=" form-inline" style="text-align: center;">
						<div class="form-group">
							<select id="selectreseved" class="form-control"
								data-live-search="true" data-live-search-style="begins"
								title="내 공간 목록">
	
								<option>토즈 강남센터</option>
								<option>Paris</option>
								<option>Casablanca</option>
								<option>Tokyo</option>
								<option>Marraekch</option>
								<option>kyoto , shibua</option>
							</select>
						</div>
	
						<button class="btn search-btn" type="">
							<i class="fa fa-search"></i>
						</button>
	
					</form>
				</div>
			</div>	
		</div>


<!-- 테이블구역 -->
	<div class="container" style="color: black; margin-top: 40px;">
		<table class="table table-striped" border="1px">
			<thead>
				<tr>
					<th>공간이름</th>
					<th>관리</th>				
				</tr>
			</thead>
			<tbody>
			
			<c:forEach items="${mapVo}" var="product">				
				<tr>
					<td><a href="/reserve/reservecheck?proNum=${product.proNum}&proName=${product.proName}">${product.proName}</a></td>					
					<td><button class="btn delete-btn" formaction="${pageContext.request.contextPath}/user/reserve/delete">취소하기</button></td>
				</tr>
			</c:forEach>				
			</tbody>
		</table>
	</div>

	</div>

		<!-- 페이징  -->
	<div class="col-md-12 clear">
		<div class="text-center">
			<div class="pagination">
				<ul>
					<li><a href="#">Prev</a></li>
					<c:forEach begin="${pageInfo.startPage }"
						end="${pageInfo.endPage }" var="page">
						<li><a href="#">${page }</a></li>
					</c:forEach>
					<li><a href="#">Next</a></li>
				</ul>
			</div>
		</div>
	</div>


</section>
<%@ include file="/WEB-INF/views/module/footer.jsp" %>


</body>
</html>