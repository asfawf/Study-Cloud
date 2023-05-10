package study.cloud.stc.pay.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/pay")
public class PayController {

	
	@GetMapping
	public ModelAndView paypage(ModelAndView mv) {
		mv.setViewName("/pay");
		return mv;
	}
	
	@PostMapping
	public ModelAndView payInfo(ModelAndView mv) {
		mv.setViewName("/payinfo");
		return mv;
	}
	
	
}
