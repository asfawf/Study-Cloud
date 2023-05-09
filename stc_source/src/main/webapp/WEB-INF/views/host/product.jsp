<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/module/link.jsp"%>
</head>
<body>
	<%@ include file="/WEB-INF/views/module/header2.jsp"%>
	<section>


 	<div class="properties-area recent-property" style="background-color: #FFF;">
            <div class="container"> 
				
		<!-- End page header -->


		<!-- property area -->
		<div class="content-area recent-property"
			style="background-color: #FFF;">
			<div class="container">
				<div class="row">

					<div
						class="col-md-12 pr-25 padding-top-40 properties-page user-properties">

						<div class="section">
							<c:forEach items="${hostlist}" var="list">
								<div id="list-type" class="proerty-th-list">

									<div class="col-md-4 p0">

										<div class="box-two proerty-item" style="height: 170px">
											<div class="item-thumb">
												<a	href="${pageContext.request.contextPath}/product/detail?proNum=${list.proNum }">
													<img src="${pageContext.request.contextPath }/resources/uploadfiles/${list.proPicRename}"/></a>
											</div>
											<div class="item-entry overflow">
												<h5>
													<a
														href="${pageContext.request.contextPath}/product/detail?proNum=${list.proNum }">${list.proName }</a>
												</h5>
												<div class="dot-hr"></div>
												<span class="pull-left"><b>${list.proPhone }</span>
												<p style="display: none;">${list.proAddress }</p>
												<div class="dealer-action pull-right">
													<a href="${pageContext.request.contextPath}/host/product/update?proNum=${list.proNum}" class="button">Edit </a> 
													<a href="${pageContext.request.contextPath}/host/reserve/rsvprotime?proNum=${list.proNum}" class="button">ReserveTime EDIT </a> 
													<!-- <a href="#" class="button delete_user_car">Delete</a> -->
												</div>
											</div>

										</div>
									</div>
								</div>
							</c:forEach>
						</div>


		
		
					<div class="col-md-12 clear"> 
                        <div class="pull-right">
                            <div class="pagination">
                                <ul>
                                    <c:choose>
	                               	<c:when test="${pageInfo.currentPage eq 1 }">
	                               		<li><a class="disabled pe-7s-angle-left"></a></li>
	                               	</c:when>
	                               	<c:otherwise>
	                                    <li><a class="pe-7s-angle-left" href="${pageContext.request.contextPath}/host/product?proAddress=${param.proAddress }&page=${pageInfo.currentPage - 1 }"></a></li>
	                               	</c:otherwise>
                                	</c:choose>
	                                <c:forEach begin="${pageInfo.startPage }" end="${pageInfo.endPage }" var="page">
										<li><a href="${pageContext.request.contextPath}/host/product?proAddress=${param.proAddress }&page=${page }">${page }</a></li>
									</c:forEach>  
									<c:choose>
									<c:when test="${pageInfo.currentPage eq pageInfo.endPage}">
	                               		<li><a class="disabled pe-7s-angle-right"></a></li>
	                               	</c:when>
	                               	<c:otherwise>
	                                    <li><a class="pe-7s-angle-right" href="${pageContext.request.contextPath}/host/product?proAddress=${param.proAddress }&page=${pageInfo.currentPage +1 }"></a></li>
	                               	</c:otherwise> 
	                               	</c:choose>
                                </ul>
                            </div>
                        </div>                
                    </div>




						<div class="d-grid gap-2">
							<button class="btn btn-primary" type="button">
								<a href="<%=request.getContextPath()%>/host/product/insert">등록</a>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>

	<script type="text/javascript">
	
	</script>



<%-- 		<script	src="<%=request.getContextPath()%>/resources/sneat/assets/js/vendor/modernizr-2.6.2.min.js"></script> --%>
<%-- 		<script	src="<%=request.getContextPath()%>/resources/sneat/assets/js//jquery-1.10.2.min.js"></script> --%>
<%-- 		<script	src="<%=request.getContextPath()%>/resources/sneat/bootstrap/js/bootstrap.min.js"></script> --%>
<%-- 		<script	src="<%=request.getContextPath()%>/resources/sneat/assets/js/bootstrap-select.min.js"></script> --%>
<%-- 		<script	src="<%=request.getContextPath()%>/resources/sneat/assets/js/bootstrap-hover-dropdown.js"></script> --%>
<%-- 		<script	src="<%=request.getContextPath()%>/resources/sneat/assets/js/easypiechart.min.js"></script> --%>
<%-- 		<script	src="<%=request.getContextPath()%>/resources/sneat/assets/js/jquery.easypiechart.min.js"></script> --%>
<%-- 		<script	src="<%=request.getContextPath()%>/resources/sneat/assets/js/owl.carousel.min.js"></script> --%>
<%-- 		<script	src="<%=request.getContextPath()%>/resources/sneat/assets/js/wow.js"></script> --%>
<%-- 		<script	src="<%=request.getContextPath()%>/resources/sneat/assets/js/icheck.min.js"></script> --%>

<%-- 		<script	src="<%=request.getContextPath()%>/resources/sneat/assets/js/price-range.js"></script> --%>
<%-- 		<script	src="<%=request.getContextPath()%>/resources/sneat/assets/js/jquery.bootstrap.wizard.js" type="text/javascript"></script> --%>
<%-- 		<script	src="<%=request.getContextPath()%>/resources/sneat/assets/js/jquery.validate.min.js"></script> --%>
<%-- 		<script	src="<%=request.getContextPath()%>/resources/sneat/assets/js/wizard.js"></script> --%>

<%-- 		<script	src="<%=request.getContextPath()%>/resources/sneat/assets/js/main.js"></script> --%>
		
		</div>
		
		</div>
	</section>
	<%@ include file="/WEB-INF/views/module/footer.jsp"%>
</body>
</html>