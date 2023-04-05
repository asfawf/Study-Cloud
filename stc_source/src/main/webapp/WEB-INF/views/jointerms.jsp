<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>이용약관</title>
<%@ include file="/WEB-INF/views/module/link.jsp" %>
</head>
<body>
<%@ include file="/WEB-INF/views/module/header.jsp" %> 

   <!-- Start page header --> 
    <div class="page-head"> 
        <div class="container">
            <div class="row">
            </div>
        </div>
    </div>
    <!-- End page header -->


    <!-- register-area -->
    <div class="register-area">
        <div class="container">

            <div class="col-md-8 col-md-offset-2">
                <div class="box-for overflow">
                    <div class="col-md-12 col-xs-12 register-blocks">
                        <h2>이용약관</h2> 
                        <form action="" method="post">
                            <div class="form-group">
                                <label>이용약관 동의</label>
                                <input type="text" class="form-control" id="id">
                            </div>
                            <div class="form-group">
                                <label>개인정보 수집 및 이용 동의</label>
                                <input type="text" class="form-control" id="password">
                            </div>
                            <div class="form-group">
                                <label>위치기반 서비스 이용약관 동의</label>
                                <input type="password" class="form-control" id="password">
                            </div>                          
                            
                            <div class="text-center">
                                <button type="button" class="btn btn-default" onclick="location.href='join' ">일반회원 가입</button>
                                <button type="button" class="btn btn-default">호스트 가입</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>   
    <!-- End register-area -->  
    
    <!-- Start page header --> 
    <div class="page-bottom"> 
        <div class="container">
            <div class="row">
            </div>
        </div>
    </div>
    <!-- End page header -->
 
    
     

      <!-- Footer area-->
   	<%@ include file="/WEB-INF/views/module/footer.jsp" %>

</body>
</html>