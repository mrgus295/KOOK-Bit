package com.kookbit.common.api;

import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

public class ResponseBuilder {
	
	/* 
	 *	일반 응답 생성
	 */
	public static ResponseEntity<Object> builder(String message, HttpStatus httpStatus, Object object){
		Map<String, Object> response = new LinkedHashMap<>();
		response.put("status", httpStatus.value());
		response.put("message", message);
		response.put("data", object);
		return new ResponseEntity<Object>(response, httpStatus);
	}
	
	/* 
	 *	성공 응답 생성
	 */
	public static ResponseEntity<Object> success(String message, HttpStatus httpStatus, Object object){
		Map<String, Object> response = new LinkedHashMap<>();
		response.put("status", httpStatus.value());
		response.put("message", message);
		response.put("data", object);
		return new ResponseEntity<Object>(response, httpStatus);
	}
	
	/* 
	 *	실패 응답 생성
	 */
	public static ResponseEntity<Object> error(String message, HttpStatus httpStatus, Object object){
		Map<String, Object> response = new LinkedHashMap<>();
		response.put("status", httpStatus.value());
		response.put("message", message);
		response.put("data", object);
		return new ResponseEntity<Object>(response, httpStatus);
	}
}
