<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 

							<div class="section property-share">
                          		<input type="hidden" class="form-control" name="proNum" value="${product.detail.proNum }">                                
                          		<h4 class="s-property-title">review
                          		<!-- review 등록 버튼 시작 -->
									<button type="button" class="btn qna-btn pull-right btninsert" data-toggle="modal" data-target="#insertReview" style="display: inline;">
										등록
									</button>									
									<!-- review 등록 Modal -->
									<div class="modal fade" id="insertReview" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">									
											  	<div class="modal-header">
												    <h4 class="modal-title text-center" id="exampleModalLabel">
												    리뷰 등록
												    <button type="button" class="btn-close pull-right" data-dismiss="modal" aria-label="Close"><span class="pe-7s-close"></span></button>
												    </h4>										    
												</div>							
												<form id="frminsertReview">
												<div class="modal-body">
													<div class="row">
														<div class="col-sm-12">
														<select name="rsvNum" class="form-control">
															<option value="${select.rsvNumber }"${param.rsvNumber eq rsvNumber ? 'selected' : ''  }>${select.rsvNumber }</option>
															<option value=""> -전체- </option>
															<c:forEach items="${userRsvNum }" var="select">
							                            		<option value="${select.rsvNumber }"${param.rsvNumber eq select.rsvNumber ? 'selected' : '' }>
							                            		(주문번호 : ${select.rsvNumber })&nbsp&nbsp${select.regDate }
							                            		</option>
															</c:forEach>
														</select>
														</div>
													</div>													
													<div class="mb-3">
														<br>
														<textarea class="form-control" name="revContents" placeholder="내용" style="height: 300px;"></textarea>
														<input type="hidden" class="form-control" name="proNum" value="${product.detail.proNum }">
														<input type="hidden" class="form-control" name="memId" value="${pageContext.request.userPrincipal.name}"><br>														
													</div>
												</div>
												</form>
											    <div class="modal-footer">
													<div class="button notice-btn">
												        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
														<button form="frminsertReview" type="button" class="btn search-btn btninsertReview" data-dismiss="modal">등록</button>												
													</div> 
												</div>										
											</div>
										</div>
									</div>
									<!-- 공지사항 등록 버튼 끝 -->
                          		</h4>
								<!-- review 시작 -->
								<div class="client-text">                                
                                    <p>접근성이 좋고 공간에 들어섰을때 아늑한 분위기가 너무 좋았습니다.</p>
                                    <h4><strong>USER1 </strong></h4>
                                </div>
                                <div class="client-text">                                
                                    <p>깔끔하고 무료로 마실수 있어서 좋았어요 또 이용할 생각입니다</p>
                                    <h4><strong>USER5 </strong></h4>
                                </div>
                                <div class="client-text">                                
                                    <p>넘 좋았어요 음료 1개 주는게 좋네요 다음에도 이용할게요</p>
                                    <h4><strong>USER3 </strong></h4>
                                </div>
                            </div>
                            
	<script>
		$(".btninsertReview").click(ckinsertForm);
		function ckinsertForm() {
			var revContentsLength = $("[name=revContents]").val().trim().length;
			
			if(revContentsLength < 1){
				alert("내용을 입력하세요.")
      			$(this.form.hostAnswer).focus()
      			$(this.form.hostAnswer).val("")
      			return false;
			}
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	</script>