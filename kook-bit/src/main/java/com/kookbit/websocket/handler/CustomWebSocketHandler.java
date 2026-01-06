package com.kookbit.websocket.handler;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.kookbit.api.openapi.service.UpbitAPIService;
import com.kookbit.websocket.service.WebSocketService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
public class CustomWebSocketHandler extends TextWebSocketHandler{
	
	private static final Logger log = LoggerFactory.getLogger(CustomWebSocketHandler.class);
	
//	private Map<String, WebSocketSession> sessionMap = new LinkedHashMap<String, WebSocketSession>();
	
	@Autowired
	private WebSocketService socketService;
	@Autowired
	private UpbitAPIService upbitService;
	
	// 웹 소켓 세션 connection 연결될 때
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		//소켓 연결
		super.afterConnectionEstablished(session);
		// 메세지 길이제한 8192 =>52428800 변경(메세지 길이 제한으로 인해 웹소켓 연결 종료되는 사항 보완.)
		session.setTextMessageSizeLimit(50*1024*1024);
		log.info("Connect --> {}", session);
//		sessionMap.put(session.getId(), session);
	}
	
	// 웹 소켓 세션 connection 종료될 때	
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		super.afterConnectionClosed(session, status);
		log.info("DisConnect --> {}", session.getId());
//		sessionMap.remove(session.getId());
	}
	
	// 메세지 수신 후 전송
	public void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception{
		if(session.isOpen()) {
			String receive = message.getPayload();
			JSONParser parser = new JSONParser();
			JSONArray receiveMessage = (JSONArray) parser.parse(receive);
			String ticket = String.valueOf(((JSONObject) receiveMessage.get(0)).get("ticket"));
			String type = String.valueOf(((JSONObject) receiveMessage.get(1)).get("type"));
			log.info("Server receive message --> {}", message.getPayload());
			log.info("receiveMessage.ticket --> {}",  ticket);
			log.info("receiveMessage.type --> {}", type);
			log.info("ticker --> {} {}", type, upbitService.getTicker(type).getData());
			String response = upbitService.getTicker(type).getData().toString();
			log.info("Server response message --> {}", response);
			socketService.sendMessage(session, response);
		} 
	}
	
	// 웹소켓 통신 에러
	@Override
	public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
		super.handleTransportError(session, exception);
		log.error("WebSocket Error --> {}", exception);
//		sessionMap.remove(session.getId());
	}

}
