package com.rs.assign.domain.param;

public class BoardParam {
	
	private String boardId;
	
	private String userId;
	
	private String subject;
	
	private String contents;
	

	public BoardParam(String boardId, String userId, String subject, String contents) {
		super();
		this.boardId = boardId;
		this.userId = userId;
		this.subject = subject;
		this.contents = contents;
	}

	public int getBoardId() {
		return Integer.parseInt(boardId);
	}

	public void setBoardId(String boardId) {
		this.boardId = boardId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

}
