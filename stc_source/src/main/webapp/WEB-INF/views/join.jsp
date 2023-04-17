<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>회원가입</title>
<%@ include file="/WEB-INF/views/module/link.jsp" %>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
</head>
<body>
<%@ include file="/WEB-INF/views/module/header.jsp" %> 

<!-- Start page header --> 
<section>
    <div class="count-area"> 
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
	    <h2 style="">회원가입</h2>               
            </div>
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
                        <form action="" method="post">                      
                            <div class="input-group" style="padding-left: 60px; padding-right: 60px; padding-top: 60px;">
                                <div>
                                <label for="id">가입 구분</label>
                                </div>                                
                            </div>
                            <div class="input-group" style="padding-left: 60px; padding-right: 60px; ">   
                                <input id="radio-1" type="radio" name="memberAutority" value="ROLE_USER" checked >
								<label for="radio-1" style="padding-left:10px; padding-right: 130px;">일반회원</label>                              
                                <input id="radio-2" type="radio" name="memberAutority" value="ROLE_HOST">
								<label for="radio-2" style="padding-left:10px;"> 호스트회원</label>                           
                            </div>
                            
                            
                            
                            
                            <div class="input-group" style="padding-left: 60px; padding-right: 60px; padding-top: 30px;">
                                <div>
                                <label for="id">아이디</label>
                                </div>                                
                            </div>
                            <div class="input-group" style="padding-left: 60px; padding-right: 60px;">   
                                <input type="text" class="form-control" id="userId" name="user_id" maxlength="15">
                                <span class="input-group-btn">
                                <button class="btn btn-default" onclick=idCheckFunction(); type="button" id="idDoubleChk">중복확인</button>
                                </span>                           
                            </div>
                            <div class="input-group" style="padding-left: 60px; padding-right: 60px;">
                            <span class="point successIdChk">이름은 2자 이상 8자 이하로 설정해주시기 바랍니다.</span>
  							    <input type="hidden" id="idDoubleChk"/>
  							</div>
  							    
                            <div class="form-group" style="padding-left: 60px; padding-right: 60px; padding-top: 30px;">
                                <label for="userpw">비밀번호</label>
                                <input type="password" class="form-control" id="userPw" name="user_pw">
                            </div>
                            <div class="form-group" style="padding-left: 60px; padding-right: 60px; padding-top: 30px;">
                                <label for="userpwchk">비밀번호 재확인</label>
                                <input type="password" class="form-control" id="userPwChk" name="user_pw_chk">
                                <span class="point successPwChk"></span>
								<input type="hidden" id="pwDoubleChk"/>
                            </div>                          
                            <div class="form-group" style="padding-left: 60px; padding-right: 60px; padding-top: 30px;">
                                <label for="name">이름</label>
                                <input type="text" class="form-control" id="name">
                            </div>
                            <div class="form-group" style="padding-left: 60px; padding-right: 60px; padding-top: 30px;">
                                <label for="phone">휴대전화(- 제외)</label>
                                <input type="tel" class="form-control" id="phone">
                            </div>           
                            <div class="input-group" style="padding-left: 60px; padding-right: 60px; padding-top: 30px;">
                                <div>
                                <label for="email">이메일</label>
                                </div>                                
                            </div>
                            <div class="input-group" style="padding-left: 60px; padding-right: 60px; margin-bottom: 15px;">   
                                <input type="text" class="form-control" id="email">
                                <span class="input-group-btn">
                                <button class="btn btn-default" onclick="emailCheckFunction();" type="button">메일발송</button>
                                </span>                           
                            </div>
                            <div class="form-group" style="padding-left: 60px; padding-right: 60px; padding-top: 30px;">
                                <label for="authCode">이메일 인증번호</label>
                                <input type="text" class="form-control" id="authCode">
                            </div>
                            
                           
                            
                            <div class="text-center" style="padding-top: 100px; padding-bottom: 60px; padding-left: 60px; padding-right: 60px;">
                                <input class="btn btn-primary" type="submit" value="가입하기"></input>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>   
    <!-- End register-area -->  
</section>    

<!-- Footer area-->
<%@ include file="/WEB-INF/views/module/footer.jsp" %>


<script type="text/javascript">
	$("#userPwChk").blur(function() {
		if($("#userPwChk").val() == $("#userPw").val()){
			$(".successPwChk").text("비밀번호가 일치합니다.");
			$(".successPwChk").css("color", "#88B04B");
			$("#pwDoubleChk").val("true");
		}else{
			$(".successPwChk").text("비밀번호가 일치하지 않습니다.");
			$(".successPwChk").css("color", "#FDC600");
			$("#pwDoubleChk").val("false");
		}
	});
		
</script>

</body>
</html>