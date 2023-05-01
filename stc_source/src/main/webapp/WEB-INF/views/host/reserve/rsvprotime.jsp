<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호스트예약관리</title>
<%@ include file="/WEB-INF/views/module/link.jsp" %>
</head>


<body>
<%@ include file="/WEB-INF/views/module/header2.jsp" %>

<!-- Start page header --> 
<section>
    <div class="count-area"> 
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
	    <h2 style=""></h2>               
            </div>
        </div>
    </div>
</div>
<!-- End page header -->


<!-- Body content -->	
	<div class="content-area">
		<div class="reserved-content">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
					<form action="" class=" form-inline" style="text-align: center;">
							<c:forEach var="i" begin="0" end="23">
  <div class="form-check">
    <input class="form-check-input" type="checkbox" id="time${i}" name="rsvTime" value="${i < 10 ? '0' : ''}${i}:00~${i+1 < 10 ? '0' : ''}${i+1}:00">
    <label class="form-check-label" for="time${i}">
      ${i < 10 ? '0' : ''}${i}:00 ~ ${i+1 < 10 ? '0' : ''}${i+1}:00
    </label>
  </div>
</c:forEach>
						</form>
				</div>
			</div>	
		</div>



	

		


</section>
<%@ include file="/WEB-INF/views/module/footer.jsp" %>


</body>
</html>