package study.cloud.stc.chat;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

public class EchoHandler extends TextWebSocketHandler{
	
	// 멀티쓰레딩 환경에서 사용하는 리스트(쓰기 작업용을 별도로 복사해서 만들어놓음 -> 동기화 성능저하를 방지해줌)
	List<WebSocketSession> sessionList= new CopyOnWriteArrayList<>();
	
	/**
	 * @OnOpen
	 */
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception{

		sessionList.add(session);
		
		System.out.println("[add 현재 세션수 {"+ sessionList.size() +"}] { " + session.getId()+ "}" );
		
	}
	
	/**
	 * @OnClose
	 */
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception{
		
		sessionList.remove(session);
		
		System.out.println("[remove 현재 세션수 {"+ sessionList.size() +"}] { " + session.getId()+ "}" );
	}
	
	/**
	 * @OnMessage
	 */
	@Override
	public void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception{
		System.out.println("[message] {"+ session.getId() +"} : { " + message.getPayload()+ "}" );
		
		for(WebSocketSession sess : sessionList) {
			// 세션 + 내용
			sess.sendMessage(new TextMessage(session.getId() + ":" + message.getPayload()));
			
			/*
			 * 내용만 
			 * sess.sendMessage(new TextMessage(message.getPayload()));
			 */
		}
	}
	
}
