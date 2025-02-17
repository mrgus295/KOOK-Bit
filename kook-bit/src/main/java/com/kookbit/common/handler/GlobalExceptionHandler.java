package com.kookbit.common.handler;

//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.resource.NoResourceFoundException;

@ControllerAdvice
public class GlobalExceptionHandler {
	
	//private static final Logger logger = LoggerFactory.getLogger(GlobalExceptionHandler.class);
	
	
	// 모든 예외 처리
	@ExceptionHandler(Exception.class)
	@ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
	public String handleAllExceptions(Exception e, Model model) {
		e.printStackTrace();
		return "/error/error-default";
	}
	
	// 404 예외 처리
	@ExceptionHandler(NoResourceFoundException.class)
	@ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
	public String handleNotFoundExceptions(NoResourceFoundException e) {
		return "/error/404-error";
	}
	
}
