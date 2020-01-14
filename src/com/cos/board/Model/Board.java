package com.cos.board.Model;

import java.sql.Timestamp;

public class Board {
	private int id;
	private String title;
	private String content;
	private int userId;
	private Timestamp createTime;
	
	public Board(int id, String title, String content, int userId, Timestamp createTime) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.userId = userId;
		this.createTime = createTime;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public Timestamp getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}

}
