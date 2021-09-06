package com.springtutorials.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import com.springtutorials.service.authentication.UserDetailAuthService;

@Configuration
@EnableWebSecurity
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter{

	@Autowired private UserDetailAuthService userDetailAuthService;
	
	@Autowired
	protected void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		// TODO Auto-generated method stub
		auth.inMemoryAuthentication().withUser("camelot123456").password("1").authorities("USER");
		
		auth.userDetailsService(userDetailAuthService);
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		// TODO Auto-generated method stub
		http.csrf().disable();
		
		http.authorizeRequests().antMatchers("/login", "/logout").permitAll();
		
		http.authorizeRequests().antMatchers("/","/admin/*").access("hasAnyRole('ROLE_ADMIN')");
		
		http.authorizeRequests().and().exceptionHandling().accessDeniedPage("/404");
		
		http.authorizeRequests().and().formLogin()
		.loginPage("/login").usernameParameter("username").passwordParameter("password")
		.loginProcessingUrl("/handler_security_authorizi")
		.defaultSuccessUrl("/").failureUrl("/login?error=True")
		.and().logout().logoutUrl("/logout").logoutSuccessUrl("/login");
	}
	//https://mainul35.medium.com/spring-security-demonstrating-custom-authentication-success-handler-3b6fcb572a53
	
}
