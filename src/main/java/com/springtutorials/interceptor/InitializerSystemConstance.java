package com.springtutorials.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.springtutorials.constant.SystemConstant;
import com.springtutorials.service.impl.CategoryService;
import com.springtutorials.service.impl.ProductService;

public class InitializerSystemConstance extends HandlerInterceptorAdapter{
	
	@Autowired private ProductService productService;
	@Autowired private CategoryService categoryService;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
//		request.getSession().setAttribute(SystemConstant.PRODUCTS, productService.findAll());
//		request.getSession().setAttribute(SystemConstant.CATEGORIES, categoryService.findAll());
		
		
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		System.out.println(productService.findOne("P1").getImage());
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		super.afterCompletion(request, response, handler, ex);
		
	}
}
