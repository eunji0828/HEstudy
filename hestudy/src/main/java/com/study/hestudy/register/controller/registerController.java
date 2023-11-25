package com.study.hestudy.register.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;


import com.study.hestudy.register.model.HeMemberVO;
import com.study.hestudy.register.service.HeMemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class registerController {
	
	// 생성자 의존성 주입 가장 권장
	// 왜? 순환참조 방지, 불변성, 테스트 용이
	private final HeMemberService heMemberService;
	
	public registerController(HeMemberService heMemberService) {
		this.heMemberService = heMemberService;
	}
		
	private static final Logger LOGGER = LoggerFactory.getLogger(registerController.class);
	// static - 매번 생성하지 않고 초기 클래스 로딩 시 한 번만 생성하여 사용
	// fianl  - 유지보수와 가독성을 높이기 위함
	// LOGGER - 통상적으로 대문자를 많이 사용
	// 기능    - 콘솔창에 해당 로그가 찍히며 프로그램 오류 발생 시 어디서 어떤 이유로 오류가 
	//			발생하는지 알 수 있어 이슈 처리가 용이
	
	// 회원가입 화면
	@GetMapping("/signUp")
	public ModelAndView SignUp() throws Exception {
		
		LOGGER.info("SignUpController ###");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/register/signUp");
		
		return mv;
	}
	
	// 회원 정보 db 전달
	@PostMapping("/signUp")
	public ModelAndView signUp(HeMemberVO HeMemberVo) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		
		heMemberService.signUpInsert(HeMemberVo);
		mv.setViewName("/register/signIn");
		
		return mv;
	}
	
	// 로그인
	@GetMapping("/signIn")
	public ModelAndView SignIN() throws Exception {
		LOGGER.info("SignInController ###");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/register/signIn");
		
		return mv;
	}

}
