package com.springtutorials.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springtutorials.entity.CategoryEntity;
import com.springtutorials.repository.ICategoryRepository;

@Service
@Transactional
public class CategoryService {
	
	@Autowired private ICategoryRepository categoryRepository;
	
	public List<CategoryEntity> findAll(){
		return categoryRepository.findAll();
	}
}
