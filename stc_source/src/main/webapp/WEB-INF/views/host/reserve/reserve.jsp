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
				<div
					class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
					<form action="" class=" form-inline" style="text-align: center;">
						<div class="form-group">
							<select id="selectreseved" class="form-control"
								data-live-search="true" data-live-search-style="begins"
								title="내 공간 목록">
	
								<option>토즈 강남센터</option>
								<option>Paris</option>
								<option>Casablanca</option>
								<option>Tokyo</option>
								<option>Marraekch</option>
								<option>kyoto , shibua</option>
							</select>
						</div>
	
						<button class="btn search-btn" type="">
							<i class="fa fa-search"></i>
						</button>
	
					</form>
				</div>
			</div>	
		</div>


<!-- 테이블구역 -->
	<div class="container" style="color: black; margin-top: 40px;">
		<table class="table table-striped" border="1px">
			<thead>
				<tr>
					<th>이용시간</th>
					<th>이름</th>
					<th>전화번호</th>
					<th>가격</th>
					<th>인원</th>
					<th>상태</th>
					<th>관리</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>12:00 ~ 17:00</td>
					<td>홍길동</td>
					<td>010-1234-5678</td>
					<td>50,000</td>
					<td>5명</td>
					<td>결제완료</td>
					<td><button>삭제</button></td>
				</tr>
				<tr>
					<td>12:00 ~ 17:00</td>
					<td>홍길동</td>
					<td>010-1234-5678</td>
					<td>50,000</td>
					<td>5명</td>
					<td>결제완료</td>
					<td><button>삭제</button></td>
				</tr>
				<tr>
					<td>12:00 ~ 17:00</td>
					<td>홍길동</td>
					<td>010-1234-5678</td>
					<td>50,000</td>
					<td>5명</td>
					<td>결제완료</td>
					<td><button>삭제</button></td>
				</tr>
				<tr>
					<td>12:00 ~ 17:00</td>
					<td>홍길동</td>
					<td>010-1234-5678</td>
					<td>50,000</td>
					<td>5명</td>
					<td>결제완료</td>
					<td><button>삭제</button></td>
				</tr>
				<tr>
					<td>12:00 ~ 17:00</td>
					<td>홍길동</td>
					<td>010-1234-5678</td>
					<td>50,000</td>
					<td>5명</td>
					<td>결제완료</td>
					<td><button>삭제</button></td>
				</tr>
				<tr>
					<td>12:00 ~ 17:00</td>
					<td>홍길동</td>
					<td>010-1234-5678</td>
					<td>50,000</td>
					<td>5명</td>
					<td>결제완료</td>
					<td><button>삭제</button></td>
				</tr>
				<tr>
					<td>12:00 ~ 17:00</td>
					<td>홍길동</td>
					<td>010-1234-5678</td>
					<td>50,000</td>
					<td>5명</td>
					<td>결제완료</td>
					<td><button>삭제</button></td>
				</tr>
				<tr>
					<td>12:00 ~ 17:00</td>
					<td>홍길동</td>
					<td>010-1234-5678</td>
					<td>50,000</td>
					<td>5명</td>
					<td>결제완료</td>
					<td><button>삭제</button></td>
				</tr>
				<tr>
					<td>12:00 ~ 17:00</td>
					<td>홍길동</td>
					<td>010-1234-5678</td>
					<td>50,000</td>
					<td>5명</td>
					<td>결제완료</td>
					<td><button>삭제</button></td>
				</tr>
				<tr>
					<td>12:00 ~ 17:00</td>
					<td>홍길동</td>
					<td>010-1234-5678</td>
					<td>50,000</td>
					<td>5명</td>
					<td>결제완료</td>
					<td><button>삭제</button></td>
				</tr>
			</tbody>
		</table>
	</div>

	</div>

		<!-- 페이징  -->
	<div class="col-md-12 clear">
		<div class="text-center">
			<div class="pagination">
				<ul>
					<li><a href="#">Prev</a></li>
					<c:forEach begin="${pageInfo.startPage }"
						end="${pageInfo.endPage }" var="page">
						<li><a href="#">${page }</a></li>
					</c:forEach>
					<li><a href="#">Next</a></li>
				</ul>
			</div>
		</div>
	</div>


</section>
<%@ include file="/WEB-INF/views/module/footer.jsp" %>


</body>
</html>