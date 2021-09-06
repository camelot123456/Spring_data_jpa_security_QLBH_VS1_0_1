package com.springtutorials.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springtutorials.entity.CategoryEntity;

public interface ICategoryRepository extends JpaRepository<CategoryEntity, String>{

}
