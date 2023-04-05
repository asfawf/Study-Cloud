package study.cloud.stc.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/product")
public class ProductController {

	@GetMapping
	public ModelAndView productDetail(ModelAndView mv) {
		mv.setViewName("product/product");
		return mv;
	}
	@GetMapping("/detail")
	public ModelAndView detail(ModelAndView mv) {
		mv.setViewName("product/detail");
		return mv;
	}
	
	
}
