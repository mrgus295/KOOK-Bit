package com.kookbit.common.api.code;

import lombok.Getter;

import org.springframework.http.HttpStatus;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@Getter
public enum ErrorCode {
	
	/*
	 * 100-level (정보): 서버가 요청을 알아 들었습니다.   
	 * 200-level(성공): 서버가 요청을 예상한대로 완료했습니다.  
	 * 300-level(리다이렉션): 요청을 완료하려면 클라이언트의 추가작업이 필요합니다.   
	 * 400-level(클라이언트 에러): 클라이언트가 유효하지않은 요청을 했습니다.   
	 * 500-level(서버 에러): 서버가 서버 에러 때문에 유효한 요청을 수행하지 못했습니다.
	 */
	
	// 400 Bad Request
    BAD_REQUEST(HttpStatus.BAD_REQUEST, "잘못된 요청입니다."),

    // 403 Forbidden
    FORBIDDEN(HttpStatus.FORBIDDEN, "권한이 없습니다."),

    // 404 Not Found
    USER_NOT_FOUND(HttpStatus.NOT_FOUND, "사용자를 찾을 수 없습니다."),
    // 405 Method Not Allowed
    METHOD_NOT_ALLOWED(HttpStatus.METHOD_NOT_ALLOWED, "허용되지 않은 메소드입니다."),

    // 409 Conflict
//    USER_ALREADY_EXIST(HttpStatus.CONFLICT, "이미 가입한 사용자입니다."),
//    USER_NAME_ALREADY_EXIST(HttpStatus.CONFLICT, "이미 존재하는 닉네임입니다."),

    // 500 Internal Server Error
    INTERNAL_SERVER_ERROR(HttpStatus.INTERNAL_SERVER_ERROR, "서버에 오류가 발생하였습니다.")
    
    ;
	
    private final HttpStatus httpStatus;
    private final String message;

    public int getHttpStatusCode() {
        return httpStatus.value();
    }
	
}
