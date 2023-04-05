<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>회원가입</title>
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
                        <h2>회원가입</h2> 
                        <form action="" method="post">
                            <div class="form-group">
                                <label for="id">아이디</label>
                                <input type="text" class="form-control" id="id">
                            </div>
                            <div class="form-group">
                                <label for="password">비밀번호</label>
                                <input type="password" class="form-control" id="password">
                            </div>
                            <div class="form-group">
                                <label for="password">비밀번호 재확인</label>
                                <input type="password" class="form-control" id="password">
                            </div>                          
                            <div class="form-group">
                                <label for="name">이름</label>
                                <input type="text" class="form-control" id="name">
                            </div>
                            <div class="form-group">
                                <label for="phone">휴대전화(- 제외)</label>
                                <input type="tel" class="form-control" id="phone">
                            </div>           
                            <div class="form-group">
                                <label for="email">이메일</label>
                                <input type="email" class="form-control" id="email">
                            </div>
                            <div class="form-group">
                                <label for="authCode">이메일 인증번호</label>
                                <input type="text" class="form-control" id="authCode">
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-default">가입하기</button>
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