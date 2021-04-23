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

import com.content.dao.ContentDao;
import com.content.domain.ContentCommand;



//페이징처리까지 구현
@Controller
@Component
public class ListController {
	
	//로그객체 선언 : 내부적인 처리과정을 콘솔로 출력시켜주는 역할을 하는 객체
	//private Logger log=Logger.getLogger(ListController.class);
	private Logger log=Logger.getLogger(this.getClass()); //자동으로 클래스명 등록
	
	@Autowired
	private ContentDao contentDao;
	
	@RequestMapping("/Contents_Board.do")
	public ModelAndView process
		(  @RequestParam(value="keyField", defaultValue="") String keyField
		   ) {
		
		if(log.isDebugEnabled()) { //로그객체가 디버깅모드상태라면? //디버깅모드 : 출력할 준비가 되어있는 상태			
			
			System.out.println("출력준비완료!");
			log.debug("keyField"+keyField);
					
		} 
		//검색분야, 검색어를 전달 : parameterType="map"
		Map<String,Object> map=new HashMap<String,Object>();
		map.put(keyField, keyField);
	
		
		//총레코드수 또는 검색된 총 레코드 수 
		int count=contentDao.getRowCount(map);
		
	
		List<ContentCommand> list=null;
		if(count > 0) {
			list=contentDao.list(map);
			System.out.println("ListController의 list="+list);
		}else {
			list=Collections.emptyList(); 
		}
			System.out.println("ListController의 count"+count);
		
		ModelAndView mav = new ModelAndView("Contents_Board");//이동할 페이지명
		mav.addObject("count",count); //총레코드 수  ${count(키명)}
		mav.addObject("list",list); //레코드 전체
		return mav;
	}
}