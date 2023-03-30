<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<!-- css -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/plugin/datepicker/bootstrap-datepicker.css">
<!-- js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.ko.min.js" integrity="sha512-L4qpL1ZotXZLLe8Oo0ZyHrj/SweV7CieswUODAAPN/tnqN3PA1P+4qPu5vIryNor6HQ5o22NujIcAZIfyVXwbQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/i18n/defaults-*.min.js"></script>





<!--성공 cdn -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.min.css">
<!-- selectpicker -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
<!-- (Optional) Latest compiled and minified JavaScript translation files -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/i18n/defaults-*.min.js"></script>
<!-- DatePicker -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/locales/bootstrap-datepicker.kr.min.js"></script>








<!-- 링크 -->
<%@ include file="../views/module/link.jsp" %>
</head>
<body>



<!-- 공간상세설명부분 -->
	<%--  <%@ include file="./module/header.jsp" %>--%>
	<div class="page-head">
		<div class="container">
			<div class="row">
				<div class="page-head-content">
					<h1 class="page-title">강남역 3분 스터디룸 [헬로강남]</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End page header -->

	<!-- property area -->
	<div class="content-area single-property" style="background-color: #FCFCFC;">
		&nbsp;
		<div class="container">

			<div class="clearfix padding-top-40">

				<div class="col-md-8 single-property-content prp-style-1 ">
					<div class="row">
						<div class="light-slide-item">
							<div class="clearfix">
								<div class="favorite-and-print">
									<a class="add-to-fav" href="#login-modal" data-toggle="modal">
										<i class="fa fa-star-o"></i>
									</a> <a class="printer-icon " href="javascript:window.print()">
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

						<div class="property-meta entry-meta clearfix "></div>
						<!-- .property-meta -->

						<div class="section">
							<h4 class="s-property-title">공간소개</h4>
							<div class="s-property-content">
								<p>
									여러화가의 색체가 예쁘게담긴<br>편안한 12인 모임감성공간[헬로강남] 입니다.
								</p>
							</div>
						</div>
						<!-- End description area  -->







						<!-- End additional-details area  -->

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


						<!-- End features area  -->




						<div class="section review">
							<h4 class="s-property-title">유의사항</h4>

						</div>
						<!-- review area  -->

						<div class="section review">
							<h4 class="s-property-title">Review</h4>

						</div>
						<!-- review area  -->



						<div class="section qna">
							<h4 class="s-property-title">Q&A</h4>

						</div>
						<!-- qna area  -->


						<div class="section property-features">

							<h4 class="s-property-title">위치</h4>
							<!-- 지도 api -->
							<div id="map" style="width: 100%; height: 350px;"></div>

							<script type="text/javascript"
								src="//dapi.kakao.com/v2/maps/sdk.js?appkey=050dabb6b9a1019a9050e1301f2edd4c"></script>
							<script>
								var mapContainer = document
										.getElementById('map'), mapOption = {
									center : new kakao.maps.LatLng(
											37.50055486252025,
											127.02501560915026),
									level : 3
								};

								var map = new kakao.maps.Map(mapContainer,
										mapOption);

								var markerPosition = new kakao.maps.LatLng(
										37.50055486252025, 127.02501560915026);

								var marker = new kakao.maps.Marker({
									position : markerPosition
								});

								marker.setMap(map);
							</script>

						</div>


					</div>
				</div>





<!-- 예약  -->
				<div class="col-md-4 p0">
					<aside class="sidebar sidebar-property blog-asside-right property-style2">
						<div class="property-widget">
							<div class="property-content">
								<div class="inner-wrapper">
									<div class="single-property-header">
										<h2 class="property-title">결제 후 바로 예약확정</h2>
										<span class="property-additional-explanation">결제를 진행하시면
											공간 예약이 확정됩니다:)</span>
									</div>

									<div class="property-meta entry-meta clearfix">
										<div class="col-md-12 p-b-15 " style="background-color: red;">
											<span class="property-info"> <img
												src="https://images.unsplash.com/photo-1616400619175-5beda3a17896?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80">
											</span>
										</div>
									</div>
									<div class="clear">
										<ul class="dealer-contacts">
											<li><i class="pe-7s-map-marker strong"> </i> 9089 your
												adress her</li>
											<li><i class="pe-7s-mail strong"> </i>
												email@yourcompany.com</li>
											<li><i class="pe-7s-call strong"> </i> +1 908 967 5906</li>
										</ul>
										<p>Duis mollis blandit tempus porttitor curabiturDuis
											mollis blandit tempus porttitor curabitur , est non…</p>
									</div>
									<div class="clear">
										<ul class="dealer-contacts">
											<li><i class="pe-7s-map-marker strong"> </i> 9089 your
												adress her</li>
											<li><i class="pe-7s-mail strong"> </i>
												email@yourcompany.com</li>
											<li><i class="pe-7s-call strong"> </i> +1 908 967 5906</li>
										</ul>
										<p>Duis mollis blandit tempus porttitor curabiturDuis
											mollis blandit tempus porttitor curabitur , est non…</p>
									</div>

									<div class="dealer-section-space">
										<span>날짜선택</span>
									</div>
									<div class="clear">
										<input type="text" id="datePicker" class="form-control" style="margin-bottom: 200px;" />
									</div>

									<div class="dealer-section-space">
										<span>시간 선택</span>
									</div>
									<div class="clear" style="margin-bottom: 200px;">
										<select class="selectpicker" multiple >
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
									<div class="dealer-section-space">
										<span>인원 선택</span>
									</div>
									<div class="clear" style="margin-bottom: 100px;">
										<div class="input-group">
											<div class="input-group-btn">
												<button type="button" class="btn btn-default btn-number" data-type="minus" data-field="quantity">
													<div class="glyphicon glyphicon-minus"></div>
												</button>
											</div> 
											<div>
												<input type="text" id="quantity" name="quantity" class="form-control input-number" value="1" min="1" max="10">
											</div>
											<div class="input-group-btn">
												<button type="button" class="btn btn-default btn-number"
													data-type="plus" data-field="quantity">
													<div class="glyphicon glyphicon-plus"></div>
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div
							class="panel panel-default sidebar-menu wow fadeInRight animated animated"
							style="visibility: visible; animation-name: fadeInRight;">										
						</div>
						<div class="panel-body recent-property-widget">
							<button class="btn reserve-btn"  type="submit" onclick=" location.href='reservecheck' ">지금 예약</button>
						</div>
					</aside>
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
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
			crossorigin="anonymous"></script>
</body>
</html>