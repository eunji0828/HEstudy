package com.study.hestudy.board.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class BoardController {
	
	public Logger log = LoggerFactory.getLogger(Controller.class);

	// 게시판
	@GetMapping("/boardList")
	public ModelAndView BoardList() {
		log.info("BoardListController ###");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/board/boardList");
		
		return mv;
	}
	
	// 글쓰기
	@GetMapping("/boardWrite")
	public ModelAndView BoardWrite() {
		log.info("BoardWriteController ###");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/board/boardWrite");
		
		return mv;
	}

	
}
