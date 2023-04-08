package study.cloud.stc.product.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import study.cloud.stc.product.model.service.ProductService;
import study.cloud.stc.product.model.vo.ProductVo;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	private ProductService service;

	@GetMapping
	public ModelAndView productList(ModelAndView mv
			, ProductVo vo) throws Exception {
		//TODO: 페이징처리
		mv.addObject("pdList", service.selectList(vo));
		mv.setViewName("product/product");
		return mv;
	}
	@GetMapping("/detail")
	public ModelAndView productDetail(ModelAndView mv) {
		mv.setViewName("product/detail");
		return mv;
	}
	
	
}
