package com.rs.assign.service.impl;

import javax.transaction.Transactional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.rs.assign.advice.exception.EUserNotFoundException;
import com.rs.assign.domain.Board;
import com.rs.assign.domain.User;
import com.rs.assign.domain.param.BoardParam;
import com.rs.assign.repository.BoardJpaRepository;
import com.rs.assign.service.BoardService;

@Service
@Transactional
public class BoardServiceImpl implements BoardService {

	private static final Logger logger = LoggerFactory.getLogger(BoardServiceImpl.class);

	@Autowired
	private BoardJpaRepository boardJpaRepo;
	
	public Page<Board> findBoards(int page, int size) {
		PageRequest pageRequest = PageRequest.of(page-1, size, Sort.by(Sort.Direction.DESC, "boardId"));
		return boardJpaRepo.findAll(pageRequest);
	}

	public Board findBoard(int boardId) {
		return boardJpaRepo.findById(boardId);
	}

	public Board createBoard(User user, String subject, String contents) {
		Board board = new Board(user, subject, contents);
		return boardJpaRepo.save(board);
		
	}

	public boolean updateBoard(BoardParam boardParam, String userId) {
		Board board = findBoard(boardParam.getBoardId());
		if(board != null) {
			if(userId.equals(board.getUser().getUsername())) {
				board.setBoard(boardParam.getSubject(), boardParam.getContents());
				return true;
			} 
		} 
		return false;
	}

	public boolean deleteBoard(int boardId, String userId) {
		Board board = findBoard(boardId);
		if(board != null) {
			if(userId.equals(board.getUser().getUsername())) {
				boardJpaRepo.delete(board);
				return true;
			} 
		} 
		return false;
	}

}
