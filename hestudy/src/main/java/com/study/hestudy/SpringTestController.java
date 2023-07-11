package com.study.hestudy;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;


// @RestController = @Controller + @Responsbody
// @RestController는 메서드의 반환값을 응답
//	즉 model 객체를 만들어 데이터를 담고 view를 찾음
// @Controller는 메서드의 반환값을 생성할 뷰의 이름으로 사용
//  다시말해 객체만을 반환하고 객체 데이터는 json 또는 xml형식을 http응답에 담아서 전송
@Controller
public class SpringTestController {
	@GetMapping("/index")
	public String test() throws Exception {
		return "index";
	}
	
	@GetMapping("/test")
	public ModelAndView mvTest() throws Exception {
		ModelAndView mv = new ModelAndView("mvTest");
		
		mv.addObject("key", "fruits");
		
		List<String> fruitList = new ArrayList<String>();
		
		fruitList.add("apple");
		fruitList.add("banana");
		fruitList.add("orange");
		
		mv.addObject("value", fruitList);
		
		return mv;
	}
}
