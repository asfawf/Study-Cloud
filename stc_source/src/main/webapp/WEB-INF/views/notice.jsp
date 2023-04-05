<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<%@ include file="/WEB-INF/views/module/link.jsp" %>
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
        <!-- End page header -->
        

        <!-- section property area -->
        <div class="content-area recent-property" style=" padding-bottom: 55px;">
            <div class="container">  
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12 page-title">
                        <!-- /.feature title -->
                        <div style="display: inline-flex;" class="col-lg-6 float-center">
                        <form action="${pageContext.request.contextPath}/notice?notiIdx=${notice.notiIdx }" class="form-inline">
							<div class="form-group ">     
                            	<select id="basic" name="notiIdx" class="selectpicker show-tick form-control" title="-전체-" onchange="submit();">
									<option value=""> -전체- </option>
									<option value="공지">공지</option>
									<option value="이벤트">이벤트</option>
									<option value="복구">복구</option>
									<option value="복구완료">복구완료</option>
								</select>
							</div>                             
                        </form>
                        </div> 
                        <div style="display: inline;" class="col-md-6 pull-right"> 
                        <!-- admin security 적용 -->
						<sec:authorize access="isAuthenticated()">
						<sec:authorize access="hasRole('ADMIN')">
							<!-- 공지사항 등록 버튼 시작 -->
							<button type="button" class="btn search-btn" data-toggle="modal" data-target="#insertNotice">
								등록
							</button>
							<!-- 공지사항 등록 Modal -->
							<div class="modal fade" id="insertNotice" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">									
									  	<div class="modal-header">
										    <h4 class="modal-title text-center" id="exampleModalLabel">
										    공지 등록
										    <button type="button" class="btn-close pull-right" data-dismiss="modal" aria-label="Close">X</button>
										    </h4>										    
										</div>							
										<form:form id="insertForm" action="${pageContext.request.contextPath}/notice/insert" method="POST">
										<div class="modal-body">
											<div class="row">
												<div class="col-sm-4">
												<select id="basic" name="notiIdx" class="selectpicker show-tick form-control" title="-전체-" >
													<option> -전체- </option>
													<option value="공지">공지</option>
													<option value="이벤트">이벤트</option>
													<option value="복구">복구</option>
													<option value="복구완료">복구완료</option>													
												</select>
												</div>
												<div class="col-sm-8">
													<input type="text" class="form-control" name="notiTitle" placeholder="제목" >
												</div>
											</div>
											<div class="mb-3">
												<br>
												<textarea class="form-control" name="notiContents" placeholder="내용" style="height: 300px;"></textarea>
												<input type="hidden" class="form-control" name="memId" value="<%= request.getUserPrincipal().getName() %>">
											</div>
										</div>
										</form:form>
									    <div class="modal-footer">
											<div class="button notice-btn">
										        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
												<button form="insertForm" type="submit" class="btn search-btn" >등록</button>												
											</div> 
										</div>										
									</div>
								</div>
							</div>
							<!-- 공지사항 등록 버튼 끝 -->
						</sec:authorize>			
						</sec:authorize>
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
							                </ol>		
							                					                
							                <div class="button notice-btn">
                                            	<sec:authorize access="isAuthenticated()">
												<sec:authorize access="hasRole('ADMIN')">
													<!-- 공지사항 수정 버튼 시작 -->
													<button type="button" class="btn search-btn" data-toggle="modal" data-target="#updateNotice${notice.notiNum }">
														수정
													</button>
													<!-- 공지사항 삭제 버튼 -->
													<form:form id="deleteForm${notice.notiNum }" action="${pageContext.request.contextPath}/notice/delete?notiNum=${notice.notiNum }" method="POST">
													<button form="deleteForm${notice.notiNum }" class="btn search-btn" type="button" onclick=" submit(); ">삭제</button>
													</form:form>
													<!-- 공지사항 수정 Modal -->													 
													<form:form id="updateForm${notice.notiNum }" action="${pageContext.request.contextPath}/notice/update?notiNum=${notice.notiNum }" method="POST">
													<div class="modal fade" id="updateNotice${notice.notiNum }" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
														<div class="modal-dialog">
															<div class="modal-content">
															  	<div class="modal-header">
																    <h4 class="modal-title text-center" id="exampleModalLabel">
																    공지사항 수정
																    <button type="button" class="btn-close pull-right" data-dismiss="modal" aria-label="Close">X</button>
																    </h4>										    
																</div>
																<div class="modal-body">
																	<div class="row">
																		<div class="col-sm-4">
																		<select id="basic" name="notiIdx" class="selectpicker show-tick form-control" title="${notice.notiIdx }">
																			<option value="${notice.notiIdx }">${notice.notiIdx }</option>
																		</select>
																		</div>
																		<div class="col-sm-8">
																			<input type="text" class="form-control" name="notiTitle" placeholder="제목" value="${notice.notiTitle }">
																		</div>
																	</div>
																	<div class="mb-3">
																		<br>
																		<textarea class="form-control" name="notiContents" placeholder="내용" style="height: 300px;">${notice.notiContents }</textarea>
																		<input type="hidden" class="form-control" name="memId" value="<%= request.getUserPrincipal().getName() %>">
																	</div>
																</div>
																<div class="modal-footer">
																	<div class="button notice-btn">
																        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>																	
																		<button form="updateForm${notice.notiNum }" type="submit" class="btn search-btn" >등록</button>
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
                                    <li><a href="#">Prev</a></li>
                                    <c:forEach begin="${pageInfo.startPage }" end="${pageInfo.endPage }" var="page">
										<li><a href="#">${page }</a></li>	
									</c:forEach>                                    
                                    <li><a href="#">Next</a></li>
                                </ul>
                            </div>
                        </div>                
                    </div>                     
            </div>
        </div>
</section>
<%@ include file="/WEB-INF/views/module/footer.jsp" %>
</body>
</html>