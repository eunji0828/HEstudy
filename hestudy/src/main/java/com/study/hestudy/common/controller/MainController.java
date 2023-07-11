package com.study.hestudy.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Slf4j
@Controller
public class MainController {

	 public Logger log = LoggerFactory.getLogger(Controller.class);
	
	@GetMapping(value={"/","main"})
	public ModelAndView Main() {
		log.info("MainController ###");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/main/main");
		
		return mv;
	}
}
