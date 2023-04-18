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
                        <form action="join" method="post">                      
                            <div class="input-group" style="padding-left: 60px; padding-right: 60px; padding-top: 60px;">
                                <div>
                                <label for="id">가입 구분</label>
                                </div>                                
                            </div>
                            <div class="input-group" style="padding-left: 60px; padding-right: 60px; ">   
                                <input id="radio-1" type="radio" name="memAuthority" value="ROLE_USER" checked >
								<label for="radio-1" style="padding-left:10px; padding-right: 130px;">일반회원</label>                              
                                <input id="radio-2" type="radio" name="memAuthority" value="ROLE_HOST">
								<label for="radio-2" style="padding-left:10px;"> 호스트회원</label>                           
                            </div>
                            
                            
                            
                            
                            <div class="input-group" style="padding-left: 60px; padding-right: 60px; padding-top: 30px;">
                                <div>
                                <label for="memId">아이디</label>
                                </div>                                
                            </div>
                            <div class="input-group" style="padding-left: 60px; padding-right: 60px;">   
                                <input type="text" class="form-control" id="memId" name="memId" maxlength="15">
                                <span class="input-group-btn">
                                <button class="btn btn-default"  type="button" id="memIdChk">중복확인</button>
                                </span>                           
                            </div>
                            <div class="input-group" style="padding-left: 60px; padding-right: 60px;">             
  							    <span class="point successId"></span>
  							    <input type="hidden" id="idChk"/>
  							</div>
  							    
                            <div class="form-group" style="padding-left: 60px; padding-right: 60px; padding-top: 30px;">
                                <label for="memPasswd">비밀번호</label>
                                <input type="password" class="form-control" id="memPasswd" name="memPasswd">
                                <span class="point successPw"></span>
								<input type="hidden" id="pwChk"/>
                            </div>
                            <div class="form-group" style="padding-left: 60px; padding-right: 60px; padding-top: 30px;">
                                <label for="memPwChk">비밀번호 재확인</label>
                                <input type="password" class="form-control" id="memPwChk">
                                <span class="point successPwChk"></span>
								<input type="hidden" id="pwDoubleChk"/>
                            </div>                          
                            <div class="form-group" style="padding-left: 60px; padding-right: 60px; padding-top: 30px;">
                                <label for="name">이름</label>
                                <input type="text" class="form-control" id="memName" name="memName">
                                <span class="point successName"></span>
  							    <input type="hidden" id="nameChk"/>
                            </div>                            
                            <div class="form-group" style="padding-left: 60px; padding-right: 60px; padding-top: 30px;">
                                <label for="phone">휴대전화(- 제외)</label>
                                <input type="tel" class="form-control" id="memPhone" name="memPhone" maxlength="11">
                                <span class="point successPhone"></span>
  							    <input type="hidden" id="poneChk"/>
                            </div>                                       
                            <div class="input-group" style="padding-left: 60px; padding-right: 60px; padding-top: 30px;">
                                <div>
                                <label for="mememail">이메일</label>
                            	</div>                                
                            </div>
                            <div class="input-group" style="padding-left: 60px; padding-right: 60px;">   
                                <input type="email" class="form-control" id="memEmail" name="memEmail">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">메일발송</button>
                                </span>
                            </div>                                                           
                            <div class="input-group" style="padding-left: 60px; padding-right: 60px;">             
  							    <span class="point successEmail"></span>
  							    <input type="hidden" id="emailChk"/>
  							</div> 
  							<div class="form-group" style="padding-left: 60px; padding-right: 60px; padding-top: 30px;">
                                <label for="authCode">이메일 인증번호</label>
                                <input type="text" class="form-control" id="emailAuthCode" name="emailAuthCode">
                                <span class="point successEmailAuthCode"></span>
  							    <input type="hidden" id="emailAuthCodeChk"/>
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
//아이디 유효성
$("#memId").blur(function(){
	if($("#memId").val() == "") {
		$(".successId").text("필수 정보입니다.");
		$(".successId").css("color", "#DB0000");
		$("#idChk").val("false");
	} else if($("#memId").val().length < 5 || $("#memId").val().length > 15){
		$(".successId").text("아이디는 5~15자로 설정해 주시기 바랍니다.");
		$(".successId").css("color", "#DB0000");
		$("#idChk").val("false");
	} else {
		$.ajax({
			url : '${pageContext.request.contextPath}/idCheck?memId='+ memId,
			type : 'post',
			cache : false,
			success : function(data) {
				if (data == 0) {
					$(".successId").text("사용 가능한 아이디입니다.");
					$(".successId").css("color", "#88B04B");
					$("#idChk").val("true");
				} else {
					$(".successId").text("사용 중인 아이디입니다.");
					$(".successId").css("color", "#DB0000");
					$("#idChk").val("false");
				}
			}, error : function() {
				console.log("실패");
			}
		});
	}
});

//비밀번호 유효성
$("#memPasswd").blur(function(){
	if($("#memPasswd").val() == "") {
		$(".successPw").text("필수 정보입니다.");
		$(".successPw").css("color", "#DB0000");
		$("#pwChk").val("false");
	}
});

//비밀번호 재확인 유효성
	$("#memPwChk").blur(function() {
	if($("#memPwChk").val() == "") {
		$(".successPwChk").text("필수 정보입니다.");
		$(".successPwChk").css("color", "#DB0000");
		$("#pwDoubleChk").val("false");
	} else if($("#memPwChk").val() == $("#memPasswd").val()){
		$(".successPwChk").text("비밀번호가 일치합니다.");
		$(".successPwChk").css("color", "#88B04B");
		$("#pwDoubleChk").val("true");
	}else{
		$(".successPwChk").text("비밀번호가 일치하지 않습니다.");
		$(".successPwChk").css("color", "#DB0000");
		$("#pwDoubleChk").val("false");
	}
});

	
//이름 유효성
	$("#memName").blur(function(){
			if($("#memName").val() == "") {
				$(".successName").text("필수 정보입니다.");
				$(".successName").css("color", "#DB0000");
				$("#nameChk").val("false");
			}
		});
		
//휴대전화 유효성 
	$("#memPhone").blur(function(){
			if($("#memPhone").val() == "") {
				$(".successPhone").text("필수 정보입니다.");
				$(".successPhone").css("color", "#DB0000");
				$("#phoneChk").val("false");
			} else if($("#memPhone").val().length != 11){
				$(".successPhone").text("휴대전화는 하이픈(-)을 제외한 11자리를 입력하시기 바랍니다.");
				$(".successPhone").css("color", "#DB0000");
				$("#phoneChk").val("false");
		    }

		});		

//이메일 유효성 
	$("#memEmail").blur(function(){
			if($("#memEmail").val() == "") {
				$(".successEmail").text("필수 정보입니다.");
				$(".successEmail").css("color", "#DB0000");
				$("#emailChk").val("false");
			}
		});		
		
//이메일 인증번호 유효성 
	$("#emailAuthCode").blur(function(){
			if($("#emailAuthCode").val() == "") {
				$(".successEmailAuthCode").text("필수 정보입니다.");
				$(".successEmailAuthCode").css("color", "#DB0000");
				$("#emailAuthCodeChk").val("false");
			}
		});		
		
		

		
</script>

</body>
</html>