<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- start link  -->
<%@ include file="/WEB-INF/views/module/link.jsp" %>
<script src="https://code.jquery.com/jquery-3.6.3.js" ></script>
<!-- datepicker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js" integrity="sha512-ygaYzcKBzf1YptDaS/7b9P2pY2LW0YCXp22l+IZYHwOjB2opJDrniEMarJ1HsckAdKirYqE9JMpKfSm6NHUcdg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/locales/bootstrap-datepicker.kr.min.js" integrity="sha512-4UPr4O3wb78N3c62jRE7Lv8LNJMSriVUvBa4fSGWAb25diqje3Yp4Uq1cK2pOwZ0F2s8R4RmWJYZhI75HJqOxQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css" integrity="sha512-yfvyUfCYfBN4Y16Nj3yxfTlgfOR07CpU7S4iOyIAniXmXrpxIppjaCHRZdZnVH+gn6bzyZTj5vVvMO/hqtbfxA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- selectpicker -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.18/dist/css/bootstrap-select.min.css">
<!-- stop link  -->

<!-- start contents -->
<body>
	<div class="col-md-4 p0">
		<aside class="sidebar sidebar-property blog-asside-right" style="border: 1px solid #d3d3d3">
			<div class="panel panel-default sidebar-menu" style="padding-top: 20px;">
				<div class="panel-heading">
					<h3 class="panel-title">
						<b>예약하기</b>
					</h3>
				</div>
				<div class="panel-body recent-property-widget">
					<img src="https://images.unsplash.com/photo-1616400619175-5beda3a17896?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80">
					<p class="side-info" style="padding-top: 20px; padding-bottom: 20px;">강남역 도보 5분, 당신을 위한 프라이빗 룸.</p>
					<div class="clear">
						<ul class="dealer-contacts">
							<li><i class="pe-7s-map-marker strong"> </i> 서울 서초구 서초동 1308-16 1009호</li>
							<li><i class="pe-7s-mail strong"> </i> email@yourcompany.com</li>
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
					<div class="datepicker" id="datepicker"></div>
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
							<button type="button" class="btn btn-default btn-number" data-type="minus" data-field="quantity">
								<span class="glyphicon glyphicon-minus"></span>
							</button>
						</span> <input type="text" id="quantity" name="quantity" class="form-control input-number text-center" value="1" min="1" max="10"> <span class="input-group-btn">
							<button type="button" class="btn btn-default btn-number" data-type="plus" data-field="quantity">
								<span class="glyphicon glyphicon-plus"></span>
							</button>
						</span>
					</div>
				</div>
			</div>
		</aside>
	</div>
<!-- stop contents -->				


<!-- start script -->	
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
</body>
<!-- stop script -->
