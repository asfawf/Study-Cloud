<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&A 관리</title>
<%@ include file="/WEB-INF/views/module/link.jsp" %>
<script src="https://code.jquery.com/jquery-3.6.3.js" ></script>
</head>
<body>
<%@ include file="/WEB-INF/views/module/header2.jsp" %>

<section>
	
        <!-- selectedProNum -->

        <div class="slider-area" >
            <div class="slider-content">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
                        <div class="">
                            <form action="" class="form-inline">
                                <div class="form-group">                                   
                                    <select name="selectedProNum" id="selectedProNum" class="form-control" title="내 공간 목록">
										<c:forEach items="${hostQna.productList }" var="product"> 	
				                        	<option value="${product.proNum }" >${product.proName }</option>
										</c:forEach>
                                    </select>
                                </div>
                            </form>
                        </div>
                    </div>                    
                </div>


                <!-- 테이블구역 -->
				<div class="container" style="color: black; margin-top: 40px;" >
					<table class="table table-striped" border="1px">
						<thead>
				    		<tr>
						        <th colspan="1" class="text-center">아이디</th>
						        <th colspan="4" class="text-center">Q&A 내용</th>
						        <th colspan="1" class="text-center">답변관리</th>
				    		</tr>
						</thead>
						<tbody id="qList">

						</tbody>
					</table>
				</div>
				
				<!-- qna 페이징 -->
	            <div class="col-md-12 clear"> 
					<div class="text-center">
	    				<div class="pagination">
	        				<ul class="pagination-sm">
								<!-- <li><a class="disabled pe-7s-angle-left"></a></li>
								<li><a class="disabled pe-7s-angle-right"></a></li> -->
	            			</ul>
	        			</div>
	    			</div>                
				</div>					                    
        	</div> 
        </div>


<script>
	var selectedProNum = '${hostQna.selectedProNum}';
	$("#selectedProNum").val(selectedProNum).prop("selected", true);
	
	getQnaListHandler();
	
	$("#selectedProNum").change(getQnaListHandler);

	
	function getQnaListHandler(){
		console.log($("[name=selectedProNum]").val());
		
		var page = $(this).data("page");
		if(!page){
			page=1;
		}

		$.ajax({
			 url: "${pageContext.request.contextPath}/host/qna"
		   , type: "POST"
		   , data: {selectedProNum: $("[name=selectedProNum]").val()
					,page: page
		   			}
			 
		   , dataType: "json"  
      	   , success: function (result) { 
      			displayQnaList(result);
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
	function displayQnaList(result){
		var htmlVal = '';
		for(var i = 0; i < result.qnaList.length; i++){
			var qna = result.qnaList[i];
			htmlVal += '<tr>';
			htmlVal += '<td colspan="1">'+qna.memId+'</td>';
			htmlVal += '<td colspan="4">'+qna.memQuestion+'<button class="pull-right">삭제</button></td>';
			htmlVal += '<td colspan="1">';
			htmlVal += '<button>답변</button>&nbsp';
			htmlVal += '<button>수정</button>&nbsp';
			htmlVal += '<button>삭제</button></td>';
			htmlVal += '</tr>';
		}
		$("tbody[id=qList]").html(htmlVal);
		var selectedProNum = result.selectedProNum;
		$("#selectedProNum").val(selectedProNum).prop("selected", true);
		
		displayPaging(result);
	}
	
	function displayPaging(result){
		var htmlVal = '';
		htmlVal += '<ul class="pagination-sm">';
    				if(result.pageInfo.currentPage == 1){
		htmlVal +='				<li><a class="disabled pe-7s-angle-left"></a></li>';
    				} else {
		htmlVal +='				<li><a class="pe-7s-angle-left" data-pronum="'+result.selectedProNum+'" data-page="'+(result.pageInfo.currentPage - 1)+'"></a></li>';
    				}
    				for(var i = result.pageInfo.startPage; i <= result.pageInfo.endPage; i++){
    					
		htmlVal +='				<li><a data-pronum="'+result.selectedProNum+'" data-page="'+i+'">'+i+'</a></li>';
    				}
					if(result.pageInfo.currentPage == result.pageInfo.endPage){
		htmlVal +='				<li><a class="disabled pe-7s-angle-right"></a></li>';
    				} else {
		htmlVal +='				<li><a class="pe-7s-angle-right" data-pronum="'+result.selectedProNum+'" data-page="'+(result.pageInfo.currentPage + 1)+'"></a></li>';
    				}
		htmlVal += '</ul>';
		$(".pagination").html(htmlVal);
		$(".pagination a:not(.disabled)").click(getQnaListHandler);
	}
	

</script>

</section>
<%@ include file="/WEB-INF/views/module/footer.jsp" %>
<style>
.table.table-striped {
	table-layout:fixed;
}
.pagination a:not(.disabled) {
	cursor: pointer;
}
</style>
</body>
</html>