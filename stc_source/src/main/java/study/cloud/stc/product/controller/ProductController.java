package study.cloud.stc.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController {

	@GetMapping("/product")
	public ModelAndView productDetail(ModelAndView mv) {
		mv.setViewName("/product");
		return mv;
	}
	
	
}
