<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${product.detail.proName } - 상세 페이지</title>
<%@ include file="/WEB-INF/views/module/link.jsp" %>
<script src="https://code.jquery.com/jquery-3.6.3.js" ></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=${appkey }&libraries=services"></script>
</head>
    <body>
        <%@ include file="/WEB-INF/views/module/header.jsp" %>
    <section>       
         
        <!-- Body content -->
        <div class="page-head"> 
            <div class="container">
                <div class="row" style="color: #777;">
                	<h1 class="property-title pull-left">${product.detail.proName }</h1>              
                </div>
            </div>
        </div>
        <!-- End page header -->

        <!-- property area -->
        <div class="content-area single-property">&nbsp;
            <div class="container">   

                <div class="clearfix padding-top-40">
                    <div class="col-md-8 single-property-content ">
                        <div class="row">
                            <div class="light-slide-item">            
                                <div class="clearfix">
                                    
<!--                                     <ul id="image-gallery" class="gallery list-unstyled cS-hidden"> -->
   <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

  
  
  
<!--   Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
	<div class="item active">
		<div>
<%--       <img src="${pageContext.request.contextPath }/resources/uploadfiles/${pic.proPicRename}"/> --%>
      <img src="..."/>
      </div> 
    </div>
   
	<c:forEach items="${product.detail.picList }" var="pic" varStatus="s">
    <div class="item">
          <img src="${pageContext.request.contextPath }/resources/uploadfiles/${pic.proPicRename}" style="width:100%; height:100%"; >
          <div class="carousel-caption" style="color:black;">
          </div>
     </div>
      </c:forEach>
   
   
  		</div>


  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>                                  
                                    </ul>
                                </div>
                            </div>
                        </div>

                       <!--   <div class="single-property-wrapper">-->
                            <div class="single-property-header">                                          
                                <h1 class="property-title pull-left">${product.detail.proAddress }</h1>
                                <c:forEach items="${product.detail.timePriceList }" var="timeprice" varStatus="s">
                                <c:if test="${s.count==1 }">
                                <span class="property-price pull-right"><fmt:formatNumber value="${timeprice.price }" type="currency" /></span>
                                </c:if>
                                </c:forEach>
                            </div>

                            
                            <div class="section">
                                <h4 class="s-property-title">공간소개</h4>
                                <div class="s-property-content">
                                    <p>${product.detail.proPost }</p>
                                </div>
                            </div>
                            <!-- End introduce area  -->

                            <div class="section additional-details">

                                <h4 class="s-property-title">시설안내</h4>

                                <ul class="additional-details-list clearfix">
                                
                                ${product.detail.proInfo }
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
                                ${product.detail.proNotice }                         
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
                                ${product.detail.proRefund }                     
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
							

                            </div>                      
                            


                            <!-- qna 구역 시작 -->
							<%@ include file="/WEB-INF/views/product/qna.jsp" %>
							<!-- qna 구역 끝 -->
 
                           
                            <!-- review 구역 시작 -->
                            <%@ include file="/WEB-INF/views/product/review.jsp" %>
                            <!-- review 구역 끝 -->


                       </div>


                    <!-- 사이드바 구역 시작 -->
					<%@ include file="/WEB-INF/views/reserve/reserve.jsp" %>
					<!-- 사이드바 구역 끝 -->
					                                        
                </div>

            </div>
        </div>
        

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
 

			<script>
          	
			/* 지도 */
 			var mapContainer = document.getElementById('map'), 
		    mapOption = { 
		        center: new kakao.maps.LatLng(37.50055486252025, 127.02501560915026), 
		        level: 3
		    };
		
			var map = new kakao.maps.Map(mapContainer, mapOption); 
			
			var imageSrc = '${pageContext.request.contextPath}/resources/sneat/assets/img/marker.png',  
			    imageSize = new kakao.maps.Size(56, 61), 
			    imageOption = {offset: new kakao.maps.Point(27, 69)}; 
			
			var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
				geocoder = new kakao.maps.services.Geocoder(); 
								
			geocoder.addressSearch('${product.detail.proAddress}', function(result, status) {

			    if (status === kakao.maps.services.Status.OK) {
			        var markerPosition = new kakao.maps.LatLng(result[0].y, result[0].x);

			        var marker = new kakao.maps.Marker({
			            position: markerPosition,
			            image: markerImage
			        });

			        marker.setMap(map); 
			        
			        var content= '<div class="customoverlay">${product.detail.proName}</div>';

			        map.setCenter(markerPosition);
					
			        var customOverlay = new kakao.maps.CustomOverlay({
					    map: map,
					    position: markerPosition,
					    content: content,
					    yAnchor: 1 
					});
			    } 
			});
			
			map.setZoomable(false);
			kakao.maps.event.addListener(map, 'click', (mouseEvent) => {
				map.setZoomable(true);
			});   

			</script>
	</section>
	
	
<%@ include file="/WEB-INF/views/module/footer.jsp" %>
</body>
</html>