package com.springtutorials.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan("com.springtutorials.*")
public class ApplicationContextConfig {

	@Bean
	public InternalResourceViewResolver getViewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver("/WEB-INF/views/", ".jsp");
		return resolver;
	}
	
	
}
