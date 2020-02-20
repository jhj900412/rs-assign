package com.rs.assign.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.rs.assign.domain.User;

@Repository
public interface UserJpaRepository extends JpaRepository<User, Long> {
	
	Optional<User> findByUsername(String username);
	Optional<User> findByUsernameAndPassword(String username, String password);

}
