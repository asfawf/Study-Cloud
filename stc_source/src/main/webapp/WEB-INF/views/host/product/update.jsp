<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공간 수정 페이지</title>
<%@ include file="/WEB-INF/views/module/link.jsp" %>
</head>
<body>
<section>
  <%@ include file="/WEB-INF/views/module/header2.jsp" %>

        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        <!-- Body content -->
        

        <div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title"><span class="orange strong">공간수정 page</span></h1>               
                    </div>
                </div>
            </div>
        </div>
        <!-- End page header --> 

        <!-- property area -->
        <div class="content-area user-profiel" style="background-color: #FCFCFC;">&nbsp;
            <div class="container">   
                <div class="row">
                    <div class="col-sm-10 col-sm-offset-1 profiel-container">
                        <form action="update" method="post" enctype="multipart/form-data">
                            <div class="profiel-header">
                                <h3>
                                    <b>수정</b><br>
                                </h3>
                                <hr>
                            </div>
                            <div class="clear">
                                <div class="col-sm-10 col-sm-offset-1">
                                    <div class="form-group">
                                        <label>공간이름</label>
                                        <input name="proName" type="text" class="form-control" value="${productDetail.proName }">
                                    </div>
                                    <div class="form-group">
                                        <label>상품소개 :</label>
                                        <input name="proPost" type="text" class="form-control" value="${productDetail.proPost }">
                                    </div> 
                                    <div class="form-group">
                                        <label>시설안내 :</label>
                                        <input name="proInfo" type="text" class="form-control" value="${productDetail.proInfo }">
                                    </div> 
                                    <div class="form-group">
                                        <label>유의사항 :</label>
                                        <input name="proNotice"type="text" class="form-control" value="${productDetail.proNotice }">
                                    </div> 
                                    <div class="form-group">
                                        <label>환불정책 :</label>
                                        <input name="proRefund" type="text" class="form-control" value="${productDetail.proRefund }">
                                    </div> 
                                    <div class="form-group">
                                        <label>주소 : </label>
                                        <input name="proAddress" type="text" class="form-control" value="${productDetail.proAddress }">
                                    </div> 
                                    <div class="form-group">
                                        <label>전화번호 :</label>
                                        <input name="proPhone" type="text" class="form-control" value="${productDetail.proPhone }">
                                    </div> 
                                    <div class="form-group">
                                        <label>이미지 :</label>
                                        <input name="uploadfile" type="file" class="form-control" >
                                        <input type="hidden" name="proPicOriginalOld" value="${productDetail.proPicOriginal }">
                                        <input type="hidden" name="proPicRenameOld" value="${productDetail.proPicRename }">
                                    	<img alt="" src="../{productDetail.proPicRename }">
                                    </div>
                                </div>
                                <div class="col-sm-10 col-sm-offset-1">
                                   <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                                   <input type="hidden" name="proNum" value="${productDetail.proNum }">
                                   <button type="submit">수정</button>
                                   
                                   <button type="submit" name="delete">삭제하기</button>
                                </div>
                            </div>
                         </form>
                    </div>
                </div><!-- end row -->
             </div>
        </div>

  
        

        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/modernizr-2.6.2.min.js"></script>

        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/jquery-1.10.2.min.js"></script> 
        <script src="<%=request.getContextPath() %>/resources/sneat/bootstrap/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/bootstrap-select.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/bootstrap-hover-dropdown.js"></script>

        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/easypiechart.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/jquery.easypiechart.min.js"></script>

        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/owl.carousel.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/wow.js"></script>

        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/icheck.min.js"></script>
        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/price-range.js"></script>

        <script src="<%=request.getContextPath() %>/resources/sneat/assets/js/main.js"></script>
        
        <script>
    $(function(){
        var responseMessage = "<c:out value="${message}" />";
        if(responseMessage != ""){
            alert(responseMessage)
        }
    }) 
</script>
        
</section>
<%@ include file="/WEB-INF/views/module/footer.jsp" %>
</body>
</html>