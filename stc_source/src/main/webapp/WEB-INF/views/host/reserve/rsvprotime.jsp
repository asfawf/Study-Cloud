<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호스트예약관리</title>
<script src="https://code.jquery.com/jquery-3.6.3.js" ></script>
<%@ include file="/WEB-INF/views/module/link.jsp" %>
</head>
<body>
<%@ include file="/WEB-INF/views/module/header2.jsp" %>
<!-- Start page header -->
	<section>
		<div class="count-area">
			<div class="container">
				<div class="row">
					<div
						class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
						<h2 style=""></h2>
					</div>
				</div>
			</div>
		</div>
		<!-- End page header -->
		<!-- Body content -->
		<div class="content-area single-property">
			&nbsp;
			<div class="container">

				<div class="clearfix padding-top-40">
					<div class="col-md-12 single-property-content ">
						<div class="row">


							<div class="form-group" style="padding: 50px;">
								<input type="text" class="form-control" id="dateInput"
									name="proUseTime" placeholder="날짜" onfocus="(this.type='date')"
									onfocusout="(this.type='text')" />
							</div>
							<div class="form-group">							
								<table>
									<thead>
										<tr>
											<th>시간</th>
											<th>가격</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="i" begin="0" end="23">
											<tr>
												<td><input type="checkbox" id="timechk${i}"
													name="timechk" value="${i-12}" /> &nbsp;&nbsp;&nbsp;${i < 10 ? '0' : ''}${i}:00
													~ ${i < 10 ? '0' : ''}${i}:00</td>
												<td><select id="priceselect${i}" name="priceselect"
													onchange="updateValues(${i})">
														<option value="" disabled selected>가격선택</option>
														<option value="1000">1000원</option>
														<option value="1500">1500원</option>
														<option value="2000">2000원</option>
														<option value="2500">2500원</option>
														<option value="3000">3000원</option>
												</select></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<div class= "form-group" style="padding: 50px;">
								<input type="submit" class="btn btn-primary rsvProTime-btn" id="rsvProTime-btn" name="rsvProTime-btn" value="저장">
								</div>								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


	</section>

	<script>
	
	
	//날짜 선택
	const dateInput = document.getElementById("dateInput");
    let selectedDate;

    dateInput.addEventListener("change", function() {
        selectedDate = this.value;
        console.log("날짜:", selectedDate);
    });
	
	
	
	//chekcbox,select선택된 값 배열에 담기
	var selectedValues = [];
	
	function updateValues(time) {
	  // checkbox 선택 여부 확인
	  var checkbox = document.getElementById('timechk' + time);
	  var isChecked = checkbox.checked;
	
	  
	  var selectBox = document.getElementById('priceselect' + time);
	  var selectedOption = selectBox.options[selectBox.selectedIndex];
	  var selectedValue = selectedOption.value;
	
	  // 선택된 값이 있다면 배열에 저장
	  if (isChecked && selectedValue) {
	    selectedValues.push({ time: time, price: selectedValue });
	  } else {
	    // 선택된 값이 없다면 배열에서 제거
	    for (var i = 0; i < selectedValues.length; i++) {
	      if (selectedValues[i].time === time) {
	        selectedValues.splice(i, 1);
	        break;
	      }
	    }
	  }
	
	  console.log("시간,가격:", selectedValues);
	} 
	
	  
	</script>




<%@ include file="/WEB-INF/views/module/footer.jsp" %>
<style>
td {
    padding-right: 20px;
    padding-bottom: 10px;
  }
  table {
    margin: 0 auto;
  }
</style>
</body>
</html>