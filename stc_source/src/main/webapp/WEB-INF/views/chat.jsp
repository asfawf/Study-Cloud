<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>웹소켓 채팅</title>

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
					$('#divChatData').append('<div align="left" class="wrap">' + msgData.sender + '<div class="messageformleft" style="max-width: 300px;">' + msgData.msg + '</div>' + '<div class="chatTime">'+ msgData.formatedNow+'</div>' +'</div>');	
				}
				else if(msgData.division== "${standname }" ){
					$('#divChatData').append('<div align="right" class="wrap">'+ msgData.sender +'<div class="chatTime">'+ msgData.formatedNow + '</div>' + '<div class="messageformright" style="max-width: 300px;">' + msgData.msg +'</div>' +'</div>');	
				}
			}
			// 입장
			else if (msgData.cmd == 'CMD_ENTER') {
				$('#divChatData').append('<div align="center ">' + msgData.msg + '</div>');
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

#chatWrap {
    width: 600px;
    border: 1px solid #ddd;
}

#chatLog {
    height: 700px;
    overflow-y: auto;
    padding: 10px;
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
#contentCover{
    width: 1280px;
    margin: 0 auto;
    padding-top: 20px;
    display: flex;
    justify-content: space-around;
}

#chatHeader {
    height: 60px;
    text-align: center;
    line-height: 60px;
    font-size: 25px;
    font-weight: 900;
    border-bottom: 1px solid #ddd;
}

</style>
<body>
 <div id="contentCover">
	<div id="chatWrap">
		<div id="chatLog" >
			<div id="divChatData" style="top: 10px"></div>
		</div>
		<div id="chatForm" class="input-group mb-3">
			<input type="hidden" id="division" onkeypress="if(event.keyCode==13){webSocket.sendChat();}" value="${standname }" />
			<input type="text" autocomplete="off" id="message" class="message" size="30" onkeypress="if(event.keyCode==13){webSocket.sendChat();}" />
			<input type="button"id="btnSend" value="채팅 전송" onclick="webSocket.sendChat()" />			
		</div>
	</div>		
</div>
</body>
</html>