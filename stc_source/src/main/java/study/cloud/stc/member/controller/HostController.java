package study.cloud.stc.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/host")
public class HostController {

	@GetMapping
	public ModelAndView main(ModelAndView mv) throws Exception {
		mv.setViewName("/host/host");
		return mv;
	}	
	
	@GetMapping("/product")
	public ModelAndView selectProductList(ModelAndView mv) throws Exception {
		mv.setViewName("/host/product");
		return mv;
	}	
	
	
}
