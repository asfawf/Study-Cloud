<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- jQuery -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
	<!-- iamport.payment.js -->
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<%@ include file="../views/module/link.jsp" %>
</head>
    <body>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<%--  <%@ include file="./module/header.jsp" %>--%>
       <div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title">강남역 3분 스터디룸 [헬로강남] </h1>               
                    </div>
                </div>
            </div>
        </div>
        <!-- End page header -->

        <!-- property area -->
        <div class="content-area single-property" style="background-color: #FCFCFC;">&nbsp;
            <div class="container">   

                <div class="clearfix padding-top-40" >

 <div class="col-md-8 single-property-content prp-style-1 "> 
                        <div class="row">
                            <div class="light-slide-item">            
                                <div class="clearfix">
                                    <div class="favorite-and-print">
                                        <a class="add-to-fav" href="#login-modal" data-toggle="modal">
                                            <i class="fa fa-star-o"></i>
                                        </a>
                                        <a class="printer-icon " href="javascript:window.print()">
                                            <i class="fa fa-print"></i> 
                                        </a>
                                    </div> 

                                   <!--  <ul id="image-gallery" class="gallery list-unstyled cS-hidden">
                                        <li data-thumb="../assets/img/hello/085436.jpg"> 
                                            <img src="../assets/img/hello/085436.jpg" />
                                        </li>
                                        <li data-thumb="../assets/img/property-1/property2.jpgfd"> 
                                            <img src="../assets/img/hello/085503.jpg" />
                                        </li>
                                        <li data-thumb="../assets/img/property-1/property3.jpg"> 
                                            <img src="../assets/img/hello/085528.jpg" />
                                        </li>
                                        <li data-thumb="../assets/img/property-1/property4.jpg"> 
                                            <img src="../assets/img/hello/085538.jpg" />
                                        </li>                                         
                                    </ul> -->
                                </div>
                            </div>
                        </div> 

                        <div class="single-property-wrapper">
                            <div class="single-property-header">                                          
                                <h1 class="property-title pull-left">강남역 3분 스터디룸[헬로강남]</h1>
                                <button onclick="requestPay()" class="property-price pull-right">결제하기(동작X)</button>
                            </div>

                            <div class="property-meta entry-meta clearfix ">   

                                


	  	                    </div>
	                            <!-- .property-meta -->
	
	                            <div class="section">
	                                <h4 class="s-property-title">공간소개</h4>
	                                <div class="s-property-content">
	                                    <p>여러화가의 색체가 예쁘게담긴<br>편안한 12인 모임감성공간[헬로강남] 입니다. </p>
	                                </div>
	                           <!-- End description area  -->
	                        </div>
	     
                            
                            
                            
                            
                            
                            
                            <!-- End additional-details area  -->

                            <div class="section additional-details">

                                <h4 class="s-property-title">시설안내</h4>

                                <ul class="additional-details-list clearfix">
                                    <li>
                                        <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">영업시간</span>
                                        <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">0~24시</span>
                                    </li>
                                    
                                    <li>
                                        <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">층</span>
                                        <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">지상8층</span>
                                    </li>

                                    <li>
                                        <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">주차</span>
                                        <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">불가능</span>
                                    </li>
                                    <li>
                                        <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">엘리베이터</span>
                                        <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">없음</span>
                                    </li>
                                  

                                </ul>
                            </div> 

                            
                            <!-- End features area  -->



                            
                            <div class="section review"> 
                                <h4 class="s-property-title">유의사항</h4> 
                                
                            </div>
                            <!-- review area  -->

                            <div class="section review"> 
                                <h4 class="s-property-title">Review</h4> 
                                
                                  <div class="container">
                                        <div class="row">
                                            <div class="blog-lst col-md-9 p0">
                                                
                        
                                             <section class="about-autor">
                        
                                              </section>
                      
                                              <section id="comments" class="comments wow fadeInRight animated"> 
                                                
                        
                        
                                                    <div class="row comment">
                                                        <div class="">
                                                            
                                                        </div>
                                                        <div class="col-sm-9 col-md-10">
                                                            <h5 class="text-uppercase">Julie Alma</h5>
                                                            <p class="posted"><i class="fa fa-clock-o"></i> September 23, 2011 at 12:00 am</p>
                                                            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper.
                                                               </p>
                                                            <p class="reply"><a href="#"><i class="fa fa-reply"></i> Reply</a>
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <!-- /.comment -->
                        
                        
                                                    <div class="row comment last">
                                                        <div class="">
                                                        </div>
                                                        <div class="col-sm-9 col-md-10">
                                                            <h5 class="text-uppercase">Louise Armero</h5>
                                                            <p class="posted"><i class="fa fa-clock-o"></i> September 23, 2012 at 12:00 am</p>
                                                            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper.
                                                                </p>
                                                            <p class="reply"><a href="#"><i class="fa fa-reply"></i> Reply</a>
                                                            </p>
                                                        </div>
                        
                                                    </div>
                                                    <!-- /.comment -->
                                                </section>
                                                
                                            </div>                    
                                            </div>   
                                        </div>
                                </div>
                                
                            </div>
                            <!-- review area  -->
                            
                            

                            <div class="section qna"> 
                                <h4 class="s-property-title">Q&A</h4> 
                              
                            </div>
                            <!-- qna area  -->


                            <div class="section property-features">      

                                <h4 class="s-property-title">위치</h4>                            
                               <!-- 지도 api -->
                            <div id="map" style="width:100%;height:350px;"></div>

							<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=050dabb6b9a1019a9050e1301f2edd4c"></script>
							<script>
							var mapContainer = document.getElementById('map'), 
							    mapOption = { 
							        center: new kakao.maps.LatLng(37.50055486252025, 127.02501560915026), 
							        level: 3
							    };
							
							var map = new kakao.maps.Map(mapContainer, mapOption); 
							
							var markerPosition  = new kakao.maps.LatLng(37.50055486252025, 127.02501560915026); 
							
							var marker = new kakao.maps.Marker({
							    position: markerPosition
							});
							
							marker.setMap(map);    
							</script>

                            </div>

                            
                        </div>
                    </div>

                    </div>
                </div>
                
                
        
        
        <script src="../assets/js/vendor/modernizr-2.6.2.min.js"></script>
        <script src="../assets/js/jquery-1.10.2.min.js"></script>
        <script src="../bootstrap/js/bootstrap.min.js"></script>
        <script src="../assets/js/bootstrap-select.min.js"></script>
        <script src="../assets/js/bootstrap-hover-dropdown.js"></script>
        <script src="../assets/js/easypiechart.min.js"></script>
        <script src="../assets/js/jquery.easypiechart.min.js"></script>
        <script src="../assets/js/owl.carousel.min.js"></script>
        <script src="../assets/js/wow.js"></script>
        <script src="../assets/js/icheck.min.js"></script>
        <script src="../assets/js/price-range.js"></script>
        <script type="text/javascript" src="../assets/js/lightslider.min.js"></script>
        <script src="../assets/js/main.js"></script>

        <script>
            $(document).ready(function () {

                $('#image-gallery').lightSlider({
                    gallery: true,
                    item: 1,
                    thumbItem: 9,
                    slideMargin: 0,
                    speed: 500,
                    auto: true,
                    loop: true,
                    onSliderLoad: function () {
                        $('#image-gallery').removeClass('cS-hidden');
                    }
                });
            });
            
            
            
            var IMP = window.IMP;
        	IMP.init("imp43677748"); // 예: imp00000000
        	
            function requestPay() {
              // IMP.request_pay(param, callback) 결제창 호출
              IMP.request_pay({ // param
                  pg: "html5_inicis",
                  pay_method: "card",
                  merchant_uid: "G9F80131-0000411",
                  name: "[1시간무료[헬로강남]",
                  amount: 100,
                  buyer_email: "study-cloud@gmail.com",
                  buyer_name: "구매자",
//                   buyer_tel: "010-1234-5678",
//                   buyer_addr: "서울특별시 강남구",
//                   buyer_postcode: "01181"
              }, function (rsp) { // callback
            	  if (rsp.success) {
                      alert('결제성공');
               } else {
                      alert('결제실패');
               }
              });
            }
        </script>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>