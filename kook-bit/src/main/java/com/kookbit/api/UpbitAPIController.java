package com.kookbit.api;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.kookbit.common.api.ApiResponse;
import com.kookbit.common.api.code.ErrorCode;
import com.kookbit.common.api.code.SuccessCode;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.enums.ParameterIn;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/api")
@RestController
public class UpbitAPIController {
	
	private static final Logger logger = LoggerFactory.getLogger(UpbitAPIController.class);
	
	// 차트 종류
	// TODO: https://www.chartjs.org/chartjs-chart-financial/
	
	@Operation(summary = "시세 종목 조회 API", description = "업비트 거래 가능 종목 목록")
	@GetMapping("/markets")
	@ResponseBody
	public ApiResponse<Object> getMarket(
			@Parameter(name = "is_details", description = "상세정보 표시", example = "true", in = ParameterIn.QUERY)
			@RequestParam("is_details")
			boolean is_details) throws Exception{
		String url = "https://api.upbit.com/v1/market/all?is_details={is_details}";
		ResponseEntity<String> response = new RestTemplate().getForEntity(url, String.class, Map.of("is_details", is_details));
		String result = response.getBody();
		log.info("{} {} --> {}", url, is_details, response.getStatusCode().value());
		if(response.getStatusCode().value() == 200)
			return ApiResponse.success(SuccessCode.SUCCES, result);
		else
			return ApiResponse.fail(ErrorCode.BAD_REQUEST, ErrorCode.BAD_REQUEST.getMessage());
	}
	
	@Operation(summary = "마켓 단위 현재가 정보", description = "마켓 단위 종목들의 스냅샷을 반환한다.")
	@GetMapping("/ticker/{type}")
	@ResponseBody
	public ApiResponse<Object> getTicker(
			@Parameter(name = "type", description = "반점으로 구분되는 화폐 거래 코드", example = "KRW", in = ParameterIn.DEFAULT)
			@PathVariable(name="type") String type) {
		String url = "https://api.upbit.com/v1/ticker/all?quote_currencies={quote_currencies}";
		ResponseEntity<String> response = new RestTemplate().getForEntity(url, String.class
				, Map.of("quote_currencies", type));
		String result = response.getBody();
		log.info("{} {} --> {}", url, type, response.getStatusCode().value());
		return ApiResponse.success(SuccessCode.SUCCES, result);
	}
	
	@Operation(summary = "종목 단위 현재가 정보", description = "요청 당시 종목의 스냅샷을 반환한다.")
	@GetMapping("/markets/{name}")
	@ResponseBody
	public ApiResponse<Object> getMarket(
			@Parameter(name = "name", description = "반점으로 구분되는 거래 화폐 코드", example = "KRW-BTC", in = ParameterIn.DEFAULT)
			@PathVariable(name="name") String name) throws Exception{
		String url = "https://api.upbit.com/v1/ticker?markets={markets}";
		ResponseEntity<String> response = new RestTemplate().getForEntity(url, String.class
				, Map.of("markets", name));
		log.info("{} {} --> {}", url, name, response.getStatusCode().value());
		String result = response.getBody();
		return ApiResponse.success(SuccessCode.SUCCES, result);
	}
}
