<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${product.detail.proName } - 상세 페이지</title>
<%@ include file="/WEB-INF/views/module/link.jsp" %>
<script src="https://code.jquery.com/jquery-3.6.3.js" ></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=${appkey }&libraries=services"></script>
<style>
.customoverlay {position:relative;display:block;bottom:85px;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;float:left;background:#fff;text-align:center;font-size:14px;font-weight:bold;padding:10px 15px;}
.customoverlay:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
.customoverlay:after {content:'';position:absolute;margin-left:-12px;left:50%;bottom:-12px;width:22px;height:12px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
</style>
</head>
    <body>
        <%@ include file="/WEB-INF/views/module/header.jsp" %>
    <section>       
         
        <!-- Body content -->
        <div class="page-head"> 
            <div class="container">
                <div class="row" style="color: #777;">
                	<h1 class="property-title pull-left">${product.detail.proName }</h1>              
                </div>
            </div>
        </div>
        <!-- End page header -->

        <!-- property area -->
        <div class="content-area single-property">&nbsp;
            <div class="container">   

                <div class="clearfix padding-top-40">
                    <div class="col-md-8 single-property-content ">
                        <div class="row">
                            <div class="light-slide-item">            
                                <div class="clearfix">
                                    
                                    <ul id="image-gallery" class="gallery list-unstyled cS-hidden">
                                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
<!--     <div class="item active"> -->
<%--       <img src="${pageContext.request.contextPath }/resources/uploadfiles/${product.detail.proPicRename}"  alt="..."> --%>
<!--       <div class="carousel-caption"> -->
<!--         ... -->
<!--       </div> -->
<!--     </div> -->
<!--     <div class="item"> -->
<%--       <img src="${pageContext.request.contextPath}/resources/sneat/assets/img/hello/085528.jpg" alt="..."> --%>
<!--       <div class="carousel-caption"> -->
<!--         ... -->
<!--       </div> -->
<!--     </div> -->
    ...
    
 <img src="${pageContext.request.contextPath }/resources/uploadfiles/${product.detail.proPicRename}"/>   
    
    
    
    
    
    
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>                                  
                                    </ul>
                                </div>
                            </div>
                        </div>

                       <!--   <div class="single-property-wrapper">-->
                            <div class="single-property-header">                                          
                                <h1 class="property-title pull-left">${product.detail.proAddress }</h1>
                                <span class="property-price pull-right"><fmt:formatNumber value="${product.detail.proPrice }" type="currency" /></span>
                            </div>

                            
                            <div class="section">
                                <h4 class="s-property-title">공간소개</h4>
                                <div class="s-property-content">
                                    <p>${product.detail.proPost }</p>
                                </div>
                            </div>
                            <!-- End introduce area  -->

                            <div class="section additional-details">

                                <h4 class="s-property-title">시설안내</h4>

                                <ul class="additional-details-list clearfix">
                                
                                ${product.detail.proInfo }
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
                                ${product.detail.proNotice }                         
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
                                ${product.detail.proRefund }                     
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
							

                            </div>                      
                            


                            <!-- 지도 안내 -->

                            <div class="section property-share">
                          		<input type="hidden" class="form-control" name="proNum" value="${product.detail.proNum }">                                
                          		<h4 class="s-property-title">Q&A
                                <sec:authorize var="isauth" access="isAuthenticated()">
								<sec:authorize var="" access="hasRole('USER')">
									<!-- Q&A 등록 버튼 시작 -->
									<button type="button" class="btn qna-btn pull-right" data-toggle="modal" data-target="#insertQna" style="display: inline;">
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
												<form:form id="frminsertQna">
												<div class="modal-body">													
													<div class="mb-3">
														<br>
														<textarea class="form-control" name="memQuestion" placeholder="내용" style="height: 300px;"></textarea>
														<input type="hidden" class="form-control" name="proNum" value="${product.detail.proNum }">
														<input type="hidden" class="form-control" name="memId" value="${pageContext.request.userPrincipal.name}"><br>														
													</div>
												</div>
												</form:form>
											    <div class="modal-footer">
													<div class="button notice-btn">
												        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
														<button form="frminsertQna" type="button" class="btn search-btn btninsertQna" data-dismiss="modal">등록</button>												
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
                                <section id="comments" class="comments"> 
                                           
                                    <div class="row comment" id="qList">
                                                            
                                        <!-- updateQna modal -->
										 
										<!-- replyQna modal -->
										 
                                        <!-- qna 페이징 -->
                                        <c:if test="${!empty qna.qnaNum }">
                                        <div class="col-md-12 clear"> 
					                        <div class="text-center">
					                            <div class="pagination">
					                                <ul class="pagination-sm">
					                                	                              
					                                </ul>
					                            </div>
					                        </div>                
					                    </div>
					                    </c:if>
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


                    <!-- 사이드바 구역 시작 -->
					<%@ include file="/WEB-INF/views/reserve/reserve.jsp" %>
					<!-- 사이드바 구역 끝 -->
					                                        
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

	        /* productDetail ajax */
	        getQnaListHandler();
	        
	        function getQnaListHandler(){
	    		console.log($("[name=proNum]").val());
	    		
	    		var qnapage = $(this).data("qnapage");
	    		if(!qnapage){
	    			qnapage = 1;
	    		}

	    		$.ajax({
	    			 url: "${pageContext.request.contextPath}/product/detail"
	    		   , type: "POST"
	    		   , data: {proNum:$("[name=proNum]").val()
	    					, qnapage: qnapage
	    		   			}
	    			 
	    		   , dataType: "json"  
	          	   , success: function (result) { 
	          		 displayQna(result);
	    			}
	    		   , error : function(request,status,error) {
	    			   alert("code:" + request.status + "\n" + "message:" +
	    					 request.responseText + "\n" + "error:" + error); 
	    			}
	    		   , beforeSend : function(xhr){
	    			   xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}"); 
	    			}
	    		});
	    		
	    	}
	        
	       /* insertProductQna ajax */
           $(".btninsertQna").on("click", insertQna);
          	function insertQna() {
          		var memQuestionLength = $("[name=memQuestion]").val().trim().length;
          		if(memQuestionLength < 1) {
          			alert("글자 수가 적으면 등록되지 않습니다. 글을 입력해주세요.")
          			$("[name=memQuestion]").focus()
          			$("[name=memQuestion]").val("")
          			return false;
          		}
          		var qnapage = $(this).data("qnapage");
	    		if(!qnapage){
	    			qnapage = 1;
	    		}
          		$.ajax({   
          			  url: "${pageContext.request.contextPath}/product/detail/qnainsert"
           		    , type: "POST"
          			, data: {memQuestion: $("[name=memQuestion]").val(), proNum:$("[name=proNum]").val(), memId:$("[name=memId]").val(), qnapage: qnapage}
          			, dataType: "json"  
          			, success: function (result) { 
          				console.log(result);
          				frminsertQna.reset();
           				if(result.qnaList.length > 0) { 
           					alert("QNA가 작성되었습니다.")
           				} else {
           					alert("QNA가 작성되지 않았습니다. 다시 작성해주세요.")
           				}           				 
           				displayQna(result);
           			}
         		   , error : function(request,status,error) {
        			   alert("code:" + request.status + "\n" + "message:" +
        					 request.responseText + "\n" + "error:" + error); 
        			}
        		   , beforeSend : function(xhr){
                      xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}"); 
        			}
           		});
           	}
           	
          	/* displayQna 화면 함수 */
           	function displayQna(result) {
           		
           		var htmlVal = '';
           		for(var i = 0; i < result.qnaList.length; i++){
        			var qna = result.qnaList[i];
           			htmlVal += '<div class="col-sm col-md-10" id="'+qna.qnaNum+'">';
           			htmlVal += '<h5 class="text-uppercase">'+qna.memId+'</h5>';
           			htmlVal += '<p class="posted">'+qna.qnaDate+'</p>';
          			htmlVal += '<p class="posted">'+qna.memQuestion+'</p></div>';
          			htmlVal += '<div class="col-sm pull-right">';
          			if('${product.detail.memId}' == '${pageContext.request.userPrincipal.name}'){
          			htmlVal += '<button data-toggle="modal" data-target="#replyQna'+qna.qnaNum+'" type="button">답변</button>&nbsp';
          			}
          			if(qna.memId == '${pageContext.request.userPrincipal.name}'){
          			htmlVal += '<button data-toggle="modal" data-target="#updateQna'+qna.qnaNum+'" type="button">수정</button>&nbsp';
          			htmlVal += '<button class="delete btndeleteQna" type="button" data-qnanum="'+qna.qnaNum+'">삭제</button>';
          			}
          			htmlVal += '</div>';
          			htmlVal += '<div class="col-sm col-md-8">';
          			if(qna.hostAnswer != null){
       				htmlVal += '<i class="fa fa-user">&nbsp${product.detail.memId}</i><br>'+qna.hostAnswer
       				}
          			htmlVal += '</div>';
          			htmlVal += '<div class="modal" id="updateQna'+qna.qnaNum+'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">';
          			htmlVal += '<div class="modal-dialog">';
          			htmlVal += '<div class="modal-content">';									
          			htmlVal += '<div class="modal-header">';
          			htmlVal += '<h4 class="modal-title text-center" id="exampleModalLabel">Q&A 수정<button type="button" class="btn-close pull-right" data-dismiss="modal" aria-label="Close"><span class="pe-7s-close"></span></button></h4>';			
          			htmlVal += '</div>';
          			htmlVal += '<form id="frmupdateQna'+qna.qnaNum+'">';
          			htmlVal += '<div class="modal-body">';
          			htmlVal += '<div class="mb-3"><br>';
              		htmlVal += '<textarea class="form-control memQuestion" name="memQuestion" placeholder="내용" style="height: 300px;">'+qna.memQuestion+'</textarea>';
              		htmlVal += '</div>';
              		htmlVal += '</div>';              		
           			htmlVal += '<div class="modal-footer">';
       				htmlVal += '<div class="button notice-btn">';
   					htmlVal += '<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>';
   					htmlVal += '<button form="frmupdateQna'+qna.qnaNum+'" type="button" class="update btnupdateQna" data-dismiss="modal" data-qnanum="'+qna.qnaNum+'">등록</button>';												
   					htmlVal += '</div>';
   					htmlVal += '</div>';
              		htmlVal += '</form>';
   					htmlVal += '</div>';
   					htmlVal += '</div>';
   					htmlVal += '</div>';
   					htmlVal += '<div class="modal" id="replyQna'+qna.qnaNum+'" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">';
   					htmlVal += '<div class="modal-dialog">';
   					htmlVal += '<div class="modal-content">';								
   					htmlVal += '<div class="modal-header">';
   					htmlVal += '<h4 class="modal-title text-center" id="exampleModalLabel">Q&A 답변';
   					htmlVal += '<button type="button" class="btn-close pull-right" data-dismiss="modal" aria-label="Close"><span class="pe-7s-close"></span></button></h4>';										    
   					htmlVal += '</div>';							
					htmlVal += '<form id="frmreplyQna'+qna.qnaNum+'">';
   					htmlVal += '<div class="modal-body">';													
   					htmlVal += '<div class="mb-3"><br>';
   					htmlVal += '<textarea class="form-control hostAnswer" name="hostAnswer" placeholder="내용" style="height: 300px;">'+qna.hostAnswer+'</textarea>';
   					htmlVal += '</div>';
   					htmlVal += '</div>';
   					htmlVal += '<div class="modal-footer">';
   					htmlVal += '<div class="button notice-btn">';
   					htmlVal += '<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>';
   					htmlVal += '<button form="frmreplyQna'+qna.qnaNum+'" type="button" class="reply btnreplyQna" data-dismiss="modal" data-pronum="'+qna.proNum+'" data-qnanum="'+qna.qnaNum+'">등록</button>';												
					htmlVal += '</div>'; 
					htmlVal += '</div>';										
					htmlVal += '</form>';
					htmlVal += '</div>';
					htmlVal += '</div>';
   					htmlVal += '</div>';    
          		}
          		$("div[id=qList]").html(htmlVal);
          		displayQnaPaging(result);
          		// 화면 element가 다시 생겨났으므로 event 다시 등록
          		$(".btnupdateQna").on("click", updateQna);
          		$(".btndeleteQna").on("click", deleteQna);
          		$(".btnreplyQna").on("click", replyQna);
          	}
          	
          	/* qna 페이징 ajax */
           	function displayQnaPaging(result){
           		
        		var htmlVal = '';
        		htmlVal += `
        		<div class="col-md-12 clear"> 
                <div class="text-center">
                    <div class="pagination">
                        <ul class="pagination-sm">
                        `;
            				if(result.pageInfo.currentPage == 1){
        		htmlVal +='				<li><a class="disabled pe-7s-angle-left"></a></li>';
            				} else {
        		htmlVal +='				<li><a class="pe-7s-angle-left" data-pronum="'+result.proNum+'" data-qnapage="'+(result.pageInfo.currentPage - 1)+'"></a></li>';
            				}
            				for(var i = result.pageInfo.startPage; i <= result.pageInfo.endPage; i++){
            					
        		htmlVal +='				<li><a data-pronum="'+result.proNum+'" data-qnapage="'+i+'">'+i+'</a></li>';
            				}
        					if(result.pageInfo.currentPage == result.pageInfo.endPage){
        		htmlVal +='				<li><a class="disabled pe-7s-angle-right"></a></li>';
            				} else {
        		htmlVal +='				<li><a class="pe-7s-angle-right" data-pronum="'+result.proNum+'" data-qnapage="'+(result.pageInfo.currentPage + 1)+'"></a></li>';
            				}
        		htmlVal += `
                    </ul>
            		</div> 
        			</div>
        			</div>
                            `;

        		$("div[id=qList]").append(htmlVal);
        		$(".pagination a:not(.disabled)").click(getQnaListHandler);
        	}
          	
          	// 로딩되면 event 등록
          	/* updateProductQna ajax */
          	$(".btnupdateQna").on("click", updateQna);
          	function updateQna() {

          		var qnanum = $(this).data("qnanum"); 
          		var qnapage = $(this).data("qnapage");
	    		if(!qnapage){
	    			qnapage = 1;
	    		}
          		$.ajax({   
          			  url: "${pageContext.request.contextPath}/product/detail/qnaupdate"
           		    , type: "POST"
          			, data: {qnaNum:qnanum, proNum:$("[name=proNum]").val(), memQuestion: $(this.form.memQuestion).val(), qnapage: qnapage}
          			, dataType: "json"  
          			, success: function (result) { 
          				console.log(result);

           				if(result.qnaList.length > 0) { 
           					alert("수정되었습니다.")
           					displayQna(result);
           				}  
           				
           			}
         		    , error : function(request,status,error) {
        			   alert("code:" + request.status + "\n" + "message:" +
        					 request.responseText + "\n" + "error:" + error); 
        			}
        		    , beforeSend : function(xhr){
						xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}"); 
        			}
           		});
          		
           	}
          	
          	/* deleteProductQna ajax */
           	$(".btndeleteQna").on("click", deleteQna);
          	function deleteQna() {
          		 
          		var qnanum = $(this).data("qnanum"); 
          		var qnapage = $(this).data("qnapage");
	    		if(!qnapage){
	    			qnapage = 1;
	    		}
          		if(confirm("QNA를 삭제하시겠습니까?")){
	          		$.ajax({   
	          			  url: "${pageContext.request.contextPath}/product/detail/qnadelete"
	           		    , type: "POST"
	          			, data: {qnaNum:qnanum, proNum:$("[name=proNum]").val(), qnapage: qnapage}
	          			, dataType: "json"  
	          			, success: function (result) { 
	          				console.log(result);
	
	           				if(result.qnaList.length > 0) { 
	           					alert("삭제되었습니다.")
		           				displayQna(result);
	           				}            				 
	           			}
	         		    , error : function(request,status,error) {
	        			   alert("code:" + request.status + "\n" + "message:" +
	        					 request.responseText + "\n" + "error:" + error); 
	        			}
	        		    , beforeSend : function(xhr){
								xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}"); 
	        			}
	           		});
          		} else {
          			return false;
          		}
           	}
          	/* replyProductQna ajax */
          	$(".btnreplyQna").on("click", replyQna);
          	function replyQna() {
          		var hostAnswerLength = $(this.form.hostAnswer).val().trim().length;
          		if(hostAnswerLength < 1) {
          			alert("글자 수가 적으면 등록되지 않습니다. 글을 입력해주세요.")
          			$(this.form.hostAnswer).focus()
          			$(this.form.hostAnswer).val("")
          			return false;
          		}
          		var qnanum = $(this).data("qnanum");
          		var pronum = $(this).data("pronum");
          		var qnapage = $(this).data("qnapage");
	    		if(!qnapage){
	    			qnapage = 1;
	    		}
          		$.ajax({   
          			  url: "${pageContext.request.contextPath}/product/detail/qnareply"
           		    , type: "POST"
          			, data: {qnaNum:qnanum, proNum:pronum, hostAnswer: $(this.form.hostAnswer).val(), qnapage: qnapage}
          			, dataType: "json"  
          			, success: function (result) { 
          				console.log(result);

           				if(result.qnaList.length > 0) { 
           					alert("답변이 등록 되었습니다.")
           					displayQna(result);
           				}            				 
           			}
          			, error : function(request,status,error) {
	        			   alert("code:" + request.status + "\n" + "message:" +
	        					 request.responseText + "\n" + "error:" + error); 
	                }
          			, beforeSend : function(xhr){
								xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}"); 
          			}
           		});
          		
           	}

          	
			/* 지도 */
 			var mapContainer = document.getElementById('map'), 
		    mapOption = { 
		        center: new kakao.maps.LatLng(37.50055486252025, 127.02501560915026), 
		        level: 3
		    };
		
			var map = new kakao.maps.Map(mapContainer, mapOption); 
			
			var imageSrc = '${pageContext.request.contextPath}/resources/sneat/assets/img/marker.png',  
			    imageSize = new kakao.maps.Size(56, 61), 
			    imageOption = {offset: new kakao.maps.Point(27, 69)}; 
			
			var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
				geocoder = new kakao.maps.services.Geocoder(); 
								
			geocoder.addressSearch('${product.detail.proAddress}', function(result, status) {

			    if (status === kakao.maps.services.Status.OK) {
			        var markerPosition = new kakao.maps.LatLng(result[0].y, result[0].x);

			        var marker = new kakao.maps.Marker({
			            position: markerPosition,
			            image: markerImage
			        });

			        marker.setMap(map); 
			        
			        var content= '<div class="customoverlay">${product.detail.proName}</div>';

			        map.setCenter(markerPosition);
					
			        var customOverlay = new kakao.maps.CustomOverlay({
					    map: map,
					    position: markerPosition,
					    content: content,
					    yAnchor: 1 
					});
			    } 
			});
			
			map.setZoomable(false);
			kakao.maps.event.addListener(map, 'click', (mouseEvent) => {
				map.setZoomable(true);
			});   

			</script>
	</section>
<%@ include file="/WEB-INF/views/module/footer.jsp" %>
</body>
</html>