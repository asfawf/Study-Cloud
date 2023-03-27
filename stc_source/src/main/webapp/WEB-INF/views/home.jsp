<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Study Cloud</title>
<%@ include file="../views/module/link.jsp" %>
</head>
<body>
<%@ include file="../views/module/header.jsp" %>
<section>
        <div class="slider-area">
            <div class="slider">
                <div id="bg-slider" class="owl-carousel owl-theme">

                    <div class="item"><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/slide1/slider-image-1.jpg" alt="GTA V"></div>
                    <div class="item"><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/slide1/slider-image-2.jpg" alt="The Last of us"></div>
                    <div class="item"><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/slide1/slider-image-1.jpg" alt="GTA V"></div>

                </div>
            </div>
            <div class="slider-content">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
                        <h2><!-- Study Cloud --></h2>
                        <p><!-- Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi deserunt deleniti, ullam commodi sit ipsam laboriosam velit adipisci quibusdam aliquam teneturo! --></p>
                        <div class="search-form pulse">
                            <form action="search" class="form-inline">                                
                                <div class="form-group">                                     
                                    <select id="basic" class="selectpicker show-tick form-control" title="지역">
                                        <option> -Status- </option>
                                        <option>Rent </option>
                                        <option>Boy</option>
                                        <option>used</option>  
                                    </select>
                                </div>
                                <div class="form-group">                                   
                                    <select id="lunchBegins" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="인원">
										<c:forEach var="i" begin="0" end="30" step="5">
									   		<option>${i }</option>
										</c:forEach>                                        
                                    </select>
                                </div>
                                <div class="form-group">                                     
                                    <select id="basic" class="selectpicker show-tick form-control" title="날짜">
                                        <option> -Status- </option>
                                        <option>Rent </option>
                                        <option>Boy</option>
                                        <option>used</option>  
                                    </select>
                                </div>
                                <button class="btn search-btn" type="button" onclick=" location.href='search' ">검색</button>
                                <button class="btn search-btn" type="button" onclick=" location.href='map' ">지도</button>
							</form>
                        </div>
                    </div>
                </div>
            </div>
        </div>        
</section>
<%@ include file="../views/module/footer.jsp" %>
 


		
		
		<!--  -->
		<sec:authorize access="isAnonymous()">
			<form:form action="${pageContext.request.contextPath}/login/loginForm.do" method="GET">
				    	<input type="submit" value="로그인" />
			</form:form>
		</sec:authorize>
		
		<sec:authorize access="isAuthenticated()">
			<sec:authorize access="hasRole('ADMIN')">
				<form:form action="${pageContext.request.contextPath}/logout" method="POST">
			    	<input type="submit" value="로그아웃" />
				</form:form>	
				로그인 한 관리자 페이지
			</sec:authorize>			
		</sec:authorize>
		
		<sec:authorize access="isAuthenticated()">
			<sec:authorize access="hasRole('USER')">
				<form:form action="${pageContext.request.contextPath}/logout" method="POST">
			    	<input type="submit" value="로그아웃" />
				</form:form>	
				로그인 한 유저 페이지
			</sec:authorize>			
		</sec:authorize>
		
		<%-- 
		<form:form action="${pageContext.request.contextPath}/logout" method="POST">
		    <input type="submit" value="로그아웃" />
		</form:form>
 --%>
</body>
</html>