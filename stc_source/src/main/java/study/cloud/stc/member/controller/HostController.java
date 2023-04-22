package study.cloud.stc.member.controller;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import study.cloud.stc.member.model.service.MemberService;
import study.cloud.stc.member.model.vo.MemberVo;
import study.cloud.stc.product.model.service.ProductService;
import study.cloud.stc.product.model.vo.HostProductDto;
import study.cloud.stc.product.model.vo.ProductDetailDto;
import study.cloud.stc.qna.model.service.QnaService;
import study.cloud.stc.qna.model.vo.QnaVo;
 

@Controller
@RequestMapping("/host")
public class HostController {

	@Autowired
	private QnaService qservice;
	@Autowired
	private ProductService pservice;
	@Autowired
	private MemberService mservice;
		
	@GetMapping
	public ModelAndView main(ModelAndView mv) throws Exception {
		mv.setViewName("/host/host");
		return mv;
	}	
	
	@GetMapping("/product")
	public ModelAndView selectProductList(
			ModelAndView mv
			,HostProductDto dto
			) throws Exception {
		List<HostProductDto> hostDto = pservice.selectList(new HostProductDto());
		
//		mv.addObject("hostlist",pservice.selectList(dto));
		mv.addObject("hostlist",hostDto);
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
		int result = pservice.insertProduct(dto);
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
	
	
	@GetMapping("/info")
	public ModelAndView viewHostInfo(ModelAndView mv, Principal principal, MemberVo vo) throws Exception {
		
		
		System.out.println("memId: "+principal.getName());
		vo.setMemId(principal.getName());
		
		System.out.println("vo:"+ vo);
		
		System.out.println("result: "+mservice.takeInfo(vo));
		
		
		mv.addObject("mv", mservice.takeInfo(vo));
		
		/*
		 * vo.setMemId(principal.getName());
		 * 
		 * renewal= 
		 */
		
		//System.out.println("renewal:" + renewal);
		
		mv.setViewName("/host/info");
		
		return mv;
	}
	
	@PostMapping("/info")
	@ResponseBody
	public String hostInfoAjax(
			MemberVo vo
			) throws Exception {
		
		System.out.println("이건 변환 전: "+vo);
		
		String strphone = vo.getMemPhone();
		String newstrPhone = strphone.replaceAll("[^ㄱ-ㅎㅏ-ㅣ가-힣a-zA-Z0-9]", "");
		
		System.out.println("newstrPhone: "+ newstrPhone);
		vo.setMemPhone(newstrPhone);
		
		System.out.println("이건 변환 후: "+vo);
		
		int result = 0;
		
		result = mservice.updateHostInfo(vo);

		String shout= null;
		
		if(result > 0) {
			shout = "success";
		}else {
			shout = "fail";
		}
		
		return shout;
	}
	
	
}
