<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
		<aside class="sidebar sidebar-property blog-asside-right" 
		style="border-top:1px solid #d3d3d3; border-left:1px solid #d3d3d3; border-right:1px solid #d3d3d3;">
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
					<input type="hidden" name="rsvDate" id="rsvDate">
				</div>
			</div>
			<div class="panel panel-default sidebar-menu">
				<div class="panel-heading" style="padding-bottom: 15px;">
					<h3 class="panel-title">
						<b>시간선택</b>
					</h3>
				</div>
				<div class="panel panel-default sidebar-menu">
					<select class="selectpicker form-control" multiple data-size="10"
						title="시간선택" id="rsvTime" name="rsvTime">
						<optgroup label="오전">
							<c:forEach var="i" begin="1" end="12">
								<option value="${i}">${i < 10 ? '0' : ''}${i}:00~ ${i+1 < 10 ? '0' : ''}${i+1}:00</option>
							</c:forEach>
							<option value="11">11:00 ~ 12:00</option>
						</optgroup>
						<optgroup label="오후">
							<c:forEach var="i" begin="0" end="10">
								<option value="${i + 12}">${i + 12}:00~${i + 13}:00</option>
							</c:forEach>
							<option value="23">23:00~24:00</option>
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
							<button type="button" class="btn btn-default btn-number" data-type="minus" data-field="rsvPerson">
								<span class="glyphicon glyphicon-minus"></span>
							</button>
								</span> 
								<input type="text" id="rsvPerson" name="rsvPerson" class="form-control input-number text-center" value="1" min="1" max="10"> <span class="input-group-btn">
							<button type="button" class="btn btn-default btn-number" data-type="plus" data-field="rsvPerson">
								<span class="glyphicon glyphicon-plus"></span>
							</button>
						</span>
					</div>
				</div>
			</div>			
		</aside>
		<aside class="sidebar sidebar-property blog-asside-right"
			style="padding-bottom: 0px; padding-right: 0px; padding-left: 0px; ">
			<button id=rsv-Btn class="btn btn-primary" style="width: 100%; height: 55px;">예약하기</button>
		</aside>
	</div>
<!-- stop contents -->				


<!-- start script -->	
	<script>
		//datepicker
		var selectedDate;
		$('#datepicker').datepicker({
			  uiLibrary: 'bootstrap',
			  format: "yyyy-mm-dd",
			  language: "kr",
			  todayHighlight: true,
			  startDate: new Date(),
			  endDate: new Date(new Date().setMonth(new Date().getMonth() + 3))
			}).on('changeDate', function(e) {
				selectedDate = e.format();
				console.log(e.format());
			});
		
		
		//시간선택
		$(document).ready(function() {
			  var selectedValues = []; // 초기화
			
			  $('.selectpicker').on('changed.bs.select', function(e, clickedIndex, isSelected, previousValue) {
			    selectedValues = $(this).val();
			    console.log(selectedValues);
			  });
			
			  $("select[name=rstTime]").change(function() {
			    selectedValues = []; // 초기화
			    $("select[name=rstTime] option:selected").each(function() {
			      selectedValues.push($(this).val());
			    });
			    console.log(selectedValues);
			  });
			});
		// AJAX를 사용하여 선택된 값을 서버로 전송하고 저장
		/* $.ajax({
		    url: "save_reservation_time.php",  
		    method: "POST",
		    data: {timeValues: selectedValues},  // 선택된 값들을 배열 형태로 전송
		    success: function(response) {
		        console.log("선택된 시간이 저장되었습니다.");
		        console.log("서버 응답:", response);
		    },
		    error: function(xhr, status, error) {
		        console.error("시간 저장에 실패했습니다.");
		        console.error("서버 응답:", xhr.responseText);
		    }
		}); */
		
		
	
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
	<!-- stop script -->
	
	
	<style>
	.panel.sidebar-menu {    
    margin: 0 0 60px;
    }
	</style>
</body>
