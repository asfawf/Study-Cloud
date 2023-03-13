package study.cloud.stc.test.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import study.cloud.stc.common.paging.Paging;
import study.cloud.stc.test.service.TestService;

@Controller
@RequestMapping("/Test")
public class TestController {

	@Autowired
	private TestService service;
	private final static int BOARD_LIMIT = 5;
	private final static int PAGE_LIMIT = 5;
		
	@GetMapping("/list")
	public ModelAndView TestSelect( 
			ModelAndView mv
			, HttpServletRequest req
			, @RequestParam(value="page", defaultValue="1") int page
		) {
		
		
		// Rowbounds 유기적 페이징 가능
		int currentPage = page;
		int totalCnt= service.selectCount();
		Map<String, Integer> map= new Paging().paging(currentPage, totalCnt, BOARD_LIMIT, PAGE_LIMIT);
		mv.addObject("pageInfo", map);
		
		
		//mv.addObject("testlist", service.selectList());
		mv.addObject("testlist", service.selectList(currentPage,BOARD_LIMIT));
		
		mv.setViewName("/Test/list");
		
		System.out.println("totalCnt: "+ totalCnt);
		
		
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
