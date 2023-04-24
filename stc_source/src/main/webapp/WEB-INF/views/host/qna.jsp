<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/module/link.jsp" %>
<script src="https://code.jquery.com/jquery-3.6.3.js" ></script>
</head>
<body>
<%@ include file="/WEB-INF/views/module/header2.jsp" %>

<section>
	
        <!-- selectHostProductList -->

        <div class="slider-area" >
            <div class="slider-content">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
                        <div class="">
                            <form action="" class="form-inline">
                                <div class="form-group">                                   
                                    <select id="lunchBegins" class="form-control" title="내 공간 목록">
										<c:forEach items="${productList }" var="product"> 	
				                        	<option value="${product.proNum }" >${product.proName }</option>
										</c:forEach>
                                    </select>
		                        <script>
		                        	// controller에서 qna 읽은 proNum 값으로 selected 로 나타냄
		                        	var selectedProNum = '${selectedProNum}';
		                        	$("#lunchBegins").val(selectedProNum).prop("selected", true);
		                        	
		                        	// select -option 바뀌면 event
		                        	$("#lunchBegins").change(changeProNumHandler);
		                        	function changeProNumHandler(){
		                        		// 반드시 post 로 ajax로 동작시켜야 함. host1이 host2번의 qna를 볼수도 있으므로 
		                        		alert($(this).val());
		                        		location.href="${pageContext.request.contextPath}/host/qna?selectedProNum="+$(this).val();
		                        		//$.ajax({});
		                        		//displayQnaList();
		                        	}
		                        	function displayQnaList(){
		                        		
		                        	}
		                        </script>
                                </div>
                            </form>
                        </div>
                    </div>
                    
                </div>


                <!-- 테이블구역 -->
				<div class="container" style="color: black; margin-top: 40px;" >
					<table class="table table-striped" border="1px">
						<thead>
				    		<tr>
						        <th scope="col" class="text-center">아이디</th>
						        <th scope="col" class="text-center">Q&A 내용</th>
						        <th scope="col" class="text-center">답변관리</th>
				    		</tr>
						</thead>
						<tbody>
  
						<c:forEach items="${qnaList }" var="qna">    
						<tr>
				   			<td>${qna.memId}</td>
							<td>${qna.memQuestion}<button>삭제</button></td>
				   			<td>
						    <button>답변</button>
						    <button>수정</button>
						    <button>삭제</button></td>
						</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
			<!-- qna 페이징 -->
                                       
			<%-- <div class="col-md-12 clear"> 
				<div class="text-center">
    				<div class="pagination">
        				<ul class="pagination-sm">
        				<c:choose>
						<c:when test="${pageInfo.currentPage eq 1 }">
							<li><a class="disabled pe-7s-angle-left"></a></li>
						</c:when>
						<c:otherwise>
							<li><a class="pe-7s-angle-left" href="${pageContext.request.contextPath}/host/qna?proNum=${param.proNum }&page=${pageInfo.currentPage - 1 }"></a></li>
						</c:otherwise>
						</c:choose>
						<c:forEach begin="${pageInfo.startPage }" end="${pageInfo.endPage }" var="page">
							<li><a href="${pageContext.request.contextPath}/host/qna?proNum=${param.proNum }&page=${page }">${page }</a></li>
						</c:forEach>  
						<c:choose>
						<c:when test="${pageInfo.currentPage eq pageInfo.endPage}">
						<li><a class="disabled pe-7s-angle-right"></a></li>
						</c:when>
						<c:otherwise>
							<li><a class="pe-7s-angle-right" href="${pageContext.request.contextPath}/host/qna?proNum=${param.proNum }&page=${pageInfo.currentPage +1 }"></a></li>
						</c:otherwise> 
						</c:choose>                                 
            			</ul>
        			</div>
    			</div>                
			</div> --%>
					                    
        </div>
 
</div>


</section>
<%@ include file="/WEB-INF/views/module/footer.jsp" %>


</body>
</html>