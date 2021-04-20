package com.content.controller;

/*import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;*/
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.board.dao.BoardDao;
import com.board.domain.BoardCommand;
import com.board.util.PagingUtil;



//페이징처리까지 구현
@Controller
@Component
public class ListController {
	
	//로그객체 선언 : 내부적인 처리과정을 콘솔로 출력시켜주는 역할을 하는 객체
	//private Logger log=Logger.getLogger(ListController.class);
	private Logger log=Logger.getLogger(this.getClass()); //자동으로 클래스명 등록
	
	@Autowired
	private ContentDao contentDao;
	
	@RequestMapping("/content/list.do")
	public ModelAndView process
		( @RequestParam(value="pageNum", defaultValue="1")int currentPage,
		   @RequestParam(value="keyField", defaultValue="") String keyField,
		   @RequestParam(value="keyWord", defaultValue="")String keyWord) {
		
		if(log.isDebugEnabled()) { //로그객체가 디버깅모드상태라면? //디버깅모드 : 출력할 준비가 되어있는 상태			
			
			System.out.println("출력준비완료!");
			log.debug("currentPage"+currentPage); // log.debug("출력할값")
			log.debug("keyField"+keyField);
			log.debug("keyWord"+keyWord);
			
		} 
		//검색분야, 검색어를 전달 : parameterType="map"
		Map<String,Object> map=new HashMap<String,Object>();
		map.put(keyField, keyField);
		map.put(keyWord, keyWord); //#{keyWord} : getKeyWord()
		
		//총레코드수 또는 검색된 총 레코드 수 
		int count=boardDao.getRowCount(map);
		
		//페이징처리 매개변수 1. 현재페이지 2.총 레코드 수 3.페이지당 게시물 수 4.블럭당 페이지 수 5.요청명령어
		PagingUtil page=new PagingUtil(currentPage, count, 3, 3,"list.do");
		
		//start : 페이지당 맨 첫번째 나오는 게시물 번호 
		map.put("start", page.getStartCount());
		//<>map.get("start") -> #{start}
		//end : 페이지당 맨 마지막에 나오는 게시물 번호
		map.put("end", page.getEndCount());
		
		List<BoardCommand> list=null;
		if(count > 0) {
			list=boardDao.list(map);
			System.out.println("ListController의 list="+list);
		}else {
			list=Collections.emptyList(); 
		}
			System.out.println("ListController의 count"+count);
		
		ModelAndView mav = new ModelAndView("boardList");//이동할 페이지명
		mav.addObject("count",count); //총레코드 수  ${count(키명)}
		mav.addObject("list",list); //레코드 전체
		mav.addObject("pagingHtml",page.getPagingHtml()); //링크문자열		
		return mav;
	}
}



