package com.kookbit.websocket.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;

import com.kookbit.websocket.handler.CustomWebSocketHandler;

@Service
public class WebSocketService {

	private static final Logger log = LoggerFactory.getLogger(WebSocketService.class);
	
	/* 비동기식 호출을 통해 sendMessage 병렬 처리 */
	@Async
	public void sendMessage(WebSocketSession session, String message) throws Exception {
		if (session.isOpen()) {
			log.info("{} to {} response --> {}", "Server", session.getId(), message);
			session.sendMessage(new TextMessage(message));
		}
	}
}
