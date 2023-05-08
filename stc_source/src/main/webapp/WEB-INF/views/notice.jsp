<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<%@ include file="/WEB-INF/views/module/link.jsp" %>
<script src="https://cdn.ckeditor.com/4.20.2/standard/ckeditor.js"></script>
<script src="https://code.jquery.com/jquery-3.6.3.js" ></script>
</head>
<body>
<%@ include file="/WEB-INF/views/module/header.jsp" %>
<section>
	<div class="count-area"> 
	    <div class="container">
		    <div class="row">
	    	    <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
	        	    <h2>공지사항</h2>               
	            </div>
	        </div>
	    </div>
	</div>
        <!-- section property area -->
        <div class="content-area recent-property" style=" padding-bottom: 55px;">
            <div class="container">                  
		        <div class="notice-slider-area">
		            <div class="notice-slider-content">
		                <div class="row">                
		  	                <form action="${pageContext.request.contextPath}/notice" class="form-inline" style="display: inline-flex; padding-left: 20px;">
		          	            <div class="form-group">                                   
		                            <select name="notiIdx" class="selectpicker show-tick form-control" data-width="220px" onchange="submit();">
										<option value=""> -전체- </option>
										<option value="공지" ${param.notiIdx eq '공지' ? 'selected' : '' }>공지</option>
										<option value="이벤트" ${param.notiIdx eq '이벤트' ? 'selected' : '' }>이벤트</option>
										<option value="복구" ${param.notiIdx eq '복구' ? 'selected' : '' }>복구</option>
										<option value="복구완료" ${param.notiIdx eq '복구완료' ? 'selected' : '' }>복구완료</option>	
									</select>
		                        </div>
		                    </form>
		                        <sec:authorize access="isAuthenticated()">
								<sec:authorize access="hasRole('ADMIN')">
									<!-- 공지사항 등록 버튼 시작 -->
									<button id="notibtn" type="button" class="btn search-btn" data-toggle="modal" data-target="#insertNotice" style="display: inline;">
										등록
									</button>
									<!-- 공지사항 등록 Modal -->
									<div class="modal fade" id="insertNotice" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">									
											  	<div class="modal-header">
												    <h4 class="modal-title text-center" id="exampleModalLabel">
												    공지 등록
												    <button type="button" class="btn-close pull-right" data-dismiss="modal" aria-label="Close"><span class="pe-7s-close"></span></button>
												    </h4>										    
												</div>							
												<form:form id="insertForm" action="${pageContext.request.contextPath}/notice/insert" method="POST" enctype="multipart/form-data">
												<div class="modal-body">
													<div class="row">
														<div class="col-sm-4">
														<select name="notiIdx" class="selectpicker show-tick form-control" title="-전체-" >
															<option> -전체- </option>
															<option value="공지">공지</option>
															<option value="이벤트">이벤트</option>
															<option value="복구">복구</option>
															<option value="복구완료">복구완료</option>													
														</select>													
														</div>
														<div class="col-sm-8">
															<input type="text" class="form-control notiTitle" name="notiTitle" placeholder="제목">
														</div>
													</div>
													<div class="mb-3">
														<br>
														<textarea class="form-control ckeditor" id="insertNotiContents" name="notiContents" placeholder="내용" style="height: 300px;"></textarea>
														<input type="hidden" class="form-control" name="memId" value="${pageContext.request.userPrincipal.name}"><br>
														<input type="file" class="form-control" name="report" placeholder="첨부파일">
													</div>
												</div>
												</form:form>
											    <div class="modal-footer">
													<div class="button notice-btn">
												        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
														<button form="insertForm" type="button" class="btn search-btn" onclick="ckinsertForm();">등록</button>												
													</div> 
												</div>										
											</div>
										</div>
									</div>
									<!-- 공지사항 등록 버튼 끝 -->
								</sec:authorize>			
								</sec:authorize>
		                    <!-- </form> -->
		                 </div>   
		             </div> 
		         </div>  
				<!-- noticeList 시작 -->
                <div class="row row-feat"> 
                    <div class="col-md-12"> 
                        <div class="col-sm feat-list">
                        	<c:forEach items="${noticeList }" var="notice"> 
							<div class="panel-group">
							    <div class="panel panel-default">
							        <div class="panel-heading">
							             <h4 class="panel-title fqa-title" data-toggle="collapse" data-target="#${notice.notiNum }" >
							                <b>[${notice.notiIdx }]</b> ${notice.notiTitle }
							             </h4> 
							        </div>
							        <div id="${notice.notiNum }" class="panel-collapse collapse fqa-body">
							            <div class="panel-body">
							                <ol>
							                    ${notice.notiContents }  
							                    <c:choose>
				                               	<c:when test="${notice.renameFilename ne null }">
				                               		<img src="${pageContext.request.contextPath }/resources/uploadfiles/${notice.renameFilename }">  
				                               	</c:when>
				                               	</c:choose>							                    
							                </ol>		
							                					                
							                <div class="button notice-btn updelete">
                                            	<sec:authorize access="isAuthenticated()">
												<sec:authorize access="hasRole('ADMIN')">
													<!-- 공지사항 수정 버튼 시작 -->
													<button id="notibtn" type="button" data-toggle="modal" data-target="#updateNotice${notice.notiNum }">
														수정
													</button>&nbsp;
													<!-- 공지사항 삭제 버튼 -->
													<form:form id="deleteForm${notice.notiNum }" action="${pageContext.request.contextPath}/notice/delete?notiNum=${notice.notiNum }" method="POST">
													<button form="deleteForm${notice.notiNum }" type="button" onclick=" ckdeleteForm(this.form); ">삭제</button>
													</form:form>
													<!-- 공지사항 수정 Modal -->													 
													<form:form id="updateForm${notice.notiNum }" action="${pageContext.request.contextPath}/notice/update?notiNum=${notice.notiNum }" method="POST" enctype="multipart/form-data">
													<div class="modal fade" id="updateNotice${notice.notiNum }" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
														<div class="modal-dialog">
															<div class="modal-content">
															  	<div class="modal-header">
																    <h4 class="modal-title text-center" id="exampleModalLabel">
																    공지사항 수정
																    <button type="button" class="btn-close pull-right" data-dismiss="modal" aria-label="Close"><span class="pe-7s-close"></span></button>
																    </h4>										    
																</div>
																<div class="modal-body">
																	<div class="row">
																		<div class="col-sm-4">
																		<select name="notiIdx" class="selectpicker show-tick form-control" title="${notice.notiIdx }">
																			<option value="${notice.notiIdx }">${notice.notiIdx }</option>
																		</select>
																		</div>
																		<div class="col-sm-8">
																			<input type="text" class="form-control" name="notiTitle" placeholder="제목" value="${notice.notiTitle }">
																		</div>
																	</div>
																	<div class="mb-3">
																		<br>
																		<textarea class="form-control ckeditor" id="#notiContents" name="notiContents" placeholder="내용" style="height: 300px;">
																			${notice.notiContents }
																			<c:choose>
											                               	<c:when test="${notice.renameFilename ne null }">
											                               		<img src="${pageContext.request.contextPath }/resources/uploadfiles/${notice.renameFilename }">  
											                               	</c:when>
											                               	</c:choose>
										                               	</textarea>
																		<input type="hidden" class="form-control" name="memId" value="${pageContext.request.userPrincipal.name}">
																		<input type="file" class="form-control" name="report" placeholder="첨부파일">
																	</div>
																</div>
																<div class="modal-footer">
																	<div class="button notice-btn">
																        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>																	
																		<button form="updateForm${notice.notiNum }" type="button" class="btn search-btn" onclick=" ckupdateForm(this.form); ">등록</button>
																	</div> 
																</div>
															</div>
														</div>
													</div>
													</form:form>
													<!-- 공지사항 수정 버튼 끝 -->
												</sec:authorize>			
												</sec:authorize>
											</div> 
							            </div> 
							        </div>
							    </div>
							</div>
							</c:forEach>		                    
                         </div>
                    </div>
                </div>
                <!-- noticeList 끝 -->
				<div class="col-md-12 clear"> 
		        	<div class="text-center">
		            	<div class="pagination">
		                	<ul>
		                    	<c:choose>
		                        <c:when test="${pageInfo.currentPage eq 1 }">
		                        	<li><a class="disabled pe-7s-angle-left"></a></li>
		                        </c:when>
		                        <c:otherwise>
		                        	<li><a class="pe-7s-angle-left" href="${pageContext.request.contextPath}/notice?notiIdx=${param.notiIdx }&page=${pageInfo.currentPage - 1 }"></a></li>
		                        </c:otherwise>
		                        </c:choose>
		                        <c:forEach begin="${pageInfo.startPage }" end="${pageInfo.endPage }" var="page">
									<li><a href="${pageContext.request.contextPath}/notice?notiIdx=${param.notiIdx }&page=${page }">${page }</a></li>
								</c:forEach>  
								<c:choose>
								<c:when test="${pageInfo.currentPage eq pageInfo.endPage}">
		                        	<li><a class="disabled pe-7s-angle-right"></a></li>
		                        </c:when>
		                        <c:otherwise>
		                        	<li><a class="pe-7s-angle-right" href="${pageContext.request.contextPath}/notice?notiIdx=${param.notiIdx }&page=${pageInfo.currentPage +1 }"></a></li>
		                        </c:otherwise> 
		                        </c:choose>                                 
		                	</ul>
						</div>
		        	</div>                
				</div>                     
            </div>
        </div>
</section>
<%@ include file="/WEB-INF/views/module/footer.jsp" %>
	
<script>
	/* updateForm */
	function ckupdateForm(form){
		alert("수정되었습니다.");
		form.submit();
	}
	
	/* deleteForm */
	function ckdeleteForm(form){
		if(confirm("공지사항을 삭제하시겠습니까?")){ // 확인 버튼을 눌렀을 때
			alert("삭제되었습니다.");
			form.submit();
	     }else{  // 취소 버튼을 눌렀을 때
	    	location.replace('<%=request.getContextPath() %>/notice');
	    	return false;
	     }
	}
	
	/* insertForm 유효성 체크 */
	function ckinsertForm() {
		var insertForm = $('#insertForm')
		var notiTitleLength = $(".notiTitle").val().trim().length;
		var notiContents = CKEDITOR.instances['insertNotiContents'];
		if(notiTitleLength < 1){
			alert("제목을 입력하세요.");
			$(".notiTitle").focus();
			$(".notiTitle").val("");
		} else if (notiContents.getData() == '' || notiContents.getData().length < 22) {
  			alert("글자 수가 적으면 등록되지 않습니다. 내용을 입력하세요.")
  			console.log(notiContents.getData());
  			notiContents.focus();
  			notiContents.setData('');
  			return false;
	  	} else {
  			insertForm.submit();
	  	}	
		
	}

</script>
    </body>
</html>