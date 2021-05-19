package com.content;

import org.springframework.web.multipart.MultipartFile;

//DTO -> 입력폼의 name와 반드시 같아야 된다. ->액션태그때문에


public class Board { //BoardDTO,BoardVO

	private int num;//게시물번호
	private String author,title,content,date;//작성자,글제목,글내용,작성일
	private int readcnt;//조회수
	private String pwd; //비밀번호

	private String hsize,mate,type; //집사이즈, 가족관계, 주거형태
	private String fileName;
	private MultipartFile uploadFile;

	/*
	 * private String uploadPath;
	 *
	 * public String getUploadPath() { return uploadPath; }
	 *
	 * public void setUploadPath(String uploadPath) { this.uploadPath = uploadPath;
	 * }
	 */

	public String getHsize() {
		return hsize;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public void setHsize(String hsize) {
		this.hsize = hsize;
	}
	public String getMate() {
		return mate;
	}
	public void setMate(String mate) {
		this.mate = mate;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
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
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getReadcnt() {
		return readcnt;
	}
	public void setReadcnt(int readcnt) {
		this.readcnt = readcnt;
	}


}
