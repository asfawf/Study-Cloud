package study.cloud.stc.member.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	@GetMapping
	public ModelAndView main(ModelAndView mv) throws Exception {
		mv.setViewName("admin/admin");
		return mv;
	}	
	
	@GetMapping("/user")
	public ModelAndView usersList(
			ModelAndView mv, MemberVo vo
			, HttpServletRequest req
			, @RequestParam(value = "page", defaultValue="1") int page
			, @RequestParam(value = "selectbox", defaultValue="1") int selectbox
		) throws Exception {
		
		// Rowbounds 유기적 페이징 가능
		
		/*
		mv.addObject("usersList", service.selectList(vo));
		
		mv.setViewName("/users");
		*/
		
		System.out.println();
		String select = req.getParameter("selectbox");
		System.out.println("selectbox: "+ selectbox);
		
		if(selectbox == 1) {
			int currentPage = page;
			int totalCnt = service.selectCount();
			Map<String, Integer> map = new Paging().paging(currentPage, totalCnt, BOARD_LIMIT, PAGE_LIMIT);
			mv.addObject("pageInfo", map);
			req.setAttribute("nowoption", selectbox);
			mv.addObject("usersList", service.selectListTest(currentPage, BOARD_LIMIT, vo));
		}else if(selectbox == 2) {
			
			int currentPage = page;
			int totalCnt = service.selectUnblockCount();
			Map<String, Integer> map = new Paging().paging(currentPage, totalCnt, BOARD_LIMIT, PAGE_LIMIT);
			mv.addObject("pageInfo", map);
			req.setAttribute("nowoption", selectbox);
			mv.addObject("usersList", service.selectUnblockUsers(currentPage, BOARD_LIMIT, vo));
		}else if(selectbox == 3) {
			
			int currentPage = page;
			int totalCnt = service.selectBlockCount();
			Map<String, Integer> map = new Paging().paging(currentPage, totalCnt, BOARD_LIMIT, PAGE_LIMIT);
			mv.addObject("pageInfo", map);
			req.setAttribute("nowoption", selectbox);
			mv.addObject("usersList", service.selectBlockUsers(currentPage, BOARD_LIMIT, vo));
		}else if(selectbox == 4) {
			
			int currentPage = page;
			int totalCnt = service.selectSnsCount(); 
			Map<String, Integer> map = new Paging().paging(currentPage, totalCnt, BOARD_LIMIT, PAGE_LIMIT);
			mv.addObject("pageInfo", map);
			req.setAttribute("nowoption", selectbox);
			mv.addObject("usersList", service.selectSnskUsers(currentPage, BOARD_LIMIT, vo));
		}	
		
		
		mv.setViewName("/admin/user");
		
		
		return mv;
		
	}
	
	
	//------------------------------------------------------------------------------------------------
	
	
	
	@GetMapping("/host")
	public ModelAndView hostList(
			ModelAndView mv, MemberVo vo
			, HttpServletRequest req
			, @RequestParam(value = "page", defaultValue="1") int page
			, @RequestParam(value = "selectbox", defaultValue="1") int selectbox
			) throws Exception {
		
		
		System.out.println();
		String select = req.getParameter("selectbox");
		System.out.println("selectbox: "+ selectbox);
		
		if(selectbox == 1) {
			int currentPage = page;
			int totalCnt = service.selectCountHost();
			Map<String, Integer> map = new Paging().paging(currentPage, totalCnt, BOARD_LIMIT, PAGE_LIMIT);
			mv.addObject("pageInfo", map);
			req.setAttribute("nowoption", selectbox);
			mv.addObject("usersList", service.selectListHost(currentPage, BOARD_LIMIT, vo));
		}else if(selectbox == 2) {
			
			int currentPage = page;
			int totalCnt = service.selectUnblockCountHost();
			Map<String, Integer> map = new Paging().paging(currentPage, totalCnt, BOARD_LIMIT, PAGE_LIMIT);
			mv.addObject("pageInfo", map);
			req.setAttribute("nowoption", selectbox);
			mv.addObject("usersList", service.selectUnblockHost(currentPage, BOARD_LIMIT, vo));
		}else if(selectbox == 3) {
			
			int currentPage = page;
			int totalCnt = service.selectBlockCountHost();
			Map<String, Integer> map = new Paging().paging(currentPage, totalCnt, BOARD_LIMIT, PAGE_LIMIT);
			mv.addObject("pageInfo", map);
			req.setAttribute("nowoption", selectbox);
			mv.addObject("usersList", service.selectBlockHost(currentPage, BOARD_LIMIT, vo));
		}
		
		
		mv.setViewName("/admin/host");
		
		return mv;
		
	}
	
	
	//------------------------------------------------------------------------------------------------
	
	
	
	@PostMapping("/user/block")
	public ModelAndView memberBlock(ModelAndView mv
			,MemberVo vo
			,HttpServletRequest req
			, @RequestParam(value = "selectbox", defaultValue="1") int selectbox
			) throws Exception {
				
		System.out.println("vo: "+ vo);
		int result = service.memberblock(vo);
		mv.setViewName("redirect:/admin/user?selectbox="+ selectbox);
		
		return mv;
		
	}
	
	@PostMapping("/user/unblock")
	public ModelAndView memberUnblock(ModelAndView mv
			,MemberVo vo
			,HttpServletRequest req
			, @RequestParam(value = "selectbox", defaultValue="1") int selectbox
			) throws Exception {
				
		System.out.println("vo: "+ vo);
		int result = service.memberUnblock(vo);
		mv.setViewName("redirect:/admin/user?selectbox="+ selectbox);
		
		return mv;
		
	}
	
	
	//------------------------------------------------------------------------------------------------
	
	
	@PostMapping("/host/block")
	public ModelAndView memberBlockHost(ModelAndView mv
			,MemberVo vo
			,HttpServletRequest req
			, @RequestParam(value = "selectbox", defaultValue="1") int selectbox
			) throws Exception {
				
		System.out.println("vo: "+ vo);
		int result = service.memberblock(vo);
		mv.setViewName("redirect:/admin/host?selectbox="+ selectbox);
		
		return mv;
		
	}
	
	@PostMapping("/host/unblock")
	public ModelAndView memberUnblockHost(ModelAndView mv
			,MemberVo vo
			,HttpServletRequest req
			, @RequestParam(value = "selectbox", defaultValue="1") int selectbox
			) throws Exception {
				
		System.out.println("vo: "+ vo);
		int result = service.memberUnblock(vo);
		mv.setViewName("redirect:/admin/host?selectbox="+ selectbox);
		
		return mv;
		
	}
	
	//-------------------------------------------------------

	@GetMapping("/product")
	public ModelAndView adminselectProductList(ModelAndView mv) {
		mv.setViewName("/admin/product");
		return mv;
	}
	
	
}
