package com.springtutorials.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.springtutorials.constant.SystemConstant;
import com.springtutorials.entity.ProductEntity;
import com.springtutorials.service.impl.CategoryService;
import com.springtutorials.service.impl.ProductService;

@RestController
public class ProductController {

	@Autowired private ProductService productService;
	@Autowired private CategoryService categoryService;
	
	@GetMapping(value = {"/", "/admin"}, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ModelAndView display(Model model) {
		model.addAttribute(SystemConstant.PRODUCTS, productService.findAll());
		model.addAttribute(SystemConstant.CATEGORIES, categoryService.findAll());
		model.addAttribute("count", productService.count());
		model.addAttribute("account", SystemConstant.ACCOUNT);
		return new ModelAndView("admin/product/display");
	}
	
	@GetMapping(value = {"/admin/products/{id}/product"}, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ModelAndView detail(Model model, @PathVariable(name = "id") String id) {
		model.addAttribute(SystemConstant.PRODUCT, productService.findOne(id));
		return new ModelAndView("admin/product/detail");
	}
	
	@PostMapping(value = {"/admin/products/product"}, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public void insert(@RequestBody ProductEntity product) {
		productService.save(product);
	}
	
	@PutMapping(value = {"/admin/products/product"}, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public void update(@RequestBody ProductEntity product) {
		productService.update(product);
	}
	
	@DeleteMapping(value = {"/admin/products/product"}, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public void delete(@RequestBody ProductEntity product) {
		productService.delete(product.getId());
	}
}
