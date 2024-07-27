package com.protech.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
// HL 24/7/2024: This annotation will cause your static resources uanble to load
// Change to use enable auto configuration instead
// @EnableWebMvc
@EnableAutoConfiguration
@EnableWebSecurity
public class StaticResourceConfig implements WebMvcConfigurer {

	@Value("${resource.staticResourceLocation}")
	private String staticResourceLocation;

	/* @Override
	public void addResourceHandlers(@SuppressWarnings("null") ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/avatar/**").addResourceLocations("file:" + staticResourceLocation);
	} */

	public void addResourceHandlers(final ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}

	// Hailong added on 24/7/2024
    @Bean
    public JavaMailSender javaMailSender() {
        return new JavaMailSenderImpl();
    }

}
