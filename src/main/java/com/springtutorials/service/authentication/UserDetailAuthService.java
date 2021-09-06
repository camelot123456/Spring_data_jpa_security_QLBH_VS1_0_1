package com.springtutorials.service.authentication;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.springtutorials.constant.SystemConstant;
import com.springtutorials.entity.AccountEntity;
import com.springtutorials.entity.RoleEntity;
import com.springtutorials.repository.IAccountRepository;

@Service
public class UserDetailAuthService implements UserDetailsService {

	@Autowired private IAccountRepository accountRepository;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		
		AccountEntity account = accountRepository.findOneByUsername(username);
		
		if (account == null) {
			throw new UsernameNotFoundException("Not found Username !");
		}
		
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		
		for (RoleEntity role : account.getRoles()) {
			authorities.add(new SimpleGrantedAuthority("ROLE_" + role.getCode()));
		}
		
		SystemConstant.ACCOUNT = account;
		
		UserDetails userDetails = new User(account.getUsername(), account.getPassword(), authorities);
		return userDetails;
	}

}
