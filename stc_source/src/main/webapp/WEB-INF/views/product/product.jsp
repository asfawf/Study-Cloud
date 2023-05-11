<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 페이지</title>
<%@ include file="/WEB-INF/views/module/link.jsp" %>
</head>
<style>
.proNum , .proAddress{
	line-height: 100%;
}
</style>
<body>
<%@ include file="/WEB-INF/views/module/header.jsp" %>
<c:set var="add">
	종로구,중구,용산구,성동구,광진구,동대문구,중랑구,성북구,강북구,도봉구,노원구,은평구,서대문구,마포구,양천구,강서구,구로구,금천구,영등포구,동작구,관악구,서초구,강남구,송파구,강동구,수원시,성남시,의정부시,안양시,부천시,광명시,평택시,동두천시,안산시,고양시,과천시,의왕시,구리시,남양주시,오산시,시흥시,군포시,하남시,용인시,파주시,이천시,안성시,김포시,화성시,광주시,양주시,포천시,여주시
</c:set>
<section>
	<!-- property area -->
        <div class="properties-area recent-property" style="background-color: #FFF;">
            <div class="container"> 
                <div class="row  pr0 padding-top-40 properties-page">
                    <div class="col-md-12 padding-bottom-40 large-search"> 
                        <div class="search-form pulse">
                            <form action="${pageContext.request.contextPath}/product" class=" form-inline">
                                <div class="col-md-12">
                                	<div class="col-md-4">                                     
	                                    <select id="basic" name="proAddress" class="selectpicker show-tick form-control" data-live-search="true" data-live-search-style="begins" data-size="10" onchange="submit();">
	                                        	<option value="">지역</option>	                                        	
	                                        <c:forEach var="v" items="${add }">
												<option value="${v }">${v }</option>
											</c:forEach>
                                    	</select>
                                	</div>
                                    <div class="col-md-4">                                   
                                        <select id="lunchBegins" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="인원">
											<c:forEach var="i" begin="0" end="20" step="5">
										   		<option>${i }</option>
											</c:forEach>                                        
                                    	</select>
                                    </div>
                                    <div class="col-md-4">                                     
                                       <input type="text" class="form-control" width="270" name="proDate" placeholder="${!empty param.proDate ? param.proDate : '  날짜'}" onchange="submit();" onfocus="(this.type='date')" onfocusout="(this.type='text')"/>
                                    </div>
                                </div>
                                <div class="col-md-12 ">

                                </div>                     
                            </form>
                        </div>
                    </div>

                    <div class="col-md-12  clear"> 
                        <div class="col-xs-10 page-subheader sorting pl0">
                            <ul class="sort-by-list">
                                <li class="active">
                                    <a href="javascript:void(0);" class="order_by_date" data-orderby="property_date" data-order="ASC">
                                        Property Date <i class="fa fa-sort-amount-asc"></i>					
                                    </a>
                                </li>
                                <li class="">
                                    <a href="javascript:void(0);" class="order_by_price" data-orderby="property_price" data-order="DESC">
                                        Property Price <i class="fa fa-sort-numeric-desc"></i>						
                                    </a>
                                </li>
                            </ul><!--/ .sort-by-list-->

                            <div class="items-per-page">
                                <label for="items_per_page"><b>Property per page :</b></label>
                                <div class="sel">
                                    <select id="items_per_page" name="per_page">
                                        <option value="3">3</option>
                                        <option value="6">6</option>
                                        <option value="9">9</option>
                                        <option selected="selected" value="12">12</option>
                                        <option value="15">15</option>
                                        <option value="30">30</option>
                                        <option value="45">45</option>
                                        <option value="60">60</option>
                                    </select>
                                </div><!--/ .sel-->
                            </div><!--/ .items-per-page-->
                        </div>

                        <div class="col-xs-2 layout-switcher">
                            <a class="layout-list" href="javascript:void(0);"> <i class="fa fa-th-list"></i>  </a>
                            <a class="layout-grid active" href="javascript:void(0);"> <i class="fa fa-th"></i> </a>                          
                        </div><!--/ .layout-switcher-->
                    </div>
					
				<!-- pruductList 시작 -->
                    <div class="col-md-12 clear "> 
                        <div id="list-type" class="proerty-th">
                       		<c:forEach items="${pdList }" var="product"> 
                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="${pageContext.request.contextPath}/product/detail?proNum=${product.proNum }" ><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/property-3.jpg"></a>
                                    </div>
                                    <div class="item-entry overflow">
                                        <h5 class="proNum"><a href="${pageContext.request.contextPath}/product/detail?proNum=${product.proNum }"> ${product.proName } </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left proAddress"><b>${product.proAddress }</b></span> <br>
                                        <span class="pull-left"> ${product.proPhone } </span>
                                        <span class="proerty-price pull-right"> <fmt:formatNumber value="${product.proPrice }" type="currency" /> </span>                                        
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                        </div>
                    </div>
				<!-- pruductList 끝 -->
					
                    <div class="col-md-12 clear"> 
                        <div class="pull-right">
                            <div class="pagination">
                                <ul>
                                    <c:choose>
	                               	<c:when test="${pageInfo.currentPage eq 1 }">
	                               		<li><a class="disabled pe-7s-angle-left"></a></li>
	                               	</c:when>
	                               	<c:otherwise>
	                                    <li><a class="pe-7s-angle-left" href="${pageContext.request.contextPath}/product?proAddress=${param.proAddress }&proDate=${param.proDate}&page=${pageInfo.currentPage - 1 }"></a></li>
	                               	</c:otherwise>
                                	</c:choose>
	                                <c:forEach begin="${pageInfo.startPage }" end="${pageInfo.endPage }" var="page">
										<li><a href="${pageContext.request.contextPath}/product?proAddress=${param.proAddress }&proDate=${param.proDate}&page=${page }">${page }</a></li>
									</c:forEach>  
									<c:choose>
									<c:when test="${pageInfo.currentPage eq pageInfo.endPage}">
	                               		<li><a class="disabled pe-7s-angle-right"></a></li>
	                               	</c:when>
	                               	<c:otherwise>
	                                    <li><a class="pe-7s-angle-right" href="${pageContext.request.contextPath}/product?proAddress=${param.proAddress }&proDate=${param.proDate}&page=${pageInfo.currentPage +1 }"></a></li>
	                               	</c:otherwise> 
	                               	</c:choose>
                                </ul>
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