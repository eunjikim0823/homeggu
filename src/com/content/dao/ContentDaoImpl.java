package com.content.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Service;

import com.content.domain.ContentCommand;


//SqlSessionDaoSupport 상속받는이유 : SqlSession객체를 가지고 오는 메소드 이용

//@Component  : 빈즈 등록.
//@Repository : 빈즈등록 + DAO역할하는 클래스임을 알려줌


//@Component 
//@Repository
@Service("ContentDaoImpl")
public class ContentDaoImpl extends SqlSessionDaoSupport implements ContentDao {

	//검색분야에 따른 검색어까지 조회(페이징 처리)
	public List<ContentCommand> list(Map<String, Object> map) {//검색어와 검색내용을 map에 담고 list에 저장
	
		List<ContentCommand> list=getSqlSession().selectList("selectList",map);
		System.out.println("list메소드 호출됨!");
		return list;
	}

	public int getRowCount(Map<String, Object> map) {
		System.out.println("getRowCount메소드 호출됨!");
		return getSqlSession().selectOne("selectCount",map);
	}

	//최대값구하기
	public int getNewSeq() {
		int newseq=(Integer)getSqlSession().selectOne("getNewSeq");
		System.out.println("getNewseq()의 newseq="+newseq);
		return newseq;
	}
	

	//글쓰기 
	public void insert(ContentCommand content) {
		// TODO Auto-generated method stub
		getSqlSession().insert("insertContent",content);
	} 
	
	//글상세보기
	public ContentCommand selectContent(Integer seq) {
		//Object ->BoardCommand
		return (ContentCommand)getSqlSession().selectOne("selectContent",seq); 
		//selectBoard sql 문장을 가지고와라. sql문장 하나니까 selectOne씀 데이터타입은 
		//object이여서 클래스명 데이터타입으로 BoardCommand 가지고옴
	}
	
	//조회수
	public void updateHit(Integer seq) {
		getSqlSession().update("updateHit",seq);
		
	}
	
	//글수정
	public void update(ContentCommand content) {
		// TODO Auto-generated method stub
		getSqlSession().update("updateContent", content);
	
	}
	
	//글 삭제
	public void delete(Integer seq) {
		// TODO Auto-generated method stub
		getSqlSession().delete("deleteContent",seq);
	}
	
}
