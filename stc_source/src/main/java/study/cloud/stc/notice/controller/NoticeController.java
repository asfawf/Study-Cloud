package study.cloud.stc.notice.controller;

import java.sql.SQLException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import study.cloud.stc.common.paging.Paging;
import study.cloud.stc.notice.model.service.NoticeService;
import study.cloud.stc.notice.model.vo.NoticeVo;

 

@Controller
@RequestMapping("/notice")
public class NoticeController {
	
	@Autowired
	private NoticeService service;
	
	@GetMapping
	public ModelAndView noticeList(ModelAndView mv
		  //, @RequestParam("notiIdx") String notiIdx
		  , NoticeVo vo
		  , @RequestParam(value="page", defaultValue="1") int page) throws Exception{
		
		//mv.addObject("noticeList", service.selectList(notiIdx));
		int currentPage = page; 
		int totalCnt= service.selectCount(); 
		Map<String, Integer> map= new Paging().paging(currentPage, totalCnt, 3, 3); 
		mv.addObject("pageInfo", map);
		mv.addObject("noticeList", service.selectList(vo));
		mv.setViewName("notice");
		return mv;
	}
	
	@PostMapping("/delete")
	public ModelAndView noticeDelete(ModelAndView mv
			, NoticeVo vo) throws Exception{
		service.delete(vo);
		mv.setViewName("redirect:/notice");
		return mv;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	@ExceptionHandler(NullPointerException.class)
	public ModelAndView memberNullPointExceptionHandler( NullPointerException e
			// 오류 발생함. ModelAndView mv
			) {
		e.printStackTrace();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", e.getMessage()+" 오류가 발생했습니다. 다시 시도해 주세요.");
		mv.setViewName("errors/error");
		return mv;
	}
	@ExceptionHandler(NumberFormatException.class)
	public ModelAndView memberNumberFormatExceptionHandler( NumberFormatException e
			// 오류 발생함. ModelAndView mv
			) {
		e.printStackTrace();
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", e.getMessage()+" 오류가 발생했습니다. 다시 시도해 주세요.");
		mv.setViewName("errors/error");
		return mv;
	}
	@ExceptionHandler(SQLException.class)
	public ModelAndView memberSQLExceptionHandler( SQLException e
			// 오류 발생함. ModelAndView mv
			) {
		e.printStackTrace();
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", e.getMessage()+" 오류가 발생했습니다. 다시 시도해 주세요.");
		mv.setViewName("errors/error");
		return mv;
	}
//	@ExceptionHandler
	@ExceptionHandler(Exception.class)
	public ModelAndView memberExceptionHandler( Exception e
			// 오류 발생함. ModelAndView mv
			) {
		e.printStackTrace();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", e.getMessage()+" 오류가 발생했습니다. 다시 시도해 주세요.");
		mv.setViewName("errors/error");
		return mv;
	}
}
