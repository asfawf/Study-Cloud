<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/module/link.jsp" %>
</head>
<body>
<%@ include file="/WEB-INF/views/module/header2.jsp" %>
<section>
        

        <div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title">내 공간 목록</h1>               
                    </div>
                </div>
            </div>
        </div>
        <!-- End page header -->

        <!-- property area -->
        <div class="content-area recent-property" style="background-color: #FFF;">
            <div class="container">   
                <div class="row">

                    <div class="col-md-12 pr-30 padding-top-40 properties-page user-properties">

                        

                        <div class="section"> 
                            <div id="list-type" class="proerty-th-list">
                                <div class="col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/property-3.jpg"></a>
                                        </div>
                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            

                                                <div class="dealer-action pull-right">                                        
                                                    <a href="submit-property.html" class="button">Edit </a>
                                                    <a href="#" class="button delete_user_car">Delete</a>
                                                    <a href="property-1.html" class="button">View</a>
                                                </div>
                                           


                                        </div>
                                    </div>
                                </div>                             

                                <div class="col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/property-2.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow ">
                                            <h5><a href="property-1.html"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            
                                                <div class="dealer-action pull-right">                                        
                                                    <a href="submit-property.html" class="button">Edit </a>
                                                    <a href="#" class="button delete_user_car">Delete</a>
                                                    <a href="property-1.html" class="button">View</a>
                                                </div>
                                            
                                        </div>
                                    </div>
                                </div> 

                                <div class="col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/property-1.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            
                                                <div class="dealer-action pull-right">                                        
                                                    <a href="submit-property.html" class="button">Edit </a>
                                                    <a href="#" class="button delete_user_car">Delete</a>
                                                    <a href="property-1.html" class="button">View</a>
                                                </div>
                                            
                                        </div>


                                    </div>
                                </div> 

                                <div class="col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="property-1.html" ><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/property-3.jpg"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="property-1.html"> Super nice villa </a></h5>
                                            <div class="dot-hr"></div>
                                            
                                            <span class="proerty-price pull-right"> $ 300,000</span>
                                            <p style="display: none;">Suspendisse ultricies Suspendisse ultricies Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium ...</p>
                                            
                                                <div class="dealer-action pull-right">                                        
                                                    <a href="submit-property.html" class="button">Edit </a>
                                                    <a href="#" class="button delete_user_car">Delete</a>
                                                    <a href="property-1.html" class="button">View</a>
                                                </div>
                                            
                                        </div>


                                    </div>
                                </div> 
                                                                  
                            </div>
                        </div>


										<!-- 페이징처리 -->
                        <div class="section"> 
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
                    
                    
                    
                    <div class="col-sm-10 col-sm-offset-1">
                        <input type="text" class='btn btn-finish btn-primary pull-right' name='update' value='등록' />
                    </div>
                    

                    <!-- <div class="col-md-3 p0 padding-top-40">
                        <div class="blog-asside-right">
                            <div class="panel panel-default sidebar-menu wow fadeInRight animated" >
                                <div class="panel-heading">
                                    <h3 class="panel-title">Hello Kimaro</h3>
                                </div>
                                <div class="panel-body search-widget">

                                </div>
                            </div>

                            <div class="panel panel-default sidebar-menu wow fadeInRight animated">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Recommended</h3>
                                </div>
                                <div class="panel-body recent-property-widget">

                                </div>
                            </div>
                        </div>
                    </div> -->
                </div>
            </div>
        </div>

        
        
          

        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/vendor/modernizr-2.6.2.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js//jquery-1.10.2.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/sneat/bootstrap/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/bootstrap-select.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/bootstrap-hover-dropdown.js"></script>
        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/easypiechart.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/jquery.easypiechart.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/owl.carousel.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/wow.js"></script>
        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/icheck.min.js"></script>

        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/price-range.js"></script> 
        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/jquery.bootstrap.wizard.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/jquery.validate.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/wizard.js"></script>

        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/main.js"></script>
</section>
<%@ include file="/WEB-INF/views/module/footer.jsp" %> 
</body>
</html>