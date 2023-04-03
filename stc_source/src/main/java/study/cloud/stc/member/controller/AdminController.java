package study.cloud.stc.member.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import study.cloud.stc.member.model.service.MemberService;
import study.cloud.stc.member.model.vo.MemberVo;
import study.cloud.stc.common.paging.Paging;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private MemberService service;
	private final static int BOARD_LIMIT = 5;
	private final static int PAGE_LIMIT = 5;
	
	@GetMapping("/users")
	public ModelAndView usersList(
			ModelAndView mv, MemberVo vo
			, HttpServletRequest req
			, @RequestParam(value = "page", defaultValue="1") int page
		) throws Exception {
		
		// Rowbounds 유기적 페이징 가능
		int currentPage = page;
		int totalCnt = service.selectCount();
		Map<String, Integer> map = new Paging().paging(currentPage, totalCnt, BOARD_LIMIT, PAGE_LIMIT);
		mv.addObject("pageInfo", map);
		
		/*
		mv.addObject("usersList", service.selectList(vo));
		
		mv.setViewName("/users");
		*/
		
		
		mv.addObject("usersList", service.selectListTest(currentPage, BOARD_LIMIT, vo));
		
		mv.setViewName("/users");
		
		
		return mv;
		
	}
	
}
