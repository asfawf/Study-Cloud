<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>로그인</title>
<%@ include file="../module/link.jsp" %>
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
   width: 450px;
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
</style>
<body>
<%@ include file="../module/header.jsp" %> 

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
						        <p>아이디와 비밀번호가 잘못되었습니다.</p>
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
                        
                        <h2>Social login :  </h2> 
                        
                        <a class="kakao" href="https://kauth.kakao.com/oauth/authorize?client_id=94e122bfd99bcf13ff8bfa4508d639b3&redirect_uri=http://localhost:8090/stc/kakaologin&response_type=code">
				     		<!-- REST_API키 및 REDIRECT_URI는 본인걸로 수정하세요 -->
					        
					      	<div class="kakao_i"></div>
					      	<div class="kakao_txt">카카오톡으로 간편로그인 </div>
   						</a>
                        </form:form>
                    </div>
                    
                </div>
            </div>

        </div>
    </div>      

      <!-- Footer area-->
    <div class="footer-area">

        <div class=" footer">
            <div class="container">
                <div class="row">

                    <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                        <div class="single-footer">
                            <h4>About us </h4>
                            <div class="footer-title-line"></div>

                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/footer-logo.png" alt="" class="wow pulse" data-wow-delay="1s">
                            <p>Lorem ipsum dolor cum necessitatibus su quisquam molestias. Vel unde, blanditiis.</p>
                            <ul class="footer-adress">
                                <li><i class="pe-7s-map-marker strong"> </i> 9089 your adress her</li>
                                <li><i class="pe-7s-mail strong"> </i> email@yourcompany.com</li>
                                <li><i class="pe-7s-call strong"> </i> +1 908 967 5906</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                        <div class="single-footer">
                            <h4>Quick links </h4>
                            <div class="footer-title-line"></div>
                            <ul class="footer-menu">
                                <li><a href="properties.html">Properties</a>  </li> 
                                <li><a href="#">Services</a>  </li> 
                                <li><a href="submit-property.html">Submit property </a></li> 
                                <li><a href="contact.html">Contact us</a></li> 
                                <li><a href="faq.html">fqa</a>  </li> 
                                <li><a href="faq.html">Terms </a>  </li> 
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                        <div class="single-footer">
                            <h4>Last News</h4>
                            <div class="footer-title-line"></div>
                            <ul class="footer-blog">
                                <li>
                                    <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                        <a href="single.html">
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/small-proerty-2.jpg">
                                        </a>
                                        <span class="blg-date">12-12-2016</span>

                                    </div>
                                    <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                        <h6> <a href="single.html">Add news functions </a></h6> 
                                        <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
                                    </div>
                                </li> 

                                <li>
                                    <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                        <a href="single.html">
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/small-proerty-2.jpg">
                                        </a>
                                        <span class="blg-date">12-12-2016</span>

                                    </div>
                                    <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                        <h6> <a href="single.html">Add news functions </a></h6> 
                                        <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
                                    </div>
                                </li> 

                                <li>
                                    <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                        <a href="single.html">
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/small-proerty-2.jpg">
                                        </a>
                                        <span class="blg-date">12-12-2016</span>

                                    </div>
                                    <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                        <h6> <a href="single.html">Add news functions </a></h6> 
                                        <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
                                    </div>
                                </li> 


                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                        <div class="single-footer news-letter">
                            <h4>Stay in touch</h4>
                            <div class="footer-title-line"></div>
                            <p>Lorem ipsum dolor sit amet, nulla  suscipit similique quisquam molestias. Vel unde, blanditiis.</p>

                            <form>
                                <div class="input-group">
                                    <input class="form-control" type="text" placeholder="E-mail ... ">
                                    <span class="input-group-btn">
                                        <button class="btn btn-primary subscribe" type="button"><i class="pe-7s-paper-plane pe-2x"></i></button>
                                    </span>
                                </div>
                                <!-- /input-group -->
                            </form> 

                            <div class="social pull-right"> 
                                <ul>
                                    <li><a class="wow fadeInUp animated" href="https://twitter.com/kimarotec"><i class="fa fa-twitter"></i></a></li>
                                    <li><a class="wow fadeInUp animated" href="https://www.facebook.com/kimarotec" data-wow-delay="0.2s"><i class="fa fa-facebook"></i></a></li>
                                    <li><a class="wow fadeInUp animated" href="https://plus.google.com/kimarotec" data-wow-delay="0.3s"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a class="wow fadeInUp animated" href="https://instagram.com/kimarotec" data-wow-delay="0.4s"><i class="fa fa-instagram"></i></a></li>
                                    <li><a class="wow fadeInUp animated" href="https://instagram.com/kimarotec" data-wow-delay="0.6s"><i class="fa fa-dribbble"></i></a></li>
                                </ul> 
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div class="footer-copy text-center">
            <div class="container">
                <div class="row">
                    <div class="pull-left">
                        <span> (C) <a href="http://www.KimaroTec.com">KimaroTheme</a> , All rights reserved 2016  </span> 
                    </div> 
                    <div class="bottom-menu pull-right"> 
                        <ul> 
                            <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.2s">Home</a></li>
                            <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.3s">Property</a></li>
                            <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.4s">Faq</a></li>
                            <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.6s">Contact</a></li>
                        </ul> 
                    </div>
                </div>
            </div>
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

</body>
</html>