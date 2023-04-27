<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/module/link.jsp"%>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<meta charset="UTF-8">
<title>웹소켓 채팅</title>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.js"></script>
<script type="text/javascript">
	var webSocket = {
		init : function(param) {
			this._url = param.url;
			this._initSocket();
		},
		sendChat : function() {
			this._sendMessage('${param.room_id}', 'CMD_MSG_SEND', $('#message').val(), $('#division').val() );
			$('#message').val('');
		},
		sendEnter : function() {
			this._sendMessage('${param.room_id}', 'CMD_ENTER', $('#message').val(), $('#division').val() );
			$('#message').val('');
		},
		receiveMessage : function(msgData) {

			// 정의된 CMD 코드에 따라서 분기 처리
			if (msgData.cmd == 'CMD_MSG_SEND') {
				if(msgData.division!= "${standname }" ){
					$('#divChatData').append('<div align="left" class="wrap" >' + msgData.sender + '<div class="messageformleft" style="max-width: 300px;">' + msgData.msg + '</div>' + '<div class="chatTime">'+ msgData.formatedNow+'</div>' +'</div>');	
				}
				else if(msgData.division== "${standname }" ){
					$('#divChatData').append('<div align="right" class="wrap">'+ msgData.sender +'<div class="chatTime">'+ msgData.formatedNow + '</div>' + '<div class="messageformright" style="max-width: 300px;">' + msgData.msg +'</div>' +'</div>');	
				}
			}
			// 입장
			else if (msgData.cmd == 'CMD_ENTER') {
				$('#divEnterChatData').append('<div align="center ">' + msgData.msg + '</div>');
			}
			// 퇴장
			else if (msgData.cmd == 'CMD_EXIT') {
				$('#divChatData').append('<div align="center ">' + msgData.msg + '</div>');
			}
		},
		closeMessage : function(str) {
			$('#divChatData').append('<div align="center ">' + '연결 끊김 : ' + str + '</div>');
		},
		disconnect : function() {
			this._socket.close();
		},
		_initSocket : function() {
			this._socket = new SockJS(this._url);
			this._socket.onopen = function(evt) {
				webSocket.sendEnter();
			};
			this._socket.onmessage = function(evt) {
				webSocket.receiveMessage(JSON.parse(evt.data));
			};
			this._socket.onclose = function(evt) {
				webSocket.closeMessage(JSON.parse(evt.data));
			}
		},
		_sendMessage : function(room_id, cmd, msg, division, formatedNow, sender) {
			var msgData = {
				room_id : room_id,
				cmd : cmd,
				msg : msg,
				division : division,
				formatedNow : formatedNow,
				sender : sender
			};
			var jsonData = JSON.stringify(msgData);
			this._socket.send(jsonData);
		}
	};
	
	
	
</script>
<script type="text/javascript">
	$(window).on('load', function() {
		webSocket.init({
			url : '<c:url value="/chat" />'
		});
	});
</script>
</head>

<style>


.chatTime {
  display: inline-block;
  position: relative;
  top: 11px;
  color: #171717;
  font-size: 9px;
}

.messageformleft{
	position: relative;
    display: inline-block;
    max-width: calc(100% - 70px);
    padding: 10px;
    margin-top: 7px;
    margin-right: 20px;
    border-radius: 10px;
    font-size: 13px;
    background-color: #ddd;
}

.messageformright{
	position: relative;
    display: inline-block;
    max-width: calc(100% - 70px);
    padding: 10px;
    margin-top: 7px;
    margin-left: 20px;
    border-radius: 10px;
    font-size: 13px;
    background-color: #F9EB54;
}

.wrap {
    	word-break: break-all;
      	word-wrap: normal;

      }

/* #chatWrap {
    width: 600px;
    border: 1px solid #ddd;
} */

.page-head{
	background: #f6f6f6;
}


 #chatLog {
 	padding-right:2%;
 	padding-bottom:90px;
    height: 700px;
    overflow-y: auto;
} 

#chatForm {
    display: block;
    width: 100%;
    height: 50px;
    border-top: 2px solid #f0f0f0;
}

#message{
 	width: 85%;
    border: none;
    padding-bottom: 0;
    height: calc(100% - 1px);
    
}

#message:focus {
    outline: none;
}

#chatForm > input[type=button] {
	float: right;
	height: 99%;
    outline: none;
    border: none;
    background: none;
    color: #0084FF;
    font-size: 17px;
  	border-top: 25px;    
}

/* 
#contentCover{
    width: 1280px;
    margin: 0 auto;
    padding-top: 20px;
    display: flex;
    justify-content: space-around;
} */

/* 
#chatHeader {
    height: 60px;
    text-align: center;
    line-height: 60px;
    font-size: 25px;
    font-weight: 900;
    border-bottom: 1px solid #ddd;
}
 */
#divChatData{
	border-top: 25px;    
	border-bottom: 20px;
}

</style>

<script>

	$( document ).ready( function() {
	    $( 'input[type=button]' ).click( function() {
	      $( '.chatLog' ).scrollTop($('.chatLog')[0].scrollHeight);
	    } );
	  } );
	
	$( document ).ready( function() {
	      $( '.chatLog' ).scrollTop($('.chatLog')[0].scrollHeight);
	  } );
	/*
	$(document).height()  
	$('.chatLog')[0].scrollHeight
	*/
</script>


<body>
<%@ include file="/WEB-INF/views/module/header2.jsp" %> 
<section style="background: #f6f6f6;">
	<div class="count-area" style="background: #f6f6f6;">
		<div class="container" style="background: #f6f6f6;">
			<div class="row">
				<div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
					<h2 style="">채팅</h2>
				</div>
			</div>
		</div>
	</div>
	<div class="register-area">
		<div class="container">
			<sec:authorize access="hasRole('ADMIN')">
				<div class="col-md-4" style="background-color: red;">
					<div class="box-for overflow row">
						<div class="col-md-12 col-xs-12 container">
							<div class="room-list-head row">
								<div class="col-md-6" style="background-color: blue;">s</div>
								<div class="col-md-6" style="background-color: yellow;">참여한 대화 방 개수</div>
								<div class="col" style="background-color: green;">c</div>
							</div>
							<div class="room-list">
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-8">
				<div class="box-for overflow">
					<div class="col-md-12 col-xs-12 login-blocks">
						 <hr>
						 <div id="chatLog" class="chatLog" style="overflow-y: scroll; ">
						 	<div id="divEnterChatData" ></div>
							<c:forEach items="${chatt }" var="chat">
								<c:if test="${chat.memId eq standname}">
									<div style="display: inline-block; width: 100%">									
										<div align="right" style=" 
										word-break: break-all;
      									word-wrap: normal;
										float: right;
										padding: 10px;
										width: max-content;
										max-width: 300px;
										margin-left: 53%; 
										margin-top: 7px; 
										border-radius: 10px; 
										font-size: 13px; 
										background-color: #F9EB54;">  ${chat.chaContents } </div>
									</div>
								</c:if>
								<c:if test="${chat.memId ne standname}">
									<div style="display: inline-block; width: 100%">
										<div align="left" style="
										padding: 10px;
										word-break: break-all;
      									width:max-content;
										max-width: 300px;
										margin-top: 7px; 
										border-radius: 10px;
										font-size: 13px;  background-color: #ddd;"> ${chat.chaContents } </div>
									</div>
								</c:if>	
							</c:forEach>
							<!-- 여기가 문장 저장 되는 곳 -->
							<div id="divChatData" ></div>
						</div>
						<div id="chatForm" style="" class="container" onsubmit="return false">
								<div style="margin-top: 10px;">								
									<div style="display: inline-block; width: 80%;" > 
										<input style="width: 100%;" type="text" autocomplete="off" id="message" class="message " size="30" onkeypress="if(event.keyCode==13){webSocket.sendChat();}" />						
									</div>
									<div style="display: inline-block; width: 20%; float: right;">
										<input style="width: 100%; background-color: white; color: #0000ff;" type="button"  id="btnSend" class="btnSend" value="채팅전송" onclick="webSocket.sendChat()" />							
									</div>
								</div>
								<input type="hidden" id="division" onkeypress="if(event.keyCode==13){webSocket.sendChat();}" value="${standname }" />			
						</div>
					</div>
				</div>
				</div>
			</sec:authorize>
			
			
			<sec:authorize access="hasRole('USER')">
				<div class="col-md-8 col-md-offset-2">
				<div class="box-for overflow">
					<div class="col-md-12 col-xs-12 login-blocks container">
						 <hr>
						 <div id="chatLog" class="chatLog" style="overflow-y: scroll; ">
						 	<div id="divEnterChatData" ></div>
							<c:forEach items="${chatt }" var="chat">
								<c:if test="${chat.memId eq standname}">
									<div style="display: inline-block; width: 100%">									
										<div align="right" style=" 
										word-break: break-all;
      									word-wrap: normal;
										float: right;
										padding: 10px;
										width: max-content;
										max-width: 300px;
										margin-left: 53%; 
										margin-top: 7px; 
										border-radius: 10px; 
										font-size: 13px; 
										background-color: #F9EB54;">  ${chat.chaContents } </div>
									</div>
								</c:if>
								<c:if test="${chat.memId ne standname}">
									<div style="display: inline-block; width: 100%">
										<div align="left" style="
										padding: 10px;
										word-break: break-all;
      									width:max-content;
										max-width: 300px;
										margin-top: 7px; 
										border-radius: 10px;
										font-size: 13px;  background-color: #ddd;"> ${chat.chaContents } </div>
									</div>
								</c:if>	
							</c:forEach>
							<!-- 여기가 문장 저장 되는 곳 -->
							<div id="divChatData" ></div>
						</div>
						<div id="chatForm" style="" class="container" onsubmit="return false">
								<div style="margin-top: 10px;">								
									<div style="display: inline-block; width: 80%;" > 
										<input style="width: 100%;" type="text" autocomplete="off" id="message" class="message " size="30" onkeypress="if(event.keyCode==13){webSocket.sendChat();}" />						
									</div>
									<div style="display: inline-block; width: 20%; float: right;">
										<input style="width: 100%; background-color: white; color: #0000ff;" type="button"  id="btnSend" class="btnSend" value="채팅전송" onclick="webSocket.sendChat()" />							
									</div>
								</div>
								<input type="hidden" id="division" onkeypress="if(event.keyCode==13){webSocket.sendChat();}" value="${standname }" />			
						</div>
					</div>
				</div>
				</div>
			</sec:authorize>
 			
		</div>
	</div>
	
 	<%-- <div id="contentCover">
		<div id="chatWrap">
			<div id="chatLog" class="chatLog" style="overflow-y: scroll; ">
				<!-- 여기가 문장 저장 되는 곳 -->
				<div id="divChatData"  style="top: 10px;">
					<div id="divEnterChatData"  style="top: 10px;"></div>
					<c:forEach items="${chatt }" var="chat">
						<c:if test="${chat.memId eq standname}">
							<div align="right"> ${chat.chaContents } </div>
						</c:if>
						<c:if test="${chat.memId ne standname}">
							<div align="left"> ${chat.chaContents } </div>
						</c:if>	
					</c:forEach>
				</div>
			</div>
			<div id="chatForm" class="input-group mb-3" onsubmit="return false">
				<input type="hidden" id="division" onkeypress="if(event.keyCode==13){webSocket.sendChat();}" value="${standname }" />
				<input type="text" autocomplete="off" id="message" class="message" size="30" onkeypress="if(event.keyCode==13){webSocket.sendChat();}" />
				<input type="button" id="btnSend" class="btnSend" value="채팅 전송" onclick="webSocket.sendChat()" />			
			</div>
		</div>		
	</div> --%>
</section>
<%@ include file="/WEB-INF/views/module/footer.jsp"%>
</body>
</html>