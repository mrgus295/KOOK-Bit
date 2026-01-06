package com.kookbit.common.api.code;

import org.springframework.http.HttpStatus;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@Getter
public enum SuccessCode {

	/*
	 * 100-level (정보): 서버가 요청을 알아 들었습니다.   
	 * 200-level(성공): 서버가 요청을 예상한대로 완료했습니다.  
	 * 300-level(리다이렉션): 요청을 완료하려면 클라이언트의 추가작업이 필요합니다.   
	 * 400-level(클라이언트 에러): 클라이언트가 유효하지않은 요청을 했습니다.   
	 * 500-level(서버 에러): 서버가 서버 에러 때문에 유효한 요청을 수행하지 못했습니다.
	 */
	
	// 200 SUCCESS
	SUCCES(HttpStatus.OK, "SUCESS") 
	;
	
	private final HttpStatus httpStatus;
	private final String message;
	
	
	public int getHttpStatusCode() {
		return httpStatus.value();
	}
}
