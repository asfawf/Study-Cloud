package study.cloud.stc.product.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import study.cloud.stc.common.paging.Paging;
import study.cloud.stc.product.model.service.ProductService;
import study.cloud.stc.product.model.vo.ProductDetailDto;
import study.cloud.stc.product.model.vo.ProductVo;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	private ProductService service;

	@GetMapping
	public ModelAndView productList(ModelAndView mv
			, ProductVo vo
			, @RequestParam(value="page", defaultValue="1") int page
			, @RequestParam(value="proAddress", defaultValue="") String proAddress
			) throws Exception {
		int currentPage = page; 
		int totalCnt= service.selectCount(proAddress); 
		Map<String, Integer> map= new Paging().paging(currentPage, totalCnt, 8, 3); 
		mv.addObject("pageInfo", map);
		mv.addObject("pdList", service.selectList(currentPage, 8, proAddress));
		mv.setViewName("product/product");
		return mv;
	}
	
	
	
	
	
	
	
	
//	@GetMapping("/detail")
//	public ModelAndView productDetail(ModelAndView mv) {
//		mv.setViewName("product/detail");
//		return mv;
//	}
	
	@GetMapping("/detail")
	public ModelAndView productDetail(
			ModelAndView mv
			,@RequestParam(value="proNum" ,defaultValue = "") int proNum
			) throws Exception {
		ProductDetailDto dto = service.selectOne(proNum);
		mv.addObject("detail",dto);
		
		
		mv.setViewName("product/detail");
		return mv;
	}
	
}
