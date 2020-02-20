package com.rs.assign.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "board")
public class Board implements Serializable {

	private static final long serialVersionUID = 8210157832643995513L;

	@Id
	@Column(name = "board_id", length = 9)
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int boardId;

	@Column(name = "subject", length = 30, nullable = false)
	private String subject;

	@ManyToOne(targetEntity = User.class)
	@JoinColumn(name = "user_id")
	private User user;

	@Column(name = "contents", length = 1000)
	private String contents;

	@CreationTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "reg_date")
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yy-MM-dd HH:mm:ss", timezone = "Asia/Seoul")
	private Date regDate;

	@UpdateTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "last_md_date")
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yy-MM-dd HH:mm:ss", timezone = "Asia/Seoul")
	private Date lastMdDate;

	@PrePersist
	protected void onCreate() {
		this.regDate = new Date();
		this.lastMdDate = new Date();
	}

	@PreUpdate
	protected void onUpdate() {
		this.lastMdDate = new Date();
	}

	public Board() {

	}

	public Board(User user, String subject, String contents) {
		this.user = user;
		this.subject = subject;
		this.contents = contents;
	}

	public Board setBoard(String subject, String contents) {
		this.subject = subject;
		this.contents = contents;
		return this;
	}

	public int getBoardId() {
		return boardId;
	}

	public String getSubject() {
		return subject;
	}

	public String getContents() {
		return contents;
	}

	public Date getRegDate() {
		return regDate;
	}

	public Date getLastMdDate() {
		return lastMdDate;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
