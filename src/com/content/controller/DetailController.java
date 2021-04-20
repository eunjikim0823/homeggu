package com.content.controller;

import java.io.File;

import org.apache.log4j.Logger; //로그객체 관련 클래스 import
import org.aspectj.util.FileUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.board.domain.BoardCommand;
import com.board.util.StringUtil;
import com.content.dao.ContentDao;

@Component
@Controller
public class DetailController {

	private Logger log = Logger.getLogger(getClass());
	
	/*
	 * 매개변수 하나 : @RequestParam("매개변수") 반환형 변수명
	 * 레코드 하나 통째로(DTO객체) : @ModelAttribute(command 객체별칭명) DTO자료형 객체명
	 * 
	 * */
	@Autowired
	private ContentDao contentDao; //byType <> byName(@Resource)
	
	@RequestMapping("/board/detail.do") //"/board/detail.do"라는 가상경로 요청이 들어오면 @RequestMapping
	public ModelAndView process(@RequestParam("seq") int seq) { //ModelAndView는 페이지 넘김 + 데이터 전송
													//특정한것 하나 요청할때는 @RequestParam 사용. 매개변수 seq. 만약 여러개면value 사용	
		// == int seq=Integer.parseInt(request.getParameter("seq"))
	
		if(log.isDebugEnabled()) {
			log.debug("seq="+seq);
		}
		//1.조회수 증가
		contentDao.updateHit(seq); //int->Integer(자동형변환 일어나기 때문)
		
		//글내용 = \r\n aaa \r\n : 메소드로 구현(br로 변경)<pre></pre>
		//\r\n 을 만나면 자동으로 줄바꿈(br)해주는 역할
		ContentCommand content=contentDao.selectContent(seq);
		content.setContent(StringUtil.parseBr(board.getContent()));
		
		/*==방식1
		 * ModelAndView mav = new ModelAndView("boardView");
		 * mav.addObject("board",board); 
		 * return mav;
		 */
												//1.이동할 페이지명,2.전달할 키명,3.전달할 값->boardView.jsp 전달
		return new ModelAndView("boardView","board",board);
	}
	
	//글상세보기와 연관(다운로드)
	
	@RequestMapping("/board/file.do")
	public ModelAndView download(@RequestParam("filename") String filename) {
		//1.다운로드 받을 파일의 위치와 이름을 알아야한다.
		File downloadFile = new File(FileUtil.UPLOAD_PATH+"/"+filename);
		//2.스프링에서 다운로드 받는 뷰를 따로 작성 : AbstractView를 상속받아 작성
		
		//1.다운로드 받을 뷰 객체명 2. 모델객체명(키명) 3.전달할값(다운로드 받을 파일정보)
		//1.이동할 페이지x(jsp 페이지 x)
		
		return new ModelAndView("downloadView","downloadFile",downloadFile);
										//1.다운로드 받을 뷰 객체명 2. 모델객체명(키명) 3.전달할값(다운로드 받을 파일정보)
		
	}
	
	
}
