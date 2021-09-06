package com.springtutorials.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springtutorials.entity.ProductEntity;
import com.springtutorials.repository.IProductRepository;

@Service
@Transactional
public class ProductService {
	
	@Autowired private IProductRepository productRepository;
	
	public List<ProductEntity> findAll(){
		return productRepository.findAll();
	}
	
	public ProductEntity findOne(String id) {
		return productRepository.findOne(id);
	}
	
	public void update(ProductEntity product) {
		if(productRepository.exists(product.getId())) {
			productRepository.saveAndFlush(product);
		}
	}
	
	public void delete(String id) {
		productRepository.delete(id);
	}
	
	public long count() {
		return productRepository.count();
	}
	
	public void save(ProductEntity product) {
		productRepository.saveAndFlush(product);
	}
}
