package com.rs.assign.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.rs.assign.domain.Board;

@Repository
public interface BoardJpaRepository extends JpaRepository<Board, Integer> {
	
	Board findById(int boardId);

}
