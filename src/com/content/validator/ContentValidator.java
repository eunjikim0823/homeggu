package com.content.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils; //에러메세지 처리 메소드
import org.springframework.validation.Validator;

import com.content.domain.ContentCommand;

//유효성 검사를설정하는 방법 : Validator 인터페이스를 상속받고 클래스 작성
//반드시 값을 입력했는지 체크할 필요 

public class ContentValidator implements Validator {

	//1.유효성검사를 할 클래스명을 지정해주는 메소드
	public boolean supports(Class<?> clazz) {
		//형식 ) retrun DTO클래스명.class.isAssignableFrom(clazz);
		return ContentCommand.class.isAssignableFrom(clazz);
	}

	//2.유효성검사를 해주는 메소드 : 문제발생 - 에러메세지를 작성 - 특정키에 저장 - 웹에출력
	//1.값을 제대로 입력받을 대상자 객체명, 2. 에러정보를 담을 객체
	public void validate(Object target, Errors errors) {
		//입력하지 않았거나 공백을 체크해주는 메소드 위주 - 에러정보를 저장(에러객체)
		
		//1.에러객체명 2.적용시킬 필드명 3.적용시킬 에러코드명(리소스번들파일의 키명)
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"pwd","required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"writer","required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"title","required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors,"board_content","required");
		

	}

}
