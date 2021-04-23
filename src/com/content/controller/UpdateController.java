/*
package com.content.controller;

import java.io.File;
import java.io.IOException;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.content.dao.ContentDao;
import com.content.domain.ContentCommand;
import com.content.util.FileUtil;
import com.content.validator.ContentValidator;

@Component
@Controller
public class UpdateController {
        //Logger객체=>제대로 입력했는지 체크해서 그 결과를 콘솔에 출력
	   //                      시켜주는 객체
	private Logger log=Logger.getLogger(this.getClass());
	
	@Autowired
	private ContentDao contentDao;
	
	/*
	 * 하나의 요청명령어=>하나의 컨트롤러만 사용X
	 * 하나의 컨트롤러->여러개의 요청명령어를 등록해서 사용이 가능.
	 * 같은 요청명령어를 GET or POST으로 전송할지를 결정하는 속성
	 * method=RequestMethod.GET | method=RequestMethod.POST
	 */

/*	 //1.글수정 폼으로 이동(Get방식)->boardModify.jsp
	@RequestMapping(value="/board/update.do",method=RequestMethod.GET)
	//public String form() {  //글쓰기 폼 : 페이지 이동만, 데이터 전달 x 
	public ModelAndView form(@RequestParam("seq") int seq) { //수정 폼 : 페이지 이동+데이터 전달
											//@RequestParam을 이용해서 seq 가지고 오고 int seq로 출력
											//자바<>어노테이션 바꿀수 있어야함
	System.out.println("다시 처음부터 값을 입력받기위해서 form()호출됨!");
		ContentCommand contentCommand=contentDao.selectContent(seq);
	//return "boardModify"; 하면 안됨. return은 단순한 페이지 이동임
		//1.이동할 페이지(확장자 생략) 2.키명. 3.전달할값
		return new ModelAndView("boardModify","command",boardCommand);
	}

	//2.입력해서 유효성검사->에러발생
	//BindingResult->유효성검사때문에 필요=>에러정보객체를 저장
	@RequestMapping(value="/board/update.do",method=RequestMethod.POST)
	public String submit(@ModelAttribute("command") BoardCommand command,
			                       BindingResult result) {

		if(log.isDebugEnabled()) {
			log.debug("BoardCommand=>"+command);//입력받은 값을 출력
			//로그객체명.debug(출력대상자를 입력)
		}
		//유효성검사
		new BoardValidator().validate(command, result);
		//에러정보가 들어있다면
		if(result.hasErrors()) {
			return "boardModify"; //에러났으니까 입력다시하라고 단순히 페이지만 이동
		}
		
	//글수정 및 업로드 -> 변경전 데이터 -> DB 비밀번호 = 웹상의 입력한 비밀번호 
	
		BoardCommand board = null; //변경전 데이터를 담을 객체 생성
		String oldFileName="";//변경전 파일명
		board=boardDao.selectBoard(command.getSeq());
				//seq를 쓰기엔 메소드에서 매개변수로 선언해야하는데 선언된 부분이 
				//없어서 command에서 seq 분리시켜 가지고옴
		
		//DB비밀번호 = 웹상의 입력한 비밀번호 같지 않다면
		if(!board.getPwd().contentEquals(command.getPwd())) {
		
		//1.에러메세지를 적용시킬 필드명
			result.rejectValue("pwd","invalidPassword");
			return "boardModify"; //암호가 틀려서 화면 전환
		 }else {//비밀번호가 일치하다면
			 /*
			  * 기본파일명으로 업로드된 파일이 존재 ->파일 삭제 ->새로운파일로 세팅
			  * */
/*
		 oldFileName=board.getFilename(); //old파일에 파일 가지고옴
		
		//업로드되어있다면
			if(!command.getUpload().isEmpty()) {
				//탐색기에서 선택한 파일이름 : getOriginalFileName()
				try {
					command.setFilename(FileUtil.rename
							(command.getUpload().getOriginalFilename()));
				}catch(Exception e) {e.printStackTrace();}
			}else {//새파일로 업로드 하지 않은 경우 기존파일 덮어쓰기
				command.setFilename(oldFileName);
			}
		
			//글수정 호출
			boardDao.update(command);//DB상에 반영->aaa.txt->ttt.png 변경
			
			//새로 업로드한 파일이 있다면 올려준파일을 내 서버의 upload의 위치로 이동하라
			if(!command.getUpload().isEmpty()) {
				try {
			//새로 변경된 파일명을 업로드 위치로 전송하기 위한 파일객체 생성		
				
				File file=new File(FileUtil.UPLOAD_PATH+"/"+command.getFilename());
				
				//물리적으로 데이터전송(파일 전송)->transferTo(전송할 파일정보)
				command.getUpload().transferTo(file);//새파일이 upload에 전송된 상태
			
				}catch(IOException e) {
					e.printStackTrace();
				}catch(Exception e2) {
					e2.printStackTrace();
				}
			//기존의 파일은 삭제하는 구문이 필요
				if(oldFileName!=null) {
					FileUtil.removeFile(oldFileName);	
				}
			}//if(!command.getUpload().isEmpty())
		}//else 암호가 맞다면
		return "redirect:/board/list.do";
	}
}
*/
