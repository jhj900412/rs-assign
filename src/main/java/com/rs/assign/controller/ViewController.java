package com.rs.assign.controller;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class ViewController {
	
	@GetMapping("/view/{subject}/{details}")
	public String get(@PathVariable String subject, @PathVariable String details) {
		return subject.concat("/").concat(details);
	}
	
	@GetMapping("/")
	public String getRoot(HttpSession session) {
		SecurityContext attr = (SecurityContext) session.getAttribute(HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY);
		if(attr == null) {
			return "/user/signin";
		}
		return "board/list";
	}
	
}
