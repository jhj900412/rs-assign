package com.rs.assign.service;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.rs.assign.domain.User;

@Service
public interface UserService extends UserDetailsService {
	
	// 특정 회원 정보 조회
	User findUser(String username);
	
	User findUserByPassword(String username, String password);
		
	// 회원 중복 확인
	User dupplicateUser(String username);
	
	// 회원 등록
	User createUser(User user);
	
	// 비밀번호 암호화
	PasswordEncoder passwordEncoder();
	
	// 회원 권한 확인
	Collection<GrantedAuthority> getAuthorities(String username);
}
