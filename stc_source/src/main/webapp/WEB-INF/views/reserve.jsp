<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product detail page</title>


<%@ include file="/WEB-INF/views/module/link.jsp" %>
<script src="https://code.jquery.com/jquery-3.6.3.js" ></script>
<!-- <script src="https://unpkg.com/gijgo@1.9.14/js/gijgo.min.js" type="text/javascript"></script>
<link href="https://unpkg.com/gijgo@1.9.14/css/gijgo.min.css" rel="stylesheet" type="text/css"/>
 -->

<!-- datepicker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js" integrity="sha512-ygaYzcKBzf1YptDaS/7b9P2pY2LW0YCXp22l+IZYHwOjB2opJDrniEMarJ1HsckAdKirYqE9JMpKfSm6NHUcdg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/locales/bootstrap-datepicker.kr.min.js" integrity="sha512-4UPr4O3wb78N3c62jRE7Lv8LNJMSriVUvBa4fSGWAb25diqje3Yp4Uq1cK2pOwZ0F2s8R4RmWJYZhI75HJqOxQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css" integrity="sha512-yfvyUfCYfBN4Y16Nj3yxfTlgfOR07CpU7S4iOyIAniXmXrpxIppjaCHRZdZnVH+gn6bzyZTj5vVvMO/hqtbfxA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
 
 <!-- selectpicker -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.18/dist/css/bootstrap-select.min.css">

</head>
<body>
<%@ include file="/WEB-INF/views/module/header.jsp" %>
<section>
 
    <!-- Body content -->
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
		<div class="content-area single-property">
			&nbsp;
			<div class="container">

				<div class="clearfix padding-top-40">

					<div class="col-md-8 single-property-content prp-style-1 ">
						<div class="row">
							<div class="light-slide-item">
								<div class="clearfix">

									<ul id="image-gallery" class="gallery list-unstyled cS-hidden">
										<li
											data-thumb="<%=request.getContextPath() %>/resources/sneat/assets/img/property-1/property1.jpg">
											<img
											src="<%=request.getContextPath() %>/resources/sneat/assets/img/hello/085436.jpg" />
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
							<h1 class="property-title pull-left">강남역 3분 스터디룸[헬로강남]</h1>
							<span class="property-price pull-right">$825,000</span>
						</div>


						<div class="section">
							<h4 class="s-property-title">공간소개</h4>
							<div class="s-property-content">
								<p>
									N여러화가의 색체가 예쁘게담긴<br>편안한 12인 모임감성공간[헬로강남] 입니다.
								</p>
							</div>
						</div>
						<!-- End introduce area  -->

						<div class="section additional-details">

							<h4 class="s-property-title">시설안내</h4>

							<ul class="additional-details-list clearfix">
								<li><span class="col-xs-6 col-sm-4 col-md-4 add-d-title">영업시간</span>
									<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">0~24시</span>
								</li>

								<li><span class="col-xs-6 col-sm-4 col-md-4 add-d-title">층</span>
									<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">지상8층</span>
								</li>
								<li><span class="col-xs-6 col-sm-4 col-md-4 add-d-title">주차</span>
									<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">불가능</span>
								</li>

								<li><span class="col-xs-6 col-sm-4 col-md-4 add-d-title">엘리베이터</span>
									<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">없음</span>
								</li>
							</ul>
						</div>
						<!-- End additional-details area  -->

						<div class="section property-features">

							<h4 class="s-property-title">유의사항</h4>
							<ul>
								<li><a>잔여시간 환불 불가</a></li>
								<br>
								<li><a>소품 파손시 신품가격 변상</a></li>
								<br>
								<li><a>퇴실시 기본적인 청소 및 소품 원위치</a></li>
								<br>
								<li><a>고객님의 안전과 보안을 위하여 CCTV설치</a></li>
								<br>
								<li><a>5분전퇴실</a></li>
								<br>
								<li><a>작업실내 달리기/고함지르기 소음행위 금지</a></li>
							</ul>

						</div>
						<!-- End 유의사항 area  -->



						<div class="section property-features">

							<h4 class="s-property-title">환불규정</h4>
							<ul>
								<li><a>이용 6일전 : 총 금액의 100% 환불</a></li>
								<br>
								<li><a>이용 5일전 : 환불 불가</a></li>
								<br>
								<li><a>이용 4일전 : 환불 불가</a></li>
								<br>
								<li><a>이용 3일전 : 환불 불가</a></li>
								<br>
								<li><a>이용 2일전 : 환불 불가</a></li>
								<br>
								<li><a>이용 1일전 : 환불 불가</a></li>
							</ul>

						</div>
						<!-- End 환불 규정 area  -->




						<div class="section property-features">

							<h4 class="s-property-title">위치</h4>
							<!-- 지도 api -->
							<div id="map" style="width: 100%; height: 350px;"></div>

							<script type="text/javascript"
								src="//dapi.kakao.com/v2/maps/sdk.js?appkey=050dabb6b9a1019a9050e1301f2edd4c"></script>
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
										<p class="posted">
											<i class="fa fa-clock-o"></i> September 23, 2011 at 12:00 am
										</p>
										<p>Pellentesque habitant morbi tristique senectus et netus
											et malesuada fames ac turpis egestas. Vestibulum tortor quam,
											feugiat vitae, ultricies eget, tempor sit amet, ante. Donec
											eu libero sit amet quam egestas semper. Aenean ultricies mi
											vitae est. Mauris placerat eleifend leo.</p>
										<p class="reply">
											<a href="#"><i class="fa fa-reply"></i> Reply</a>
										</p>
									</div>
								</div>
								<!-- /.comment -->


								<div class="row comment last">

									<div class="col-sm-9 col-md-10">
										<h5 class="text-uppercase">Louise Armero</h5>
										<p class="posted">
											<i class="fa fa-clock-o"></i> September 23, 2012 at 12:00 am
										</p>
										<p>Pellentesque habitant morbi tristique senectus et netus
											et malesuada fames ac turpis egestas. Vestibulum tortor quam,
											feugiat vitae, ultricies eget, tempor sit amet, ante. Donec
											eu libero sit amet quam egestas semper. Aenean ultricies mi
											vitae est. Mauris placerat eleifend leo.</p>
										<p class="reply">
											<a href="#"><i class="fa fa-reply"></i> Reply</a>
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
								<h4>
									<strong>Ohidul Islam, </strong>
								</h4>
							</div>
							<div class="client-text">
								<p>깔끔하고 무료로 마실수 있어서 좋았어요 또 이용할 생각입니다</p>
								<h4>
									<strong>Ohidul Islam, </strong>
								</h4>
							</div>
							<div class="client-text">
								<p>넘 좋았어요 음료 1개 주는게 좋네요 다음에도 이용할게요</p>
								<h4>
									<strong>Ohidul Islam, </strong>
								</h4>
							</div>

						</div>


						<!-- End review area -->


						<!--   </div> -->
					</div>


					<!-- 사이드바 구역 -->

					<div class="col-md-4 p0" style="">
						<aside class="sidebar sidebar-property blog-asside-right" style="border: 1px solid #d3d3d3">
							<div class="panel panel-default sidebar-menu" style="padding-top: 20px;">
								<div class="panel-heading">
									<h3 class="panel-title">
										<b>예약하기</b>
									</h3>
								</div>
								<div class="panel-body recent-property-widget">
									<img src="https://images.unsplash.com/photo-1616400619175-5beda3a17896?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80">
									<p class="side-info"
										style="padding-top: 20px; padding-bottom: 20px;">강남역 도보
										5분, 당신을 위한 프라이빗 룸.</p>
									<div class="clear">
										<ul class="dealer-contacts">
											<li><i class="pe-7s-map-marker strong"> </i> 서울 서초구 서초동
												1308-16 1009호</li>
											<li><i class="pe-7s-mail strong"> </i>
												email@yourcompany.com</li>
											<li><i class="pe-7s-call strong"> </i> 010-1234-5678</li>
											<li><i class="pe-7s-up-arrow strong"> </i> 11층</li>
											<li><i class="pe-7s-car strong"> </i> 주차가능</li>
											<li><i class="pe-7s-signal strong"> </i> 와이파이</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default sidebar-menu">
								<div class="panel-heading">
									<h3 class="panel-title">
										<b>날짜선택</b>
									</h3>
								</div>
								<div class="panel-body recent-property-widget">
									<div class="datepicker " id="datepicker"></div>
								</div>
							</div>
							<div class="panel panel-default sidebar-menu">
								<div class="panel-heading">
									<h3 class="panel-title">
										<b>시간선택</b>
									</h3>
								</div>
								<div class="panel-body recent-property-widget">
									<select class="selectpicker form-control" multiple>
										<optgroup label="오전">
											<option value="1">00:00 ~ 01:00</option>
											<option value="2">01:00 ~ 02:00</option>
											<option value="3">02:00 ~ 03:00</option>
											<option value="4">03:00 ~ 04:00</option>
											<option value="5">04:00 ~ 05:00</option>
											<option value="6">05:00 ~ 06:00</option>
											<option value="7">06:00 ~ 07:00</option>
											<option value="8">07:00 ~ 08:00</option>
											<option value="9">08:00 ~ 09:00</option>
											<option value="10">09:00 ~ 10:00</option>
											<option value="11">10:00 ~ 11:00</option>
											<option value="12">11:00 ~ 12:00</option>
										</optgroup>
										<optgroup label="오후">
											<option value="13">12:00 ~ 13:00</option>
											<option value="14">13:00 ~ 14:00</option>
											<option value="15">14:00 ~ 15:00</option>
											<option value="16">15:00 ~ 16:00</option>
											<option value="17">16:00 ~ 17:00</option>
											<option value="18">17:00 ~ 18:00</option>
											<option value="19">18:00 ~ 19:00</option>
											<option value="20">19:00 ~ 20:00</option>
											<option value="21">20:00 ~ 21:00</option>
											<option value="22">21:00 ~ 22:00</option>
											<option value="23">22:00 ~ 23:00</option>
											<option value="24">23:00 ~ 24:00</option>
										</optgroup>
									</select>
								</div>
							</div>
							<div class="panel panel-default sidebar-menu">
								<div class="panel-heading">
									<h3 class="panel-title">
										<b>인원선택</b>
									</h3>
								</div>
								<div class="panel-body recent-property-widget">
									<div class="input-group">
										<span class="input-group-btn">
											<button type="button" class="btn btn-default btn-number"
												data-type="minus" data-field="quantity">
												<span class="glyphicon glyphicon-minus"></span>
											</button>
										</span> <input type="text" id="quantity" name="quantity"
											class="form-control input-number text-center" value="1"
											min="1" max="10"> <span class="input-group-btn">
											<button type="button" class="btn btn-default btn-number"
												data-type="plus" data-field="quantity">
												<span class="glyphicon glyphicon-plus"></span>
											</button>
										</span>
									</div>
								</div>
							</div>
						</aside>
					</div>
				</div>

			</div>
		</div>


<style>


</style>


<script>
	//datepicker
	$('#datepicker').datepicker({
	    uiLibrary: 'bootstrap',
	    format: "yyyy-mm-dd",
	    language: "kr",
	    todayHighlight: true
	});
	
	
	
	//인원수카운트
	$(document).ready(function() {
		$('.btn-number').click(function(e) {
			e.preventDefault();

			var fieldName = $(this).attr('data-field');
			var type = $(this).attr('data-type');
			var input = $("input[name='" + fieldName + "']");
			var currentVal = parseInt(input.val());

			if (!isNaN(currentVal)) {
				if (type == 'minus') {
					if (currentVal > input.attr('min')) {
						input.val(currentVal - 1).change();
					}
				} else if (type == 'plus') {
					if (currentVal < input.attr('max')) {
						input.val(currentVal + 1).change();
					}
				}
			} else {
				input.val(0);
			}
		});
	});	
	
	
	
</script>
	</section>
	<%@ include file="/WEB-INF/views/module/footer.jsp" %>

</body>
</html>