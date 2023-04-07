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

<%@ include file="/WEB-INF/views/module/header.jsp" %>
<section>
  <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        <!-- Body content -->

        

       

        <div class="slider-area">
           
            <div class="slider-content">
                <div class="row">
                    
                        <h2>공간 목록</h2>
                       
                        <div class="search-form wow pulse" data-wow-delay="0.8s">

                            <form action="" class=" form-inline">
                               

                                
                                <div class="form-group">                                   
                                    <select id="lunchBegins" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="Select your city">

                                        <option>New york, CA</option>
                                        <option>Paris</option>
                                        <option>Casablanca</option>
                                        <option>Tokyo</option>
                                        <option>Marraekch</option>
                                        <option>kyoto , shibua</option>
                                    </select>
                                </div>
                                
                                <button class="btn search-btn" type="submit"><i class="fa fa-search"></i></button>

                                <div style="display: none;" class="search-toggle">

                                                                   

                                                              
                                    <button class="btn search-btn prop-btm-sheaerch" type="submit"><i class="fa fa-search"></i></button>  
                                </div>                    

                            </form>
                            




                        </div>

                        


                        
                    
                </div>

                <!-- property area -->
       
            <div class="container" style="color: black; margin-top: 40px;" >
                <table class="table table-striped" border="1px">
                   <thead>
                    <tr>
                        <th colspan="2">공간이름</th>
                        <th>호스트 이름</th>
                        <th>주소</th>
                        <th colspan="2">관리</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td  colspan="2">헬로강남</td>
                        <td>호스트1</td>
                        <td>서울시 강남구 강남대로 12-24</td>
                        <td><button>수정</button>
                            <button>삭제</button></td>
                    </tr>
                    <tr>
                        <td  colspan="2">헬로성수</td>
                        <td>호스트2</td>
                        <td>서울시 마포수 와우산로 12-24</td>
                        <td><button>수정</button>
                            <button>삭제</button></td>
                    </tr>
                    <tr>
                        <td  colspan="2">헬로홍대</td>
                        <td>호스트3</td>
                        <td>동작구 대방로 12-24</td>
                        <td><button>수정</button>
                            <button>삭제</button></td>
                    </tr>
                    <tr>
                        <td  colspan="2">헬로동작</td>
                        <td>호스트4</td>
                        <td>동작구 대방로 12-24</td>
                        <td><button>수정</button>
                            <button>삭제</button></td>
                    </tr>
                    <tr>
                        <td  colspan="2"></td>
                        <td></td>
                        <td></td>
                        <td><button>수정</button>
                            <button>삭제</button></td>

                    </tr>
                    <tr>
                        <td  colspan="2"></td>
                        <td></td>
                        <td></td>
                        <td><button>수정</button>
                            <button>삭제</button></td>

                    </tr>
                    <tr>
                        <td  colspan="2"></td>
                        <td></td>
                        <td></td>
                        <td><button>수정</button>
                            <button>삭제</button></td>

                    </tr>

                </tbody>

                  </table>
            </div>
            </div>
        </div>
   
        
        

        <script src="assets/js/modernizr-2.6.2.min.js"></script>

        <script src="assets/js/jquery-1.10.2.min.js"></script> 
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/bootstrap-select.min.js"></script>
        <script src="assets/js/bootstrap-hover-dropdown.js"></script>

        <script src="assets/js/easypiechart.min.js"></script>
        <script src="assets/js/jquery.easypiechart.min.js"></script>

        <script src="assets/js/owl.carousel.min.js"></script>
        <script src="assets/js/wow.js"></script>

        <script src="assets/js/icheck.min.js"></script>
        <script src="assets/js/price-range.js"></script>

        <script src="assets/js/main.js"></script>

</section>
<%@ include file="/WEB-INF/views/module/footer.jsp" %>


</body>
</html>