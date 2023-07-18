package com.study.hestudy.board.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class PotoBoardController {
	
	public Logger log = LoggerFactory.getLogger(Controller.class);

	// 게시판
		@GetMapping("/potoBoardList")
		public ModelAndView PotoBoardList() {
			log.info("PotoBoardListController ###");
			
			ModelAndView mv = new ModelAndView();
			mv.setViewName("/board/potoBoardList");
			
			return mv;
		}
}
