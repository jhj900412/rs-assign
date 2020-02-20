package com.rs.assign.service.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.rs.assign.advice.exception.EUserExistException;
import com.rs.assign.advice.exception.EUserLoginFailException;
import com.rs.assign.advice.exception.EUserNotFoundException;
import com.rs.assign.domain.Authority;
import com.rs.assign.domain.User;
import com.rs.assign.repository.AuthorityJpaRepository;
import com.rs.assign.repository.UserJpaRepository;
import com.rs.assign.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	private static final Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);

	@Autowired
	private UserJpaRepository userJpaRepo;
	@Autowired
	private AuthorityJpaRepository authJpaRepo;

	private PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	
	public User findUser(String username) {
		return userJpaRepo.findByUsername(username).orElseThrow(EUserNotFoundException::new);
	}
	
	@Override
	public User findUserByPassword(String username, String password) {
		User user = userJpaRepo.findByUsername(username).orElseThrow(EUserNotFoundException::new);
		boolean result = passwordEncoder.matches(password, user.getPassword());
		if(result) {
			return user;
		} else {
			throw new EUserLoginFailException();
		}
	}

	public User dupplicateUser(String username) {
		User user = userJpaRepo.findByUsername(username).orElseThrow(EUserExistException::new);
		return user;
	}
	
	@Override
	public User createUser(User user) {
		String encodedPassword = passwordEncoder().encode(user.getPassword());
		user.setPassword(encodedPassword);
		Authority authority = new Authority(user.getUsername(), "USER");
		authJpaRepo.save(authority);
		List<Authority> authorList = new ArrayList<>();
		authorList.add(authority);
		user.setAuthorities(authorList);
		return userJpaRepo.save(user);
	}
	
	@Override
	public PasswordEncoder passwordEncoder() {
		return this.passwordEncoder;
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		return userJpaRepo.findByUsername(username).orElseThrow(EUserNotFoundException::new);
	}

	@Override
	public Collection<GrantedAuthority> getAuthorities(String username) {
		List<Authority> authorList = authJpaRepo.findByUserName(username).orElseThrow(EUserNotFoundException::new);
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		for (Authority authority : authorList) {
			authorities.add(new SimpleGrantedAuthority(authority.getAuthorityName()));
		}
		return authorities;
	}

	

}
