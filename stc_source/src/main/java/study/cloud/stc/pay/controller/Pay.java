package study.cloud.stc.pay.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/pay")
public class Pay {

	
	@GetMapping
	public ModelAndView paypage(ModelAndView mv) {
		mv.setViewName("/pay");
		return mv;
	}
	
	@PostMapping
	public ModelAndView payInfo(ModelAndView mv) {
		mv.setViewName("/pay");
		return mv;
	}
	
	
}