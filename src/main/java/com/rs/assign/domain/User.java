package com.rs.assign.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

@Entity
@Table(name="user")
public class User implements UserDetails, Serializable {
	
	private static final long serialVersionUID = 3234594441134083416L;

	@Id
	@Column(name="username")
	private String username;
	
	@Column(name="password")
	private String password;
	
	@Column(name="nick_name")
	private String nickName;
	
	@Column(name="IS_ACCOUNT_NON_EXPIRED")
	private boolean isAccountNonExpired;
	
	@Column(name="IS_ACCOUNT_NON_LOCKED")
	private boolean isAccountNonLocked;
	
	@Column(name="IS_CREDENTIALS_NON_EXPIRED")
	private boolean isCredentialsNonExpired;
	
	@Column(name="IS_ENABLED")
	private boolean isEnabled;
	
	
	@OneToMany(targetEntity = Authority.class)
	@JoinColumn(name="user_name")
	private List<Authority> authorList;
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		authorList.forEach(a -> {
			authorities.add(new SimpleGrantedAuthority(a.getAuthorityName()));
		});
		
        return authorities;
	}

	public void setAuthorities(List<Authority> authorList) {
		this.authorList = authorList;
	}

	@Override
	public String getPassword() {
		return password;
	}

	@Override
	public String getUsername() {
		return username;
	}

	@Override
	public boolean isAccountNonExpired() {
		return isAccountNonExpired;
	}

	@Override
	public boolean isAccountNonLocked() {
		return isAccountNonLocked;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return isCredentialsNonExpired;
	}

	@Override
	public boolean isEnabled() {
		return isEnabled;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setIsAccountNonExpired(boolean isAccountNonExpired) {
		this.isAccountNonExpired = isAccountNonExpired;
	}

	public void setIsAccountNonLocked(boolean isAccountNonLocked) {
		this.isAccountNonLocked = isAccountNonLocked;
	}

	public void setIsCredentialsNonExpired(boolean isCredentialsNonExpired) {
		this.isCredentialsNonExpired = isCredentialsNonExpired;
	}

	public void setIsEnabled(boolean isEnabled) {
		this.isEnabled = isEnabled;
	}

}
