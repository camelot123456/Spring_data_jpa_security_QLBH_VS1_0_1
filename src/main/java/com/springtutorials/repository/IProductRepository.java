package com.springtutorials.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springtutorials.entity.ProductEntity;

public interface IProductRepository extends JpaRepository<ProductEntity, String>{

}
