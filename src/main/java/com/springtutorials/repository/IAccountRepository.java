package com.springtutorials.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.springtutorials.entity.AccountEntity;

public interface IAccountRepository extends JpaRepository<AccountEntity, String>{

	public AccountEntity findOneByUsername(String username);
	
}
