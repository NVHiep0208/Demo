package com.devpro.Wayshop1.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.devpro.Wayshop1.entities.UsersE;



@Service
public class UserDetailsServiceImpl implements UserDetailsService {
	
	@Autowired 
	UserService userService;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		UsersE user = userService.loadUserByUsername(username);
		return user;
	}
	
}
