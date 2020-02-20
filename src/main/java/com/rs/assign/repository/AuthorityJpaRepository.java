package com.rs.assign.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.rs.assign.domain.Authority;

@Repository
public interface AuthorityJpaRepository extends JpaRepository<Authority, Long> {
	
	Optional<List<Authority>> findByUserName(String username);

}
