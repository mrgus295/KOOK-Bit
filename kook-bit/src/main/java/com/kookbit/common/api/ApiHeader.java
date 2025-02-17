package com.kookbit.common.api;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public class ApiHeader {
	@Schema(description = "HTTP 요청 결과 코드")
	private int code;
	@Schema(description = "HTTP 요청 결과 메세지")
	private String message;
}
