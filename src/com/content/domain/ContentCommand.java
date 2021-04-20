//애초에 설정한 content와 새로만든 패키지명 content가 겹쳐서 content->board_content로 변경

package com.content.domain;

import java.sql.Date; //DB에 관련된 날짜형

import org.springframework.web.multipart.MultipartFile;

//테이블의 필드와 연관이 있는 클래스 (DTO 또는 VO)
public class ContentCommand {

	private int seq; //게시물번호
	private String writer, title, board_content , pwd;

	private int hit; //조회수
	private Date regdate; //작성날짜

	//거주타입 설정. //추후 글 검색에 필드설정예정
	private String home_type, home_size, home_part, home_space, home_style, home_mate;
	

	//업로드 기능->대표사진도 업로드를 해야지 불러올 수 있다
	private MultipartFile upload; //업로드 할 때 필요한 객체 private
	String filename;//업로드한 파일명
	 	
	
	
	public String getHome_type() {
		return home_type;
	}
	public void setHome_type(String home_type) {
		this.home_type = home_type;
	}
	public String getHome_size() {
		return home_size;
	}
	public void setHome_size(String home_size) {
		this.home_size = home_size;
	}
	public String getHome_part() {
		return home_part;
	}
	public void setHome_part(String home_part) {
		this.home_part = home_part;
	}
	public String getHome_space() {
		return home_space;
	}
	public void setHome_space(String home_space) {
		this.home_space = home_space;
	}
	public String getHome_style() {
		return home_style;
	}
	public void setHome_style(String home_style) {
		this.home_style = home_style;
	}
	public String getHome_mate() {
		return home_mate;
	}
	public void setHome_mate(String home_mate) {
		this.home_mate = home_mate;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

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
				   +title+",board_content="+board_content+",pwd="+pwd+",hit="
				   +hit+",regdate="+regdate+",upload="+upload
				   +",filename="+filename+"]";
	}
	
}
