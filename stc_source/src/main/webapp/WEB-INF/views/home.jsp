<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Study Cloud</title>
<%@ include file="/WEB-INF/views/module/link.jsp" %>
<script src="https://code.jquery.com/jquery-3.6.3.js" ></script>
<script src="https://unpkg.com/gijgo@1.9.14/js/gijgo.min.js" type="text/javascript"></script>
<link href="https://unpkg.com/gijgo@1.9.14/css/gijgo.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%@ include file="/WEB-INF/views/module/header.jsp" %>
<c:set var="add">
	종로구,중구,용산구,성동구,광진구,동대문구,중랑구,성북구,강북구,도봉구,노원구,은평구,서대문구,마포구,양천구,강서구,구로구,금천구,영등포구,동작구,관악구,서초구,강남구,송파구,강동구
</c:set>
<section>
        <div class="slider-area">
            <div class="slider">
                <div id="bg-slider" class="owl-carousel owl-theme">

                    <div class="item"><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/slide1/slider-image-1.jpg" alt="GTA V"></div>
                    <div class="item"><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/slide1/slider-image-2.jpg" alt="The Last of us"></div>
                    <div class="item"><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/slide1/slider-image-1.jpg" alt="GTA V"></div>

                </div>
            </div>
            <div class="slider-content">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
                        <h2><!-- Study Cloud --></h2>
                        <p><!-- Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi deserunt deleniti, ullam commodi sit ipsam laboriosam velit adipisci quibusdam aliquam teneturo! --></p>
                        <div class="search-form pulse">
                            <form action="${pageContext.request.contextPath}/product" class="form-inline">                                
                                <div class="form-group">                                     
                                    <select id="basic" name="proAddress" class="selectpicker show-tick form-control" data-live-search="true" data-live-search-style="begins" title="지역">
                                        <c:forEach var="v" items="${add }">
											<option value="${v }">${v }</option>
										</c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">                                   
                                    <select id="lunchBegins" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="인원">
										<c:forEach var="i" begin="0" end="20" step="5">
									   		<option>${i }</option>
										</c:forEach>                                        
                                    </select>
                                </div>
                                <input id="datepicker" width="270" />
                                <button class="btn search-btn" type="button" onclick=" submit(); ">검색</button>
                                <button class="btn search-btn" type="button" onclick=" location.href='product/map' ">지도</button>
							</form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<script>
	$('#datepicker').datepicker({
	    uiLibrary: 'bootstrap'
	});
</script>        
</section>
<%@ include file="/WEB-INF/views/module/footer.jsp" %>
<script type="text/javascript">
$('.chat').click(function() {	
	alert('로그인을 해주세요');
	location.replace('<%=request.getContextPath() %>/login');
	return false;			
});
</script>
</body>
</html>