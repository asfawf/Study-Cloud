<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 확인</title>
<%@ include file="/WEB-INF/views/module/link.jsp" %>
<script src="https://code.jquery.com/jquery-3.6.3.js" ></script>
</head>
<body>
<!-- Header area-->
<%@ include file="/WEB-INF/views/module/header.jsp" %> 

<!-- Start page header --> 
<section>
    <div class="count-area"> 
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title" style="padding: 60px;">
				<h3>예약을 확인합니다.<br> 
					<small>예약 상세 정보를 확인하세요.</small>
				</h3>
			</div>
        </div>
    </div>
</div>
<!-- End page header -->



 <!-- start contents-area -->
        <div class="content-area user-profiel">
            <div class="container">   
                <div class="row">
                    <div class="col-sm-10 col-sm-offset-1 profiel-container">
						<div class="profiel-header" >
						    <h3> 강남역 스터디카페 헬로강남 <br>
						    </h3>						    
						</div>
						<div class="container">
						    <div class="reservation-info">
						        <div class="group-left">
						            <div class="info-item">
						                <div class="label">예약 번호</div>
						                <div class="value">4897</div>
						            </div>
						            <div class="info-item">
						                <div class="label">예약 날짜</div>
						                <div class="value">2023년 05월 01일</div>
						            </div>
						            <div class="info-item">
						                <div class="label">이용 시간</div>
						                <div class="value">9:00 ~ 12:00 (3시간)</div>
						            </div>
						        </div>
						        <div class="group-right">
						            <div class="info-item">
						                <div class="label">예약 인원</div>
						                <div class="value">3명</div>
						            </div>
						            <div class="info-item">
						                <div class="label">공간 전화번호</div>
						                <div class="value">453-5634</div>
						            </div>
						            <div class="info-item">
						                <div class="label">가격</div>
						                <div class="value">15,000원</div>
						            </div>
						        </div>
						    </div>
						</div>
							<span> 
							<button class="btn btn-primary" >결제하기</button>							                                                         
                            </span>               
 	               </div>
            </div>

        </div>
    </div>
<!-- End contents-area -->


<style>
	.profiel-container .profiel-header h3 {
    font-weight: 200;
    text-align: center;
    padding-top: 50px;
}

	 .group-left {
        float: left;
        width: 50%;
        padding-top: 100px;
        padding-left: 220px;
        padding-bottom: 10px;
    }
    
    .group-right {
        float: right;
        width: 50%;
        padding-top:100px;
        padding-bottom: 10px;
    }
    
    .info-item{
    	margin: 30px;
    }
    
    button.btn-primary {
    display: block;
    margin: 100px auto;
    width: 50%;
    height: 55px;
}

    
</style>


          
</section>
<%@ include file="/WEB-INF/views/module/footer.jsp" %>
</body>
</html>