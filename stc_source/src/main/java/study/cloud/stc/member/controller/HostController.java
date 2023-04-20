package study.cloud.stc.member.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import study.cloud.stc.product.model.service.ProductService;
import study.cloud.stc.product.model.vo.ProductDetailDto;
import study.cloud.stc.qna.model.service.QnaService;
import study.cloud.stc.qna.model.vo.QnaVo;
 

@Controller
@RequestMapping("/host")
public class HostController {

	@Autowired
	private QnaService qservice;
	private ProductService service;
	
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
	
	@GetMapping("/product/insert")
	public ModelAndView insertProductPage(ModelAndView mv) throws Exception {
		mv.setViewName("/host/product/insert");
		return mv;
	}
	
	//상품등록
	@PostMapping("/product/insert")
	public ModelAndView insertProduct(
			ModelAndView mv,
			@ModelAttribute("dto")
			ProductDetailDto dto
			) throws Exception {
		int result = service.insertProduct(dto);
		if(result == 2) {
			mv.setViewName("redirect:/host/product");
		}else {
			mv.setViewName("/product/insert");
		}
		return mv;
	}

	
	
	@GetMapping("/review")
	public ModelAndView selectReviewList(ModelAndView mv) throws Exception {
		mv.setViewName("/host/review");
		return mv;
	}	
	
	@GetMapping("/qna")
	public ModelAndView selectQnaList(ModelAndView mv
			, QnaVo vo
			) throws Exception {
		mv.addObject("qnaList", qservice.selectList());
		mv.setViewName("/host/qna");
		return mv;
	}
	
	@GetMapping("/reserve")
	public ModelAndView selectreserveList(ModelAndView mv) throws Exception {
		mv.setViewName("/host/reserve");
		return mv;
	}
	
	@GetMapping("/reserve/delete")
	public ModelAndView deleteReservePage(ModelAndView mv) throws Exception {
		mv.setViewName("/host/reserve/delete");
		return mv;
	}
	
	@GetMapping("/product/update")
	public ModelAndView updateProductPage(ModelAndView mv) throws Exception {
		mv.setViewName("/host/product/update");
		return mv;
	}
	
	@GetMapping("/reserve/update")
	public ModelAndView updateProduct(ModelAndView mv) throws Exception {
		mv.setViewName("/host/product");
		return mv;
	}
	
	
}
