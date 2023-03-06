package study.cloud.stc.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import study.cloud.stc.test.service.TestService;

@Controller
@RequestMapping("/Test")
public class TestController {

	@Autowired
	private TestService service;
	
	@GetMapping("/list")
	public ModelAndView TestSelect( 
			ModelAndView mv
			
		) {
		
		mv.addObject("testlist", service.selectList());
		mv.setViewName("/Test/list");
		
		return mv;
	}
	
	@GetMapping("/selectOne")
	public ModelAndView TestSelectOne( 
			ModelAndView mv
		) {
		int boardNum = 12;
		mv.addObject("selectOne", service.selectOne(boardNum));
		mv.setViewName("/Test/listone");
		
		return mv;
	}
}
