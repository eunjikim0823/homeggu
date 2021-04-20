package com.content.dao;

//List(레코드 여러개 담을 객체 필요), Map(검색분야, 검색어 사용하기 위해서 class를 사용하거나 Hash map 사용한다)
import java.util.List;
import java.util.Map;

import com.content.domain.ContentCommand;

public interface ContentDao {

	//1.글목록보기 <페이징처리 및 실시간 검색/동적검색>
	public List<ContentCommand> list(Map<String,Object> map);
	
	//2.총 레코드 수(검색어에 맞는 레코드 수까지 포함)
	public int getRowCount(Map<String,Object> map);
	
	//3.최대값 번호 구하기
	public int getNewSeq();
	
	//4.컨텐츠의 글쓰기
	public void insert(ContentCommand content);
	
	 //5.게시물에 대한 게시물(레코드)한개 찾기
	 public ContentCommand selectContent(Integer seq);//~(int seq);
	  
	 //6.게시물번호에 해당하는 조회수 증가
	 public void updateHit(Integer seq);

	 //7.글 수정하기
	 public void update(ContentCommand content);
	 
	 //8.글 삭제하기
	 public void delete(Integer seq);
}
