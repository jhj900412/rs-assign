package com.rs.assign.service;

import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import com.rs.assign.domain.Board;
import com.rs.assign.domain.User;
import com.rs.assign.domain.param.BoardParam;

@Service
public interface BoardService {
	
	// 모든 게시글 조회
	public Page<Board> findBoards(int page, int size);

	// 특정 게시글 상세 조회
	public Board findBoard(int boardId);
	
	// 게시글 등록
	public Board createBoard(User user, String subject, String contents);

	// 게시글 수정
	public boolean updateBoard(BoardParam boardParam, String contents);

	// 게시글 삭제
	public boolean deleteBoard(int boardId, String userId);

}
