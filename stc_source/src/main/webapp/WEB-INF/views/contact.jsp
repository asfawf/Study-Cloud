<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Contact</title>
<%@ include file="/WEB-INF/views/module/link.jsp" %>
</head>
<body>
<%@ include file="/WEB-INF/views/module/header.jsp" %> 
<section>
        <!-- property area -->
        <div class="content-area recent-property padding-top-40" style="background-color: #FFF;">
            <div class="container">  
                <div class="row">
                    <div class="col-md-8 col-md-offset-2"> 
                        <div class="" id="contact1">                        
                            <div class="row">
                                <div class="col-sm-4">
                                    <h3><i class="fa fa-map-marker"></i> 주소</h3>
                                    <p>서울특별시
                                        <br>강남구 
                                        <br>테헤란로14길 6
                                        <br>
                                        <strong> </strong>
                                    </p>
                                </div>
                                <!-- /.col-sm-4 -->
                                <div class="col-sm-4">
                                    <h3><i class="fa fa-phone"></i> 전화상담</h3>
                                    <p class="text-muted"></p>
                                    <p><strong>02 XXX XXXX</strong></p>
                                </div>
                                <!-- /.col-sm-4 -->
                                <div class="col-sm-4">
                                    <h3><i class="fa fa-envelope"></i> 이메일</h3>
                                    <p class="text-muted">Please feel free to write an email to us or to use our electronic ticketing system.</p>
                                    <ul>
                                        <li><strong><a href="mailto:">info@studycloud.com</a></strong>   </li>
                                        <!-- <li><strong><a href="#">Ticketio</a></strong> - our ticketing support platform</li> -->
                                    </ul>
                                </div>
                                <!-- /.col-sm-4 -->
                            </div>
                            <!-- /.row -->
                            <hr>
                            <!-- 지도 api -->
                            <div id="map" style="width:100%;height:350px;"></div>

							<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=050dabb6b9a1019a9050e1301f2edd4c"></script>
							<script>
							var mapContainer = document.getElementById('map'), 
							    mapOption = { 
							        center: new kakao.maps.LatLng(37.49904375002841, 127.03288038765064), 
							        level: 3
							    };
							
							var map = new kakao.maps.Map(mapContainer, mapOption); 
							
							var markerPosition  = new kakao.maps.LatLng(37.49904375002841, 127.03288038765064); 
							
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
</section>
<%@ include file="/WEB-INF/views/module/footer.jsp" %>
</body>
</html>