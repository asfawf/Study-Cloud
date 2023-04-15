<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product detail page</title>

<%@ include file="/WEB-INF/views/module/link.jsp" %>

</head>
    <body>
        <%@ include file="/WEB-INF/views/module/header.jsp" %>
    <section>
        
        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        <!-- Body content -->
        <div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title">${detail.proName }</h1>               
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
                                    
                                    <ul id="image-gallery" class="gallery list-unstyled cS-hidden">
                                        <li data-thumb="<%=request.getContextPath() %>/resources/sneat/assets/img/property-1/property1.jpg"> 
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/hello/085436.jpg" />
                                        </li>
                                        <%-- <li data-thumb="<%=request.getContextPath() %>/resources/sneat/assets/img/property-1/property2.jpg"> 
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/property-1/property3.jpg" />
                                        </li>
                                        <li data-thumb="<%=request.getContextPath() %>/resources/sneat/assets/img/property-1/property3.jpg"> 
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/property-1/property3.jpg" />
                                        </li>
                                        <li data-thumb="<%=request.getContextPath() %>/resources/sneat/assets/img/property-1/property4.jpg"> 
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/property-1/property4.jpg" />
                                        </li>      --%>                                    
                                    </ul>
                                </div>
                            </div>
                        </div>

                       <!--   <div class="single-property-wrapper">-->
                            <div class="single-property-header">                                          
                                <h1 class="property-title pull-left">${detail.proName }</h1>
                                <span class="property-price pull-right">${detail.proPrice}</span>
                            </div>

                            
                            <div class="section">
                                <h4 class="s-property-title">공간소개</h4>
                                <div class="s-property-content">
                                    <p>${detail.proPost }</p>
                                </div>
                            </div>
                            <!-- End introduce area  -->

                            <div class="section additional-details">

                                <h4 class="s-property-title">시설안내</h4>

                                <ul class="additional-details-list clearfix">
                                
                                ${detail.proInfo }
<!--                                     <li> -->
<!--                                         <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">영업시간</span> -->
<!--                                         <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">0~24시</span> -->
<!--                                     </li> -->

<!--                                     <li> -->
<!--                                         <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">층</span> -->
<!--                                         <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">지상8층</span> -->
<!--                                     </li> -->
<!--                                     <li> -->
<!--                                         <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">주차</span> -->
<!--                                         <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">불가능</span> -->
<!--                                     </li> -->

<!--                                     <li> -->
<!--                                         <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">엘리베이터</span> -->
<!--                                         <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">없음</span> -->
<!--                                     </li> -->
                                </ul>
                            </div>  
                            <!-- End additional-details area  -->

                            <div class="section property-features">      

                                <h4 class="s-property-title">유의사항</h4>   
                                ${detail.proNotice }                         
<!--                                 <ul> -->
<!--                                     <li><a>잔여시간 환불 불가</a></li><br>    -->
<!--                                     <li><a>소품 파손시 신품가격 변상</a></li><br> -->
<!--                                     <li><a>퇴실시 기본적인 청소 및 소품 원위치</a></li><br> -->
<!--                                     <li><a>고객님의 안전과 보안을 위하여 CCTV설치</a></li><br> -->
<!--                                     <li><a>5분전퇴실</a></li><br> -->
<!--                                     <li><a>작업실내 달리기/고함지르기 소음행위 금지</a></li> -->
<!--                                 </ul> -->

                            </div>
                            <!-- End 유의사항 area  -->



                            <div class="section property-features">      

                                <h4 class="s-property-title">환불규정</h4>       
                                ${detail.proRefund }                     
<!--                                 <ul> -->
<!--                                     <li><a>이용 6일전 : 총 금액의 100% 환불</a></li><br>    -->
<!--                                     <li><a>이용 5일전 : 환불 불가</a></li><br> -->
<!--                                     <li><a>이용 4일전 : 환불 불가</a></li><br> -->
<!--                                     <li><a>이용 3일전 : 환불 불가</a></li><br> -->
<!--                                     <li><a>이용 2일전 : 환불 불가</a></li><br> -->
<!--                                     <li><a>이용 1일전 : 환불 불가</a></li> -->
<!--                                 </ul> -->

                            </div>
                            <!-- End 환불 규정 area  -->




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
                            


                            <!-- 지도 안내 -->

                            <div class="section property-share"> 
                                <h4 class="s-property-title">Q&A</h4> 
                                <section id="comments" class="comments wow fadeInRight animated"> 
                                           
                                    <div class="row comment">
                                        
                                        <div class="col-sm-9 col-md-10">
                                            <h5 class="text-uppercase">Julie Alma</h5>
                                            <p class="posted"><i class="fa fa-clock-o"></i> September 23, 2011 at 12:00 am</p>
                                            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper.
                                                Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                                            <p class="reply"><a href="#"><i class="fa fa-reply"></i> Reply</a>
                                            </p>
                                        </div>
                                    </div>
                                    <!-- /.comment -->
        
        
                                    <div class="row comment last">
        
                                        <div class="col-sm-9 col-md-10">
                                            <h5 class="text-uppercase">Louise Armero</h5>
                                            <p class="posted"><i class="fa fa-clock-o"></i> September 23, 2012 at 12:00 am</p>
                                            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper.
                                                Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                                            <p class="reply"><a href="#"><i class="fa fa-reply"></i> Reply</a>
                                            </p>
                                        </div>
        
                                    </div>
                                    <!-- /.comment -->
                                </section>
                            </div>
                            <!-- End qna area  -->
                           
                            <!-- start review area -->
                            <div class="section property-share"> 
                                <h4 class="s-property-title">review</h4> 
                                <div class="client-text">                                
                                    <p>접근성이 좋고 공간에 들어섰을때 아늑한 분위기가 너무 좋았습니다.</p>
                                    <h4><strong>Ohidul Islam, </strong></h4>
                                </div>
                                <div class="client-text">                                
                                    <p>깔끔하고 무료로 마실수 있어서 좋았어요 또 이용할 생각입니다</p>
                                    <h4><strong>Ohidul Islam, </strong></h4>
                                </div>
                                <div class="client-text">                                
                                    <p>넘 좋았어요 음료 1개 주는게 좋네요 다음에도 이용할게요</p>
                                    <h4><strong>Ohidul Islam, </strong></h4>
                                </div>
                            
                            </div>


                            <!-- End review area -->

                            
                      <!--   </div> -->
                       </div>


                    <!-- 사이드바 구역 -->

                    <div class="col-md-4 p0">
                        <aside class="sidebar sidebar-property blog-asside-right">
                            <div class="dealer-widget">
                                <div class="dealer-content">
                                    <div class="inner-wrapper">

                                        <div class="clear">
                                            <div class="col-xs-4 col-sm-4 dealer-face">
                                                <a href="">
                                                    <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/client-face1.png" class="img-circle">
                                                </a>
                                            </div>
                                            <div class="col-xs-8 col-sm-8 ">
                                                <h3 class="dealer-name">
                                                    <a href="">Nathan James</a>
                                                    <span>Real Estate Agent</span>        
                                                </h3>
                                                <div class="dealer-social-media">
                                                    <a class="twitter" target="_blank" href="">
                                                        <i class="fa fa-twitter"></i>
                                                    </a>
                                                    <a class="facebook" target="_blank" href="">
                                                        <i class="fa fa-facebook"></i>
                                                    </a>
                                                    <a class="gplus" target="_blank" href="">
                                                        <i class="fa fa-google-plus"></i>
                                                    </a>
                                                    <a class="linkedin" target="_blank" href="">
                                                        <i class="fa fa-linkedin"></i>
                                                    </a> 
                                                    <a class="instagram" target="_blank" href="">
                                                        <i class="fa fa-instagram"></i>
                                                    </a>       
                                                </div>

                                            </div>
                                        </div>

                                        <div class="clear">
                                            <ul class="dealer-contacts">                                       
                                                <li><i class="pe-7s-map-marker strong"> </i> 9089 your adress her</li>
                                                <li><i class="pe-7s-mail strong"> </i> email@yourcompany.com</li>
                                                <li><i class="pe-7s-call strong"> </i> +1 908 967 5906</li>
                                            </ul>
                                            <p>Duis mollis  blandit tempus porttitor curabiturDuis mollis  blandit tempus porttitor curabitur , est non…</p>
                                        </div>

                                    </div>
                                </div>
                            </div>

                            <div class="panel panel-default sidebar-menu similar-property-wdg wow fadeInRight animated">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Similar Properties</h3>
                                </div>
                                <div class="panel-body recent-property-widget">
                                        <ul>
                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                                <a href="single.html"><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/small-property-2.jpg"></a>
                                                <span class="property-seeker">
                                                    <b class="b-1">A</b>
                                                    <b class="b-2">S</b>
                                                </span>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                <h6> <a href="single.html">Super nice villa </a></h6>
                                                <span class="property-price">3000000$</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="col-md-3 col-sm-3  col-xs-3 blg-thumb p0">
                                                <a href="single.html"><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/small-property-1.jpg"></a>
                                                <span class="property-seeker">
                                                    <b class="b-1">A</b>
                                                    <b class="b-2">S</b>
                                                </span>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                <h6> <a href="single.html">Super nice villa </a></h6>
                                                <span class="property-price">3000000$</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                                <a href="single.html"><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/small-property-3.jpg"></a>
                                                <span class="property-seeker">
                                                    <b class="b-1">A</b>
                                                    <b class="b-2">S</b>
                                                </span>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                <h6> <a href="single.html">Super nice villa </a></h6>
                                                <span class="property-price">3000000$</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                                <a href="single.html"><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/small-property-2.jpg"></a>
                                                <span class="property-seeker">
                                                    <b class="b-1">A</b>
                                                    <b class="b-2">S</b>
                                                </span>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                <h6> <a href="single.html">Super nice villa </a></h6>
                                                <span class="property-price">3000000$</span>
                                            </div>
                                        </li>

                                    </ul>
                                </div>
                            </div>                          

                            <div class="panel panel-default sidebar-menu wow fadeInRight animated">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Ads her  </h3>
                                </div>
                                <div class="panel-body recent-property-widget">
                                    <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/ads.jpg">
                                </div>
                            </div>

                            

                        </aside>
                    </div>
                </div>

            </div>
        </div>


         
          
        
        
        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/vendor/modernizr-2.6.2.min.js"></script>
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
        <script type="text/javascript" src="<%=request.getContextPath() %>/resources/sneat/assets/js/lightslider.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/main.js"></script>

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
        </script>
		</section>
		<%@ include file="/WEB-INF/views/module/footer.jsp" %>
		
    </body>
</html>