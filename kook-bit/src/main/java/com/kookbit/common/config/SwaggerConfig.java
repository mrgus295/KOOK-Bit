package com.kookbit.common.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import io.swagger.v3.oas.models.Components;
import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Info;


@Configuration
//@EnableWebMvc
//@EnableSwagger2
public class SwaggerConfig {

    private static final String API_NAME = "KOOKBit API";
    private static final String API_VERSION = "0.0.1";
    private static final String API_GROUP = "KOOKBit API";
    private static final String API_DESCRIPTION = "KOOKBit API 명세서";
    private static final String API_URL = "http://localhost:8888/";
    
    /** JWT 미사용 */
    @Bean
    public OpenAPI openAPI() {
        return new OpenAPI()
                .components(new Components())
                .info(new Info()
                        .title(API_NAME) // API의 제목
                        .description(API_VERSION) // API에 대한 설명
                        .version(API_DESCRIPTION));
    }
    
}