package com.fightbook.adminManager.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;

@Configuration
public class SwaggerConfiguration {
	@Bean
	public Docket mySwaggerConfiguration() {
		return new Docket(DocumentationType.SWAGGER_2)
				.select()
				.paths(PathSelectors.ant("/flight/**"))
				.apis(RequestHandlerSelectors.basePackage("com.fightbook.adminManager"))
				.build()
				.apiInfo(apiInfo())
				;
	}

	private ApiInfo apiInfo() {
		return new ApiInfoBuilder()
				.title("Admin Manager API")
				.description("MicroService Handling Admin Operations")
				.version("5.4")
				.contact(new Contact("Tejaswaroop", "https://www.localhost:4200/user/DashBoard/bookfights", "teja@gmail.com"))
				.build()
				;
	}

}
