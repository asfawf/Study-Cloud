<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product detail page</title>
<%@ include file="/WEB-INF/views/module/link.jsp" %>
<script src="https://code.jquery.com/jquery-3.6.3.js" ></script>

</head>
    <body>
        <%@ include file="/WEB-INF/views/module/header.jsp" %>
    <section>       
         
        <!-- Body content -->
        <div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title">${detail.proName }</h1>               
                    </div>
                </div>
            </div>
        </div>
        <!-- End page header -->

        <!-- property area -->
        <div class="content-area single-property" style="background-color: #FCFCFC;">&nbsp;
            <div class="container">   

                <div class="clearfix padding-top-40" >

                    <div class="col-md-8 single-property-content prp-style-1 ">
                        <div class="row">
                            <div class="light-slide-item">            
                                <div class="clearfix">
                                    
                                    <ul id="image-gallery" class="gallery list-unstyled cS-hidden">
                                        <li data-thumb="<%=request.getContextPath() %>/resources/sneat/assets/img/property-1/property1.jpg"> 
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/hello/085436.jpg" />
                                        </li>
                                        <%-- <li data-thumb="<%=request.getContextPath() %>/resources/sneat/assets/img/property-1/property2.jpg"> 
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/property-1/property3.jpg" />
                                        </li>
                                        <li data-thumb="<%=request.getContextPath() %>/resources/sneat/assets/img/property-1/property3.jpg"> 
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/property-1/property3.jpg" />
                                        </li>
                                        <li data-thumb="<%=request.getContextPath() %>/resources/sneat/assets/img/property-1/property4.jpg"> 
                                            <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/property-1/property4.jpg" />
                                        </li>      --%>                                    
                                    </ul>
                                </div>
                            </div>
                        </div>

                       <!--   <div class="single-property-wrapper">-->
                            <div class="single-property-header">                                          
                                <h1 class="property-title pull-left">${detail.proName }</h1>
                                <span class="property-price pull-right">${detail.proPrice}</span>
                            </div>

                            
                            <div class="section">
                                <h4 class="s-property-title">공간소개</h4>
                                <div class="s-property-content">
                                    <p>${detail.proPost }</p>
                                </div>
                            </div>
                            <!-- End introduce area  -->

                            <div class="section additional-details">

                                <h4 class="s-property-title">시설안내</h4>

                                <ul class="additional-details-list clearfix">
                                
                                ${detail.proInfo }
<!--                                     <li> -->
<!--                                         <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">영업시간</span> -->
<!--                                         <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">0~24시</span> -->
<!--                                     </li> -->

<!--                                     <li> -->
<!--                                         <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">층</span> -->
<!--                                         <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">지상8층</span> -->
<!--                                     </li> -->
<!--                                     <li> -->
<!--                                         <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">주차</span> -->
<!--                                         <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">불가능</span> -->
<!--                                     </li> -->

<!--                                     <li> -->
<!--                                         <span class="col-xs-6 col-sm-4 col-md-4 add-d-title">엘리베이터</span> -->
<!--                                         <span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">없음</span> -->
<!--                                     </li> -->
                                </ul>
                            </div>  
                            <!-- End additional-details area  -->

                            <div class="section property-features">      

                                <h4 class="s-property-title">유의사항</h4>   
                                ${detail.proNotice }                         
<!--                                 <ul> -->
<!--                                     <li><a>잔여시간 환불 불가</a></li><br>    -->
<!--                                     <li><a>소품 파손시 신품가격 변상</a></li><br> -->
<!--                                     <li><a>퇴실시 기본적인 청소 및 소품 원위치</a></li><br> -->
<!--                                     <li><a>고객님의 안전과 보안을 위하여 CCTV설치</a></li><br> -->
<!--                                     <li><a>5분전퇴실</a></li><br> -->
<!--                                     <li><a>작업실내 달리기/고함지르기 소음행위 금지</a></li> -->
<!--                                 </ul> -->

                            </div>
                            <!-- End 유의사항 area  -->



                            <div class="section property-features">      

                                <h4 class="s-property-title">환불규정</h4>       
                                ${detail.proRefund }                     
<!--                                 <ul> -->
<!--                                     <li><a>이용 6일전 : 총 금액의 100% 환불</a></li><br>    -->
<!--                                     <li><a>이용 5일전 : 환불 불가</a></li><br> -->
<!--                                     <li><a>이용 4일전 : 환불 불가</a></li><br> -->
<!--                                     <li><a>이용 3일전 : 환불 불가</a></li><br> -->
<!--                                     <li><a>이용 2일전 : 환불 불가</a></li><br> -->
<!--                                     <li><a>이용 1일전 : 환불 불가</a></li> -->
<!--                                 </ul> -->

                            </div>
                            <!-- End 환불 규정 area  -->




                            <div class="section property-features">      

                                <h4 class="s-property-title">위치</h4>                            
                               <!-- 지도 api -->
                            <div id="map" style="width:100%;height:350px;"></div>

							<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=050dabb6b9a1019a9050e1301f2edd4c"></script>
							<script>
							var mapContainer = document.getElementById('map'), 
							    mapOption = { 
							        center: new kakao.maps.LatLng(37.50055486252025, 127.02501560915026), 
							        level: 3
							    };
							
							var map = new kakao.maps.Map(mapContainer, mapOption); 
							
							var markerPosition  = new kakao.maps.LatLng(37.50055486252025, 127.02501560915026); 
							
							var marker = new kakao.maps.Marker({
							    position: markerPosition
							});
							
							marker.setMap(map);    
							</script>

                            </div>                      
                            


                            <!-- 지도 안내 -->

                            <div class="section property-share"> 
                                <h4 class="s-property-title">Q&A
                                <sec:authorize access="isAuthenticated()">
								<sec:authorize access="hasRole('USER')">
									<!-- Q&A 등록 버튼 시작 -->
									<button id="notibtn" type="button" class="btn search-btn pull-right" data-toggle="modal" data-target="#insertQna" style="display: inline;">
										등록
									</button>
									<!-- Q&A 등록 Modal -->
									<div class="modal fade" id="insertQna" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">									
											  	<div class="modal-header">
												    <h4 class="modal-title text-center" id="exampleModalLabel">
												    Q&A 등록
												    <button type="button" class="btn-close pull-right" data-dismiss="modal" aria-label="Close"><span class="pe-7s-close"></span></button>
												    </h4>										    
												</div>							
												<form:form id="insertQna">
												<div class="modal-body">													
													<div class="mb-3">
														<br>
														<textarea class="form-control" name="memQuestion" placeholder="내용" style="height: 300px;"></textarea>
														<input type="hidden" class="form-control" name="proNum" value="${detail.proNum }">
														<input type="hidden" class="form-control" name="memId" value="${pageContext.request.userPrincipal.name}"><br>														
													</div>
												</div>
												</form:form>
											    <div class="modal-footer">
													<div class="button notice-btn"><button type="button" id="btnCheck">textarea값 확인</button>
												        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
														<button form="insertQna" id="insertQna" type="submit" class="btn search-btn" >등록</button>												
													</div> 
												</div>										
											</div>
										</div>
									</div>
									<!-- 공지사항 등록 버튼 끝 -->
								</sec:authorize>			
								</sec:authorize>
								</h4>
								<!-- qnaList 시작 -->
                                <section id="comments" class="comments wow fadeInRight animated"> 
                                           
                                    <div class="row comment" id="qList">
                                        <c:forEach items="${qnaList }" var="list"> 
                                        <div class="col-sm-9 col-md-10">
                                            <h5 class="text-uppercase">${list.memId }</h5>
                                            <p class="posted"> ${list.qnaDate }</p>
                                            <p>${list.memQuestion }</p>
                                            <!-- <p class="reply"><a href="#"><i class="fa fa-reply"></i> Reply</a> -->
                                            </p>
                                        </div>
                                        </c:forEach>
                                    </div>
                                    <!-- /.comment -->
        
        
                                    <!-- <div class="row comment last">
        
                                        <div class="col-sm-9 col-md-10">
                                            <h5 class="text-uppercase">Louise Armero</h5>
                                            <p class="posted"><i class="fa fa-clock-o"></i> September 23, 2012 at 12:00 am</p>
                                            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper.
                                                Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                                            <p class="reply"><a href="#"><i class="fa fa-reply"></i> Reply</a>
                                            </p>
                                        </div>
        
                                    </div> -->
                                    <!-- /.comment -->
                                </section>
                            </div>
                            <!-- End qna area  -->
                           
                            <!-- start review area -->
                            <div class="section property-share"> 
                                <h4 class="s-property-title">review</h4> 
                                <div class="client-text">                                
                                    <p>접근성이 좋고 공간에 들어섰을때 아늑한 분위기가 너무 좋았습니다.</p>
                                    <h4><strong>Ohidul Islam, </strong></h4>
                                </div>
                                <div class="client-text">                                
                                    <p>깔끔하고 무료로 마실수 있어서 좋았어요 또 이용할 생각입니다</p>
                                    <h4><strong>Ohidul Islam, </strong></h4>
                                </div>
                                <div class="client-text">                                
                                    <p>넘 좋았어요 음료 1개 주는게 좋네요 다음에도 이용할게요</p>
                                    <h4><strong>Ohidul Islam, </strong></h4>
                                </div>
                            
                            </div>


                            <!-- End review area -->

                            
                      <!--   </div> -->
                       </div>


                    <!-- 사이드바 구역 -->

                    <div class="col-md-4 p0">
                        <aside class="sidebar sidebar-property blog-asside-right">
                            <div class="dealer-widget">
                                <div class="dealer-content">
                                    <div class="inner-wrapper">

                                        <div class="clear">
                                            <div class="col-xs-4 col-sm-4 dealer-face">
                                                <a href="">
                                                    <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/client-face1.png" class="img-circle">
                                                </a>
                                            </div>
                                            <div class="col-xs-8 col-sm-8 ">
                                                <h3 class="dealer-name">
                                                    <a href="">Nathan James</a>
                                                    <span>Real Estate Agent</span>        
                                                </h3>
                                                <div class="dealer-social-media">
                                                    <a class="twitter" target="_blank" href="">
                                                        <i class="fa fa-twitter"></i>
                                                    </a>
                                                    <a class="facebook" target="_blank" href="">
                                                        <i class="fa fa-facebook"></i>
                                                    </a>
                                                    <a class="gplus" target="_blank" href="">
                                                        <i class="fa fa-google-plus"></i>
                                                    </a>
                                                    <a class="linkedin" target="_blank" href="">
                                                        <i class="fa fa-linkedin"></i>
                                                    </a> 
                                                    <a class="instagram" target="_blank" href="">
                                                        <i class="fa fa-instagram"></i>
                                                    </a>       
                                                </div>

                                            </div>
                                        </div>

                                        <div class="clear">
                                            <ul class="dealer-contacts">                                       
                                                <li><i class="pe-7s-map-marker strong"> </i> 9089 your adress her</li>
                                                <li><i class="pe-7s-mail strong"> </i> email@yourcompany.com</li>
                                                <li><i class="pe-7s-call strong"> </i> +1 908 967 5906</li>
                                            </ul>
                                            <p>Duis mollis  blandit tempus porttitor curabiturDuis mollis  blandit tempus porttitor curabitur , est non…</p>
                                        </div>

                                    </div>
                                </div>
                            </div>

                            <div class="panel panel-default sidebar-menu similar-property-wdg wow fadeInRight animated">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Similar Properties</h3>
                                </div>
                                <div class="panel-body recent-property-widget">
                                        <ul>
                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                                <a href="single.html"><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/small-property-2.jpg"></a>
                                                <span class="property-seeker">
                                                    <b class="b-1">A</b>
                                                    <b class="b-2">S</b>
                                                </span>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                <h6> <a href="single.html">Super nice villa </a></h6>
                                                <span class="property-price">3000000$</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="col-md-3 col-sm-3  col-xs-3 blg-thumb p0">
                                                <a href="single.html"><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/small-property-1.jpg"></a>
                                                <span class="property-seeker">
                                                    <b class="b-1">A</b>
                                                    <b class="b-2">S</b>
                                                </span>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                <h6> <a href="single.html">Super nice villa </a></h6>
                                                <span class="property-price">3000000$</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                                <a href="single.html"><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/small-property-3.jpg"></a>
                                                <span class="property-seeker">
                                                    <b class="b-1">A</b>
                                                    <b class="b-2">S</b>
                                                </span>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                <h6> <a href="single.html">Super nice villa </a></h6>
                                                <span class="property-price">3000000$</span>
                                            </div>
                                        </li>

                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                                <a href="single.html"><img src="<%=request.getContextPath() %>/resources/sneat/assets/img/demo/small-property-2.jpg"></a>
                                                <span class="property-seeker">
                                                    <b class="b-1">A</b>
                                                    <b class="b-2">S</b>
                                                </span>
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                <h6> <a href="single.html">Super nice villa </a></h6>
                                                <span class="property-price">3000000$</span>
                                            </div>
                                        </li>

                                    </ul>
                                </div>
                            </div>                          

                            <div class="panel panel-default sidebar-menu wow fadeInRight animated">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Ads her  </h3>
                                </div>
                                <div class="panel-body recent-property-widget">
                                    <img src="<%=request.getContextPath() %>/resources/sneat/assets/img/ads.jpg">
                                </div>
                            </div>

                            

                        </aside>
                    </div>
                </div>

            </div>
        </div>
 

        <script>
            $(document).ready(function () {

                $('#image-gallery').lightSlider({
                    gallery: true,
                    item: 1,
                    thumbItem: 9,
                    slideMargin: 0,
                    speed: 500,
                    auto: true,
                    loop: true,
                    onSliderLoad: function () {
                        $('#image-gallery').removeClass('cS-hidden');
                    }
                });
            });
           $('#btnCheck').click(function() {
        		console.log("proNum = ", $("[name=proNum]").val());
        		console.log("memQuestion = ", $("[name=memQuestion]").val());
        		console.log("memId = ", $("[name=memId]").val());         		
        	});
           
           $("#insertQna").on("click", insertQna);
          	function insertQna() {
          		/* console.log($("[name=proNum]").val());
       		console.log($("[name=memQuestion]").val());
       		console.log($("[name=memId]").val());  */
       		
          		let formdata = new FormData();
          		formdata.append("memQuestion", $("[name=memQuestion]").val());
				formdata.append("proNum", $("[name=proNum]").val());
          		formdata.append("memId", $("[name=memId]").val());
          		console.log(formdata);
          		
          		$.ajax({   
                    beforeSend : function(xhr){
                           xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}"); }       
           		    , url: "${pageContext.request.contextPath}/product/detail/insertqna"
           		    , type: "post" // ↓ data => form안의 들어가는 내용
          			, contentType: false
          			, processData: false
          			, data: {memQuestion: $("[name=memQuestion]").val(), proNum:$("[name=proNum]").val(), memId:$("[name=memId]").val()}
          			, dataType: "json" // success에 들어오는 데이터가 json 모양일것이고 이것을 js object로 변형해서 return값으로 보내라
          			, success: function (result) { // result => controller의 return값이 들어옴
          				console.log(result);
          					/* insertQna.reset(); */
           				if(result.length > 0) { 
           					alert("QNA가 작성되었습니다.")
           				} else {
           					alert("QNA가 작성되지 않았습니다. 다시 작성해주세요.")
           				}
           				// 답글 부분화면 업데이트
           				displayQna(result);
           			}
           			, error: function () {
           				
           			}
           		});
           	}
           	
           	// 답글 부분화면 업데이트 함수
           	function displayQna(result) {
           		
           		var htmlVal = '';
           		for(i = 0; i < result.length; i++){
           			var reply = result[i];
           			htmlVal += '<div class="col-sm-9 col-md-10">';
           			htmlVal += '<h5 class="text-uppercase">'+qnaList.memId+'</h5>';
           			htmlVal += '<p class="posted">'+qnaList.qnaDate+'</p>';
          			htmlVal += '<p>'+qnaList.memQuestion+'</p>';
          			/* htmlVal += '<p class="reply"><a href="#"><i class="fa fa-reply"></i>'+Reply+'</a></p>'; */
          			htmlVal += '</div>';
          		}
          		$("div[id=qList]").html(htmlVal);
          	}
          	


        </script>
		</section>
		<%@ include file="/WEB-INF/views/module/footer.jsp" %>
		
    </body>
</html>