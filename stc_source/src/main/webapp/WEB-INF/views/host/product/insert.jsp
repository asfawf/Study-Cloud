<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록</title>
<%@ include file="/WEB-INF/views/module/link.jsp" %>
</head>
<body>
<section>
  <%@ include file="/WEB-INF/views/module/header2.jsp" %>

        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        <!-- Body content -->

        

        

        <div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title"><span class="orange strong">공간등록 page</span></h1>               
                    </div>
                </div>
            </div>
        </div>
        <!-- End page header --> 

        <!-- property area -->
        <div class="content-area user-profiel" style="background-color: #FCFCFC;">&nbsp;
            <div class="container">   
                <div class="row">
                    <div class="col-sm-10 col-sm-offset-1 profiel-container">

                        <form action="insert" method="post">

                            <div class="profiel-header">
                                <h3>
                                    <b>공간</b>등록<br>
                                </h3>
                                <hr>
                            </div>

                            <div class="clear">

                                <div class="col-sm-10 col-sm-offset-1">
                                    <div class="form-group">
                                        <label>공간이름</label>
                                        <input name="productName" type="text" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>상품소개 :</label>
                                        <input type="text" class="form-control">
                                    </div> 
                                    <div class="form-group">
                                        <label>시설안내 :</label>
                                        <input type="text" class="form-control">
                                    </div> 
                                    <div class="form-group">
                                        <label>유의사항 :</label>
                                        <input type="text" class="form-control">
                                    </div> 
                                    <div class="form-group">
                                        <label>환불정책 :</label>
                                        <input type="text" class="form-control">
                                    </div> 
                                    <div class="form-group">
                                        <label>가격(시간당) :</label>
                                        <input type="text" class="form-control">
                                    </div> 
                                    <div class="form-group">
                                        <label>주소 : </label>
                                        <input type="text" class="form-control">
                                    </div> 
                                    <div class="form-group">
                                        <label>전화번호 :</label>
                                        <input type="text" class="form-control">
                                    </div> 
                                    <div class="form-group">
                                        <label>이미지 :</label>
                                        <input type="file" class="form-control">
                                    </div>
                                </div>
                                <div class="col-sm-10 col-sm-offset-1">
                                    <input type="text" class='btn btn-finish btn-primary pull-right' name='update' value='등록' />
                                </div>
                                
                            </div>
 
                    
                            
                            
                         </form>

                    </div>
                </div><!-- end row -->

             </div>
        </div>

  
        

        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/modernizr-2.6.2.min.js"></script>

        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/jquery-1.10.2.min.js"></script> 
        <script src="<%=request.getContextPath() %>/resources/sneat/bootstrap/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/bootstrap-select.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/bootstrap-hover-dropdown.js"></script>

        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/easypiechart.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/jquery.easypiechart.min.js"></script>

        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/owl.carousel.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/wow.js"></script>

        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/icheck.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/price-range.js"></script>

        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/main.js"></script>
</section>
</body>
</html>