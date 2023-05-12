<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 관리</title>
<%@ include file="/WEB-INF/views/module/link.jsp" %>
<script src="https://code.jquery.com/jquery-3.6.3.js" ></script>
</head>
<body>
<%@ include file="/WEB-INF/views/module/header2.jsp" %>

<section>
	
        <!-- selectedProNum -->

        <div class="slider-area" >
            <div class="slider-content">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
                        <div class="">
                            <form action="" class="form-inline">
                                <div class="form-group">                                   
                                    <select name="selectedProNum" id="selectedProNum" class="form-control" title="내 공간 목록">
										<%-- <c:forEach items="${hostQna.productList }" var="product">  --%>	
				                        	<%-- <option value="${product.proNum }" >${product.proName }</option> --%>
										<%-- </c:forEach> --%>
										<option>상품 장소</option>
                                    </select>
                                </div>
                            </form>
                        </div>
                    </div>                    
                </div>


                <!-- 테이블구역 -->
 				<div class="container" style="color: black; margin-top: 40px;" >
					<table class="table table-striped">
						<thead>
				    		<tr>
						        <th colspan="1" class="text-center">아이디</th>
						        <th colspan="4" class="text-center">리뷰내용</th>
						        <th colspan="1" class="text-center">관리</th>
				    		</tr>
						</thead>
						<tbody id="rList">
						<!-- 임시용 -->
						<tr>
				            <td colspan="1">헬로강남</td>
				            <td colspan="4">서울시 강남구 강남대로 12-24</td>
				            <td colspan="1"><button>수정</button><button>삭제</button></td>
				        </tr>
				        <tr>
				            <td colspan="1">헬로성수</td>
				            <td colspan="4">서울시 마포수 와우산로 12-24</td>
				            <td colspan="1"><button>수정</button><button>삭제</button></td>
				        </tr>
				        <tr>
				            <td colspan="1">헬로홍대</td>
				            <td colspan="4">동작구 대방로 12-24</td>
				            <td colspan="1"><button>수정</button><button>삭제</button></td>
				        </tr>
				        <tr>
				            <td colspan="1">헬로동작</td>
				            <td colspan="4">동작구 대방로 12-24</td>
				            <td colspan="1"><button>수정</button><button>삭제</button></td>
				        </tr>
				        <tr>
				            <td colspan="1"></td>
				            <td colspan="4"></td>
				            <td colspan="1"></td>				
				        </tr>
				        <tr>
				            <td colspan="1"></td>
				            <td colspan="4"></td>
				            <td colspan="1"></td>				
				        </tr>
				        <tr>
				            <td colspan="1"></td>
				            <td colspan="4"></td>
				            <td colspan="1"></td>
				        </tr>
						<!--  -->
						</tbody>
					</table>
				</div>
        
    </tbody>
    </table>
            </div>

        </div>
 
</div>

</section>
<%@ include file="/WEB-INF/views/module/footer.jsp" %>
</body>
</html>