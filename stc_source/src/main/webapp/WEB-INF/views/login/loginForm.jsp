<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>로그인</title>
<!-- 네아로 SDK -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<%@ include file="/WEB-INF/views/module/link.jsp" %>
</head>
<style>

.kakao{
   margin-top: 15px;
   height: 60px;
   border: solid 1px #FEE500;
   background: #FEE500;
   color: #3c1d1e;
   font-size: 18px; 
   box-sizing: border-box;
   border-radius: 5px;
   cursor: pointer;
   width: 500px;
   display: flex;
}
.kakao_i{
   background: url(resources/icons/kakao.png) no-repeat;
   width: 40px;
   height: 100%;
   background-size: 90%;
   background-position: 50%;
   margin: 0 20px;
}
.kakao_txt{
   width: 100%;
   display: flex;
   justify-content: center;
   align-items: center;
   font-size: 16px;
   padding-right: 60px;
}

a {
   text-decoration: none;
}


.sns-naver{
   margin-top: 15px;
   height: 60px;
   border: solid 1px #03C75A;
   background: #03C75A;
   color: #03C75A;
   font-size: 18px; 
   box-sizing: border-box;
   border-radius: 5px;
   cursor: pointer;
   width: 500px;
   display: flex;
}

.naver_i{
   background: url(resources/icons/kakao.png) no-repeat;
   width: 40px;
   height: 100%;
   background-size: 90%;
   background-position: 50%;
   margin: 0 20px;
}
.naver_txt{
   width: 100%;
   display: flex;
   justify-content: center;
   align-items: center;
   font-size: 16px;
   padding-right: 60px;
   color: white;
}

.leftId{
	text-align: left;
	display: inline;
}

.rightpw{
	float: right;	
}

</style>
<body>

<%@ include file="/WEB-INF/views/module/header.jsp" %> 
    <div class="page-head"> 
        <div class="container">
            <div class="row">
                <div class="page-head-content">
                    <h1 class="page-title">Home New account / Sign in </h1>               
                </div>
            </div>
        </div>
    </div>
    <!-- End page header -->


    <!-- register-area -->
    <div class="register-area">
        <div class="container">

            <div class="col-md-6 col-md-offset-3">
                <div class="box-for overflow">                         
                    <div class="col-md-12 col-xs-12 login-blocks">
                    	<c:url value="/login" var="loginUrl" />
						<form:form name="f" action="${loginUrl}" method="POST">
                            <div class="form-group">
                            	<c:if test="${param.logout != null}">
						        <p>로그아웃 하였습니다.</p>
						    	</c:if>
                                <label for="id">아이디</label>
                                <input type="text" class="form-control" id="id" name="id" >
                            	<c:if test="${param.error != null}">
						        <p>로그인을 실패했습니다. 다시 시도하거나 회원가입을 해 주세요.</p>
						    	</c:if>
                            </div>
                            <div class="form-group">
                                <label for="password">비밀번호</label>
                                <input type="password" class="form-control" id="password" name="password">
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-default">로그인</button>
                            </div>
                            
                        	<br>
                            
                            <div class="leftId" id="leftId"><h2><a href="#">아이디 찾기</a></h2></div>
                            <div id="rightpw" class="rightpw"><h2><a href="#">비밀번호 찾기</a></h2></div> 
                            
                        	<br>
                        
                        	<h2>Social login :  </h2> 
	                        
	                        <a class="kakao" href="https://kauth.kakao.com/oauth/authorize?client_id=94e122bfd99bcf13ff8bfa4508d639b3&redirect_uri=http://localhost:8090/stc/kakaologin&response_type=code">
					     		<!-- REST_API키 및 REDIRECT_URI는 본인걸로 수정하세요 -->
						      	<div class="kakao_i"></div>
						      	<div class="kakao_txt">카카오톡으로 간편로그인 </div>
						      	
	   						</a>
	   						
	                    </form:form>
                        
                        <!-- 네이버 로그인 버튼 생성 위치 -->
						<div id="naverIdLogin" style="display: none;"></div>
						<a href="#" id="naverLogin" class="btn sns-naver" title="새창"><div class="naver_i"></div>
					      	<div class="naver_txt">네이버로 로그인 </div></a>
						<!-- //네이버아이디로로그인 버튼 노출 영역 -->
                    </div>
                    
                </div>
            </div>

        </div>
    </div>      

<%@ include file="/WEB-INF/views/module/footer.jsp" %>

<!-- 네이버아디디로로그인 초기화 Script -->
<script type="text/javascript">
	var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "BwdR32eAj73FDvlvVauD",
			callbackUrl: "http://localhost:8090/stc/naverlogin",
			isPopup: false, /* 팝업을 통한 연동처리 여부 */
			loginButton: {color: "white", type: 3, height: 50}
		}
	);
	
	/* 설정정보를 초기화하고 연동을 준비 */
	naverLogin.init();
	
	$(document).on("click", "#naverLogin", function(){ 
		var btnNaverLogin = document.getElementById("naverIdLogin").firstChild;
		btnNaverLogin.click();
	});
	
</script>
<!-- // 네이버아이디로로그인 초기화 Script -->

</body>
</html>