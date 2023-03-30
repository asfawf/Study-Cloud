<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색 페이지</title>
<%@ include file="../module/link.jsp" %>
</head>
<body>
<%@ include file="../module/header.jsp" %>

<section>
        <div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title">List Layout With Sidebar</h1>               
                    </div>
                </div>
            </div>
        </div>
        <!-- End page header -->

        <!-- property area -->
        <div class="properties-area recent-property" style="background-color: #FFF;">
            <div class="container"> 
                <div class="row  pr0 padding-top-40 properties-page">
                    <div class="col-md-12 padding-bottom-40 large-search"> 
                        <div class="search-form pulse">
                            <form action="" class=" form-inline">
                                <div class="col-md-12">
                                	<div class="col-md-4">                                     
	                                    <select id="basic" class="selectpicker show-tick form-control" title="지역">
	                                        <option> -Status- </option>
	                                        <option>Rent </option>
	                                        <option>Boy</option>
	                                        <option>used</option>  
	                                    </select>
                                	</div>
                                    <div class="col-md-4">                                   
                                        <select id="lunchBegins" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="인원">
										<c:forEach var="i" begin="1" end="30" step="5">
									   		<option>${i }</option>
										</c:forEach>                                        
                                    	</select>
                                    </div>
                                    <div class="col-md-4">                                     
                                        <select id="basic" class="selectpicker show-tick form-control" title="날짜">
	                                        <option> -Status- </option>
	                                        <option>Rent </option>
	                                        <option>Boy</option>
	                                        <option>used</option>  
                                    </select>
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

                    <div class="col-md-12 clear "> 
                        <div id="list-type" class="proerty-th">
                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="${pageContext.request.contextPath}/product" ><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/property-3.jpg"></a>
                                    </div>

                                    <div class="item-entry overflow">
                                        <h5><a href="${pageContext.request.contextPath}/product"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span>
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                        <div class="property-icon">
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/bed.png">(5)|
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/shawer.png">(2)|
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/cars.png">(1)  
                                        </div>
                                    </div>


                                </div>
                            </div> 

                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="${pageContext.request.contextPath}/product" ><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/property-2.jpg"></a>
                                    </div>

                                    <div class="item-entry overflow">
                                        <h5><a href="${pageContext.request.contextPath}/product"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span>
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                        <div class="property-icon">
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/bed.png">(5)|
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/shawer.png">(2)|
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/cars.png">(1)  
                                        </div>
                                    </div>


                                </div>
                            </div> 

                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item proerty-item-ads">
                                    <a href="" ><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/pro-ads.jpg"></a>
                                </div>
                            </div> 

                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="${pageContext.request.contextPath}/product" ><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/property-3.jpg"></a>
                                    </div>

                                    <div class="item-entry overflow">
                                        <h5><a href="${pageContext.request.contextPath}/product"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span>
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                        <div class="property-icon">
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/bed.png">(5)|
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/shawer.png">(2)|
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/cars.png">(1)  
                                        </div>
                                    </div>


                                </div>
                            </div> 

                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="${pageContext.request.contextPath}/product" ><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/property-1.jpg"></a>
                                    </div>

                                    <div class="item-entry overflow">
                                        <h5><a href="${pageContext.request.contextPath}/product"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span>
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                        <div class="property-icon">
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/bed.png">(5)|
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/shawer.png">(2)|
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/cars.png">(1)  
                                        </div>
                                    </div>


                                </div>
                            </div> 

                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="${pageContext.request.contextPath}/product" ><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/property-2.jpg"></a>
                                    </div>

                                    <div class="item-entry overflow">
                                        <h5><a href="${pageContext.request.contextPath}/product"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span>
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                        <div class="property-icon">
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/bed.png">(5)|
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/shawer.png">(2)|
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/cars.png">(1)  
                                        </div>
                                    </div>


                                </div>
                            </div> 

                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="${pageContext.request.contextPath}/product" ><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/property-3.jpg"></a>
                                    </div>

                                    <div class="item-entry overflow">
                                        <h5><a href="${pageContext.request.contextPath}/product"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span>
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                        <div class="property-icon">
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/bed.png">(5)|
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/shawer.png">(2)|
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/cars.png">(1)  
                                        </div>
                                    </div>


                                </div>
                            </div> 

                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="${pageContext.request.contextPath}/product" ><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/property-2.jpg"></a>
                                    </div>

                                    <div class="item-entry overflow">
                                        <h5><a href="${pageContext.request.contextPath}/product"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span>
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                        <div class="property-icon">
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/bed.png">(5)|
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/shawer.png">(2)|
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/cars.png">(1)  
                                        </div>
                                    </div>


                                </div>
                            </div> 

                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="${pageContext.request.contextPath}/product" ><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/property-1.jpg"></a>
                                    </div>

                                    <div class="item-entry overflow">
                                        <h5><a href="${pageContext.request.contextPath}/product"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span>
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                        <div class="property-icon">
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/bed.png">(5)|
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/shawer.png">(2)|
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/cars.png">(1)  
                                        </div>
                                    </div>


                                </div>
                            </div> 
                            
                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item proerty-item-ads">
                                    <a href="" ><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/pro-ads.jpg"></a>
                                </div>
                            </div>

                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="${pageContext.request.contextPath}/product" ><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/property-2.jpg"></a>
                                    </div>

                                    <div class="item-entry overflow">
                                        <h5><a href="${pageContext.request.contextPath}/product"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span>
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                        <div class="property-icon">
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/bed.png">(5)|
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/shawer.png">(2)|
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/cars.png">(1)  
                                        </div>
                                    </div>


                                </div>
                            </div> 

                            <div class="col-sm-6 col-md-3 p0">
                                <div class="box-two proerty-item">
                                    <div class="item-thumb">
                                        <a href="${pageContext.request.contextPath}/product" ><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/property-1.jpg"></a>
                                    </div>

                                    <div class="item-entry overflow">
                                        <h5><a href="${pageContext.request.contextPath}/product"> Super nice villa </a></h5>
                                        <div class="dot-hr"></div>
                                        <span class="pull-left"><b> Area :</b> 120m </span>
                                        <span class="proerty-price pull-right"> $ 300,000</span>
                                        <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                        <div class="property-icon">
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/bed.png">(5)|
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/shawer.png">(2)|
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/icon/cars.png">(1)  
                                        </div>
                                    </div>


                                </div>
                            </div> 
                        </div>
                    </div>

                    <div class="col-md-12 clear"> 
                        <div class="pull-right">
                            <div class="pagination">
                                <ul>
                                    <li><a href="#">Prev</a></li>
                                    <li><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">Next</a></li>
                                </ul>
                            </div>
                        </div>                
                    </div>
                </div>                
            </div>
        </div>

</section>
<%@ include file="../module/footer.jsp" %>
    </body>
</html>