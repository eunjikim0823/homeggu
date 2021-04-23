/*
package com.content.controller;

import org.apache.log4j.Logger;
import org.aspectj.util.FileUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.content.dao.ContentDao;
import com.content.domain.ContentCommand;
import com.content.validator.ContentDeleteValidator;

@Component
@Controller
public class DeleteController {
      
	private Logger log=Logger.getLogger(this.getClass());
	
	@Autowired
	private ContentDao contentDao;
	
	 //1.글삭제 폼으로 이동(Get방식)->boardDelete.jsp
	@RequestMapping(value="/content/delete.do",method=RequestMethod.GET)
	
	public String form() {
		return "contentDelete";
	}
	
	//에러메세지 출력
	@ModelAttribute("command")
	public ContentCommand forBacking() {
		System.out.println("암호재입력");
		return new ContentCommand();
	}
	
	//2.입력해서 유효성검사->에러발생
	//BindingResult->유효성검사때문에 필요=>에러정보객체를 저장
	@RequestMapping(value="/content/delete.do",method=RequestMethod.POST)
	public String submit(@ModelAttribute("command") ContentCommand command,
			                       BindingResult result) {

		if(log.isDebugEnabled()) {
			log.debug("ContentCommand=>"+command);//입력받은 값을 출력
			//로그객체명.debug(출력대상자를 입력)
		}
		//유효성검사
		new ContentDeleteValidator().validate(command, result);
		//에러정보가 들어있다면
		if(result.hasErrors()) {
			return form(); 
		}
		
	//글삭제 -> 변경전 데이터 -> DB 비밀번호 = 웹상의 입력한 비밀번호 
	
		ContentCommand content = null; //변경전 데이터를 담을 객체 생성
		content = contentDao.selectContent(command.getSeq());	
		
		//DB비밀번호 = 웹상의 입력한 비밀번호 같지 않다면
		if(!content.getPwd().contentEquals(command.getPwd())) {
				
		//1.에러메세지를 적용시킬 필드명
			result.rejectValue("pwd","invalidPassword");
			return form(); //암호가 틀려서 화면 전환
		 }else {//비밀번호가 일치하다면
		
			//글삭제 호출
			contentDao.delete(command.getSeq());//command 안에 있는 번호를 가지고 와서 삭제해라.
																	//boardDTO의 별칭이 command
			//업로드가 된 파일이 존재한다면 삭제하라
				if(content.getFilename()!=null) {
					FileUtil.removeFile(content.getFilename());	
				}
			}//else 암호가 맞다면
			return "redirect:/content/list.do";
	}
}
*/
