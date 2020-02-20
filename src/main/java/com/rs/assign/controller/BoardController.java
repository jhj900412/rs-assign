package com.rs.assign.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.rs.assign.domain.Board;
import com.rs.assign.domain.User;
import com.rs.assign.domain.param.BoardParam;
import com.rs.assign.service.impl.BoardServiceImpl;

@RestController
@RequestMapping("/board")
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	private static final String BOARD = "board";
	private static final String ISMINE = "isMine";
	
	@Autowired
	BoardServiceImpl boardSvc;
	
	
	// 게시글 전체조회
	@RequestMapping(method = RequestMethod.GET)
	public ResponseEntity<Page<Board>> getBoards(@RequestParam(required = false, defaultValue = "1") int page, @RequestParam(required = false, defaultValue = "10") int size) {
		Page<Board> list = boardSvc.findBoards(page, size);
		if (list.getSize() > 0) {
			return new ResponseEntity<Page<Board>>(list, HttpStatus.OK);
		}
		return new ResponseEntity<>(HttpStatus.NOT_FOUND);
	}

	// 특정 게시글 상세 조회
	@RequestMapping(value = "/{boardId}", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> getBoardsById(@PathVariable int boardId, HttpSession session) {
		String userId = getUserForSession(session).getUsername();
		Board board = boardSvc.findBoard(boardId);
		Map<String, Object> result = new HashMap<String, Object>();
		result.put(BOARD, board);
		if(userId.equals(board.getUser().getUsername())) {
			result.put(ISMINE, true);
		} else {
			result.put(ISMINE, false);
		}
		
		if (!result.isEmpty()) {
			return new ResponseEntity<Map<String, Object>>(result, HttpStatus.OK);
		}
		return new ResponseEntity<>(HttpStatus.NOT_FOUND);
	}

	// 게시글 등록
	@RequestMapping(method = RequestMethod.POST)
	public ResponseEntity<Board> createBoard(@Valid @ModelAttribute BoardParam boardParam, HttpSession session) {
		Board board = boardSvc.createBoard(getUserForSession(session), boardParam.getSubject(), boardParam.getContents());
		if (board != null) {
			return new ResponseEntity<Board>(board, HttpStatus.OK);
		}
		return new ResponseEntity<>(HttpStatus.NOT_FOUND);
	}

	// 게시글 수정
	@RequestMapping(method = RequestMethod.PUT)
	public ResponseEntity<Board> updateBoard(@Valid @ModelAttribute BoardParam boardParam, HttpSession session) {
		boolean result = boardSvc.updateBoard(boardParam, getUserForSession(session).getUsername());
		if (result) {
			return new ResponseEntity<>(HttpStatus.OK);
		}
		return new ResponseEntity<>(HttpStatus.NOT_FOUND);
	}

	// 게시글 삭제
	@RequestMapping(value = "/{boardId}", method = RequestMethod.DELETE)
	public ResponseEntity<Board> deleteBoard(@PathVariable int boardId, HttpSession session) {
		boolean result = boardSvc.deleteBoard(boardId, getUserForSession(session).getUsername());
		if (result) {
			return new ResponseEntity<>(HttpStatus.OK);
		}
		return new ResponseEntity<>(HttpStatus.NOT_FOUND);
	}
	
	
	private User getUserForSession(HttpSession session) {
		SecurityContext attr = (SecurityContext) session.getAttribute(HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY);
		User user = null;
		Object obj = attr.getAuthentication().getPrincipal();
		if(obj != null && obj instanceof User) {
			user = (User) obj;
		}
		return user;
		
	}
}
