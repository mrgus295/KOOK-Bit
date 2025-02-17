package com.kookbit.common.api;

import com.kookbit.common.api.code.ErrorCode;
import com.kookbit.common.api.code.SuccessCode;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public class ApiResponse<T> {

	@Schema(description = "HTTP Header")
	private ApiHeader header;
	@Schema(description = "HTTP Body")
	private T data;
	@Schema(description = "HTTP Detail Message")
	private String msg;
	
	public ApiResponse(ApiHeader header, T data) {
		this.header = header;
		this.data = data;
	}
	
	public static <T> ApiResponse<T> success(SuccessCode successCode, T data) {
		return new ApiResponse<T>(new ApiHeader(successCode.getHttpStatusCode(), successCode.getMessage()), data);
	}
	
	public static <T> ApiResponse<T> success(SuccessCode successCode, T data, String msg) {
		return new ApiResponse<T>(new ApiHeader(successCode.getHttpStatusCode(), successCode.getMessage()), data, msg);
	}
	
	public static <T> ApiResponse<T> fail(ErrorCode errorCode, T data) {
		return new ApiResponse<T>(new ApiHeader(errorCode.getHttpStatusCode(), errorCode.getMessage()), data);
	}
	
	public static <T> ApiResponse<T> fail(ErrorCode errorCode, T data, String msg) {
		return new ApiResponse<T>(new ApiHeader(errorCode.getHttpStatusCode(), errorCode.getMessage()), data, msg);
	}
}
