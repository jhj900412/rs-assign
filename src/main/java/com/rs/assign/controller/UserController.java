package com.rs.assign.controller;

import java.util.Collection;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.rs.assign.advice.exception.EUserNotFoundException;
import com.rs.assign.domain.AuthenticationToken;
import com.rs.assign.domain.User;
import com.rs.assign.domain.param.AuthenticationParam;
import com.rs.assign.service.UserService;

@RestController
@RequestMapping("/user")
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Autowired
	AuthenticationManager authenticationManager;
	 
	@Autowired
	UserService userSvc;

	// 회원중복확인
	@RequestMapping(value="{username}", method = RequestMethod.GET)
	public ResponseEntity<User> dupplicateUser(@PathVariable String username) {
		User user = userSvc.dupplicateUser(username);
		return new ResponseEntity<User>(user, HttpStatus.OK);
	}
	
	// 회원 권환 확인
	@RequestMapping(value="/auth/{username}", method = RequestMethod.GET)
	public ResponseEntity<Collection<GrantedAuthority>> findAuthority(@PathVariable String username) {
		Collection<GrantedAuthority> list = userSvc.getAuthorities(username);
		return new ResponseEntity<Collection<GrantedAuthority>>(list, HttpStatus.OK);
	}
	
	// 회원 가입
	@RequestMapping(method=RequestMethod.POST)
	public ResponseEntity<User> createUser(@Valid @ModelAttribute User user) {
		User createUser = userSvc.createUser(user);
		return new ResponseEntity<User>(createUser, HttpStatus.OK);
	}
	
	// 로그인
     @RequestMapping(value="/login", method=RequestMethod.POST)
     public AuthenticationToken login(@Valid @ModelAttribute AuthenticationParam authenticationRequest, HttpSession session) throws Exception {
          String username = authenticationRequest.getUsername();
          String password = authenticationRequest.getPassword();
          
          User user = userSvc.findUserByPassword(username, password);
         
          if(user == null) {
        	  throw new EUserNotFoundException();
          }
          UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(username, password);
          Authentication authentication = authenticationManager.authenticate(token);
          SecurityContextHolder.getContext().setAuthentication(authentication);
          session.setAttribute(HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY,
                    SecurityContextHolder.getContext());
         
          return new AuthenticationToken(user.getUsername(), user.getAuthorities(), session.getId());
     }     
}
