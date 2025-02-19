package com.kookbit;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.servers.Server;
import io.swagger.v3.oas.annotations.servers.ServerVariable;

@OpenAPIDefinition(servers = {@Server(url = "http://localhost:8888" , description = "KOOK Bit OpenAPI")})
@SpringBootApplication
public class KookBitApplication {

	public static void main(String[] args) {
		SpringApplication.run(KookBitApplication.class, args);
	}

}
