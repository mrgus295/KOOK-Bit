package com.kookbit.api.openapi.service;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.kookbit.common.api.ApiResponse;
import com.kookbit.common.api.code.ErrorCode;
import com.kookbit.common.api.code.SuccessCode;

@Service
public class UpbitAPIService {

	private static final Logger logger = LoggerFactory.getLogger(UpbitAPIService.class);
	
	/* 
	 * summary: "시세 종목 조회 API"
	 * description: "업비트 거래 가능 종목 목록"
	 */
	public ApiResponse<Object> getMarket(boolean is_details) {
		String url = "https://api.upbit.com/v1/market/all?is_details={is_details}";
		ResponseEntity<String> response = new RestTemplate().getForEntity(url, String.class, Map.of("is_details", is_details));
		String result = response.getBody();
		logger.info("{} {} --> {}", url, is_details, response.getStatusCode().value());
		if(response.getStatusCode().value() == 200)
			return ApiResponse.success(SuccessCode.SUCCES, result);
		else
			return ApiResponse.fail(ErrorCode.BAD_REQUEST, ErrorCode.BAD_REQUEST.getMessage());
	}

	/* 
	 * summary: "마켓 단위 현재가 정보"
	 * description: "마켓 단위 종목들의 스냅샷을 반환한다."
	 */
	public ApiResponse<Object> getTicker(String type) {
		String url = "https://api.upbit.com/v1/ticker/all?quote_currencies={quote_currencies}";
		ResponseEntity<String> response = new RestTemplate().getForEntity(url, String.class
				, Map.of("quote_currencies", type));
		String result = response.getBody();
		
		logger.info("{} {} --> {}", url, type, response.getStatusCode().value());
		return ApiResponse.success(SuccessCode.SUCCES, result);
	}

	public ApiResponse<Object> getMarket(String name) {
		String url = "https://api.upbit.com/v1/ticker?markets={markets}";
		ResponseEntity<String> response = new RestTemplate().getForEntity(url, String.class
				, Map.of("markets", name));
		logger.info("{} {} --> {}", url, name, response.getStatusCode().value());
		String result = response.getBody();
		return ApiResponse.success(SuccessCode.SUCCES, result);
	}
	
}
