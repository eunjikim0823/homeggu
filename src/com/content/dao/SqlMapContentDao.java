package com.content.dao;

import java.util.List;
import java.util.Map;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.dao.DataAccessException;

import com.content.domain.ContentCommand;

//SqlSessionDaoSupport -> getSqlSession() 상속 ->SqlSession
public class SqlMapContentDao extends SqlSessionDaoSupport implements ContentDao {

	@Override
	public List<ContentCommand> list(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("list");
	}

	@Override
	public int getRowCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return (Integer)getSqlSession().selectOne("getRowCount");
	}


	@Override
	public int getNewSeq() throws DataAccessException {
		// TODO Auto-generated method stub
		//레코드 한개(SelectOne),특정필드의 자료형(Wrapper)
		//형식) selectOne("실행시킬 sql의 id값",매게변수 전달할값 #{매개변수명}
		//Object ->Integer ->int
		return (Integer)getSqlSession().selectOne("getNewSeq");//실행할 sql구문 
	}
	
	@Override
	public void insert(ContentCommand board_content) throws DataAccessException {
		// TODO Auto-generated method stub
		//형식)sqlSession객체명.insert("실행시킬 sql구문의 id",전달할 매개변수명)
		getSqlSession().insert("insert",board_content);//getter Method를 호출=>각각 저장
	}
	
	@Override
	public void updateHit(Integer seq) throws DataAccessException {
		// TODO Auto-generated method stub
		//형식)sqlSession객체명.update("실행시킬 구문의 id",매개변수)
		getSqlSession().update("updateHit",seq);
	}
	
	@Override
	public ContentCommand selectContent(Integer seq) throws DataAccessException {
		// TODO Auto-generated method stub
		//형식) sqlSession객체명.selectOne("실행시킬 구문의id",매개변수)
		//Object ->BoardCommand
		return (ContentCommand)getSqlSession().selectOne("selectContent",seq);
	}
	
	//수정하기
	@Override
	public void update(ContentCommand board_content) throws DataAccessException {
		// TODO Auto-generated method stub
		getSqlSession().update("update",board_content);//#{title},#{content}...
	}
	
	//삭제하기
	@Override
	public void delete(Integer seq) throws DataAccessException {
		// TODO Auto-generated method stub
		//형식)sqlSession객체명.delete("실행구문id",매개변수)
		getSqlSession().delete("delete",seq);
	}


	/*
	 * //검색하기
	 * 
	 * @Override public List search(ContentCommand data) throws DataAccessException
	 * { // TODO Auto-generated method stub //selectOne() ->레코드 한개 또는 필드 한개의 자료형을
	 * 얻어올때 return getSqlSession().selectList("search",data); }
	 * 
	 * //매개변수없는 전체리스트
	 * 
	 * @Override public List getBoardList() throws DataAccessException { return
	 * getSqlSession().selectList("getBoardList"); }
	 * 
	 * 
	 * //토탈
	 * 
	 * @Override public int getBoardTotalCnt() throws DataAccessException {
	 * 
	 * return (Integer)getSqlSession().selectOne("getBoardTotalCnt"); }
	 * 
	 */

}
