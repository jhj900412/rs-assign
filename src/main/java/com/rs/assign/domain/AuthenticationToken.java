package com.rs.assign.domain;

import java.util.Collection;

public class AuthenticationToken {
	
	 private String userId;
     private Collection<?> authorities;
     private String token;
    
     public AuthenticationToken(String userId, Collection<?> collection, String token) {
          this.userId = userId;
          this.authorities = collection;
          this.token = token;
     }
    
     public String getUserId() {
          return userId;
     }
     public void setUserId(String userId) {
          this.userId = userId;
     }
     public Collection<?> getAuthorities() {
          return authorities;
     }
     public void setAuthorities(Collection<?> authorities) {
          this.authorities = authorities;
     }
     public String getToken() {
          return token;
     }
     public void setToken(String token) {
          this.token = token;
     }   

}
