package com.study.hestudy.register.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class registerController {
	
public Logger log = LoggerFactory.getLogger(Controller.class);
	
	// 회원가입
	@GetMapping("/signUp")
	public ModelAndView SignUp() {
		log.info("SignUpController ###");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/register/signUp");
		
		return mv;
	}
	
	// 로그인
	@GetMapping("/signIn")
	public ModelAndView SignIN() {
		log.info("SignInController ###");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/register/signIn");
		
		return mv;
	}

}
