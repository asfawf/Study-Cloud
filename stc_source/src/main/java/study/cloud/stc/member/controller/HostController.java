package study.cloud.stc.member.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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
	@RequestMapping(value = "/product/insert", method = RequestMethod.POST)
	public ModelAndView insertProduct(
						ModelAndView mv,
						ProductDetailDto dto ) {
			try {
	        
	        // 상품 등록
	        Map<String, Object> map = new HashMap<String, Object>();
	      
	        map.put("proNum", dto.getProNum());
	        map.put("proName", dto.getProName());
	        map.put("proAddress", dto.getProAddress());
	        map.put("proPhone", dto.getProPhone());
	        map.put("proPost", dto.getProPost());
	        map.put("proInfo", dto.getProInfo());
	        map.put("proNotice", dto.getProNotice());
	        map.put("proRefund", dto.getProRefund());
	        map.put("proPrice", dto.getProPrice());
	        //map.put("proPicOriginal", proPicOriginal.getOriginalFilename());

	        int result = service.insertProduct(dto);

	        mv.addObject("result", result);
	       // mav.addObject("proId", dto.getProId());
	        mv.setViewName("redirect:/host/product");

	    } catch (Exception e) {
	        e.printStackTrace();
	        mv.setViewName("/error");
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
