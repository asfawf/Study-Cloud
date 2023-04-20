<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/module/link.jsp" %>
</head>
<body>
<%@ include file="/WEB-INF/views/module/header2.jsp" %>

<section>

        <!-- Body content -->

        <div class="slider-area" >
            <div class="slider-content">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
                        <div class="search-form wow pulse" data-wow-delay="0.8s">
                            <form action="" class=" form-inline">
                                <div class="form-group">                                   
                                    <select id="lunchBegins" class="form-control" data-live-search="true" data-live-search-style="begins" title="내 공간 목록">
	
                                        <option>New york, CA</option>
                                        <option>Paris</option>
                                        <option>Casablanca</option>
                                        <option>Tokyo</option>
                                        <option>Marraekch</option>
                                        <option>kyoto , shibua</option>
                                    </select>
                                </div>
                                
                                <button class="btn search-btn" type="submit"><i class="fa fa-search"></i></button>

                            </form>
                        </div>
                    </div>
                    
                </div>


                <!-- 테이블구역 -->
 <div class="container" style="color: black; margin-top: 40px;" >
    <table class="table table-striped" border="1px">
       <thead>
        <tr>
            <th colspan="2">아이디</th>
            <th>Q&A 내용</th>
            <th colspan="1">답변관리</th>
        </tr>
    </thead>
    <tbody>
    <c:forEach items="${qnaList }" var="list">    
        <tr>
            <td  colspan="2">${list.memId}</td>
            <td>${list.memQuestion}<button>삭제</button></td>
            <td  colspan="1">
            <button>답변</button>
            <button>수정</button>
            <button>삭제</button></td>
        </tr>
     </c:forEach>
    </tbody>
    </table>
            </div>

        </div>
 
</div>


</section>
<%@ include file="/WEB-INF/views/module/footer.jsp" %>


</body>
</html>