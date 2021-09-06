package com.springtutorials.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "CATEGORY")
public class CategoryEntity {
	
	@Id
	@Column(name = "ID")
	private String id;
	
	@Column(name = "NAME", columnDefinition = "nvarchar(128) not null")
	private String name;
	
	@Column(name = "CODE" , columnDefinition = "varchar(128) not null unique")
	private String code;
	
	@Column(name = "[IMAGE]", columnDefinition = "nvarchar(256)")
	private String image;

	@OneToMany(mappedBy = "category")
	private List<ProductEntity> products = new ArrayList<>();
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public List<ProductEntity> getProducts() {
		return products;
	}

	public void setProducts(List<ProductEntity> products) {
		this.products = products;
	}
	
}
