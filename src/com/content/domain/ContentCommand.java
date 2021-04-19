package com.content.domain;

import java.sql.Date; //DB에 관련된 날짜형

import org.springframework.web.multipart.MultipartFile;

//테이블의 필드와 연관이 있는 클래스 (DTO 또는 VO)
public class ContentCommand {

	private int seq; //게시물번호
	private String writer, title, content,pwd;
	private int hit; //조회수
	private Date regdate; //작성날짜

	//추가 <파일 업로드기능이있다>
	private MultipartFile upload; //업로드 할 때 필요한 객체
	private String filename;//업로드한 파일명
	
	
	public int getSeq() {
		System.out.println("getSeq() 호출됨(seq)=>"+seq);
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
		System.out.println("setSeq()호출됨(seq)=>"+seq);
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
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
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public MultipartFile getUpload() {
		return upload;
	}
	public void setUpload(MultipartFile upload) {
		this.upload = upload;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "BoardCommand[seq="+seq+",writer="+writer+",title="
				   +title+",content="+content+",pwd="+pwd+",hit="
				   +hit+",regdate="+regdate+",upload="+upload
				   +",filename="+filename+"]";
	}
	
}
