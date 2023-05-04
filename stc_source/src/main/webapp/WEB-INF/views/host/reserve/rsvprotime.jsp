<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공간 시간 설정</title>
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
								<input type="text" class="form-control" id="proDate" name="proDate" placeholder="날짜선택" onfocus="(this.type='date')" onfocusout="(this.type='text')"/>
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
												<td>
												<input type="checkbox" data-protime="${i}" name="proTime" value="${i}" /> 
												&nbsp;&nbsp;&nbsp;${i < 10 ? '0' : ''}${i}:00 ~ ${i < 10 ? '0' : ''}${i}:00
												</td>
												<td>
												<select data-proprice="${i}" name="proPrice">
														<option value="" disabled selected>가격선택</option>
														<option value="1000">1000원</option>
														<option value="1500">1500원</option>
														<option value="2000">2000원</option>
														<option value="2500">2500원</option>
														<option value="3000">3000원</option>
												</select>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<div class= "form-group" style="padding: 50px;">
								<input type="button" class="btn btn-primary rsvProTime-btn" id="rsvProTime-btn" value="저장">
								</div>								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script>
	
	// 날짜 선택
	const dateInput = document.getElementById("proDate");
	let selectedDate;
	
	dateInput.addEventListener("change", function() {
	    selectedDate = this.value;
	    console.log("날짜:", selectedDate);
	});
	
	// 저장 버튼 클릭		
	$("#rsvProTime-btn").click(updateValues);
	 
	 
	 
	 function updateValues() {
		 // checkbox, select 선택된 값 배열에 담기
		 var selectedValues = [];
		 $("[name=proTime]:checked").each(function(){
			 var i = $(this).data("protime");
			 var time = $(this).val();
			 var price = 0;
			 $("[name=proPrice]").each(function(){
				 var j = $(this).data("proprice");
				 if(i==j){
					 price = $(this).val();
				 }
			 });
			 selectedValues.push({ time: time, price: price });
		 });
	    
	    console.log("시간,가격:", selectedValues);
		    
		// selectedDate문자와 selectedValues배열을 오브젝트 형식으로 담기
		const selectedData = {
				proNum: '${proNum}',
				proDate: selectedDate,
				values: selectedValues				
		};
		
		console.log("객체담긴 배열:", selectedData);
		

	 	// selectedData 직렬화
	 	var jsonData = JSON.stringify(selectedData);
	 	
	 	console.log(jsonData);
	 	
	   	$.ajax({
	   		url: '${pageContext.request.contextPath}/host/reserve/rsvprotime',
	   		type: 'post',
	   		//traditional: true,
	   		contentType: "application/json; charset=utf-8",
	   		data: jsonData,  
	   		
	   		//dataType: 'json',
	   		success: function(result) {
	   			console.log(result);
	   			alert("ajax보냄")
	   		},
	   		error: function(error) {
	   			alert(error.errorMsg);
	   		}
	   	 	, beforeSend : function(xhr){
             xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}"); 
			}
	   		
	   	}); 
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