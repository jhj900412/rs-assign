package com.rs.assign.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.security.core.GrantedAuthority;

@Entity
@Table(name="authority")
public class Authority implements GrantedAuthority, Serializable{
	
	private static final long serialVersionUID = -965639008225733835L;

	@Id
	@Column(name="user_name")
	private String userName;
	
	@Column(name="authority_name")
	private String authorityName;
	
	public Authority() {
		
	}
	
	public Authority(String userName, String authorityName) {
		this.userName = userName;
		this.authorityName = authorityName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getAuthorityName() {
		return authorityName;
	}

	public void setAuthorityName(String authorityName) {
		this.authorityName = authorityName;
	}

	@Override
	public String getAuthority() {
		System.out.println("######################### getAuthority()");
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String toString() {
		return "Authority [userName=" + userName + ", authorityName=" + authorityName + "]";
	}
	
}
