<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 마이페이지</title>
<%@ include file="/WEB-INF/views/module/link.jsp" %>
</head>
<body>
<%@ include file="/WEB-INF/views/module/header.jsp" %> 
<section>
	<div class="page-head"> 
	      <div class="container">
	          <div class="row">
	              <div class="page-head-content">
	                  <h1 class="page-title text-center" style="color: black;">사용자 마이페이지</h1>               
	            </div>
	        </div>
	    </div>
	</div>
	<!-- End page header -->
	
	<!--Welcome area -->
	<div>
	    <div class="container">
	        <div class="row">
	            <div class="col-md-12 Welcome-entry  col-sm-12">
	                <!-- <div class="col-md-5 col-md-offset-2 col-sm-6 col-xs-12">
	                    <div>
	                        <div class="row">
	                            <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
	                                /.feature title
	                                 
	                            </div>
	                        </div>
	                    </div>
	                </div> -->
	                <div class="col-md-12">
	                    <div>
	                        <div class="row">
	                            <div class="col-xs-6 m-padding">
	                                <div class="welcome-estate">
		                                <a href="${pageContext.request.contextPath}/admin/product">
		                                    <div class="welcome-icon">
		                                        <i class="pe-7s-home pe-4x"></i>
		                                    </div>
		                                    <h3>공간관리</h3>
	                                    </a>
	                                </div>
	                            </div>
	                            <div class="col-xs-6 m-padding">
	                                <div class="welcome-estate">
	                                    <a href="${pageContext.request.contextPath}/admin/users">
		                                    <div class="welcome-icon">
		                                      	<i class="pe-7s-users pe-4x"></i>
		                                    </div>
		                                    <h3>사용자 정보 관리</h3>
	                                    </a>
	                                </div>
	                            </div>
	
	
	                            <!-- <div class="col-xs-12 text-center">
	                                <i class="welcome-circle"></i>
	                            </div> -->
	
	                            <div class="col-xs-6 m-padding">
	                                <div class="welcome-estate">
		                                <a href="${pageContext.request.contextPath}/admin/host">
		                                    <div class="welcome-icon">
		                                        <i class="pe-7s-notebook pe-4x"></i>
		                                    </div>
		                                    <h3>호스트 정보 관리</h3>
	                                	</a>
	                                </div>
	                            </div>
	                            <div class="col-xs-6 m-padding">
	                                <div class="welcome-estate">
	                                    <div class="welcome-icon">
	                                        <i class="pe-7s-help2 pe-4x"></i>
	                                    </div>
	                                    <h3>채팅 관리</h3>
	                                </div>
	                            </div>
	
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</div> 
</section>
<%@ include file="/WEB-INF/views/module/footer.jsp" %> 
</body>
</html>