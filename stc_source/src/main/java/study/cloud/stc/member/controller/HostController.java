package study.cloud.stc.member.controller;

import java.security.Principal;
import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import study.cloud.stc.common.paging.Paging;
import study.cloud.stc.member.model.service.MemberService;
import study.cloud.stc.member.model.vo.MemberVo;
import study.cloud.stc.product.model.service.ProductService;
import study.cloud.stc.product.model.vo.HostProductDto;
import study.cloud.stc.product.model.vo.ProductDetailDto;
import study.cloud.stc.product.model.vo.ProductVo;
import study.cloud.stc.qna.model.service.QnaService;
import study.cloud.stc.qna.model.vo.QnaVo;
 

@Controller
@RequestMapping("/host")
public class HostController {

	@Autowired
	private QnaService qna_service;
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
			, @RequestParam(value="page", defaultValue="1") int page
			) throws Exception {
		 List<HostProductDto> hostDto = pservice.selectList(new HostProductDto());
		 int currentPage = page;
		 int totalCnt = pservice.selectCount(dto);
		 Map<String, Integer> map= new Paging().paging(currentPage, totalCnt,10 , 10);
		 mv.addObject("pageInfo", map);
		 mv.addObject("hostlist",pservice.selectList(currentPage,10, dto));
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
			, Principal principal
			) throws Exception {
		dto.setMemId(principal.getName());
		int result = pservice.insertDetail(dto);
		if(result == 4) {
			mv.setViewName("redirect:/host/product");
		}else if(result == 3) {
			mv.setViewName("redirect:/host/product");
		}else if(result == 2) {
			mv.setViewName("redirect:/host/product");
		}else {
			mv.addObject("message","등록");
			mv.setViewName("/host/product/insert");
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
			, @RequestParam(value="page", defaultValue="1") int page
			, Principal principal
			) throws Exception {
		List<ProductVo> productList = pservice.selectHostProductList(principal.getName());
		int proNum = 0;
		
	    if (productList.size() > 0) {
	        proNum = productList.get(productList.size() - 1).getProNum();
	    }
	    
		Map<String, Object> hostQna = new HashMap<>();
		hostQna.put("productList", productList);
		hostQna.put("selectedProNum", proNum);

		mv.addObject("hostQna", hostQna);
		mv.setViewName("/host/qna");
		return mv;
	}
	@PostMapping("/qna")
	@ResponseBody
	public String selectQnaListAjax(
			  @RequestParam(name="selectedProNum") int proNum
			, @RequestParam(value="page", defaultValue="1") int page
			, Principal principal
			) throws Exception {

		int cntPerPage = 3; 
		int currentPage = page;
		int totalCnt = qna_service.selectHostQnaCount(proNum);
		Map<String, Integer> map = new Paging().paging(currentPage, totalCnt, cntPerPage, 5);

		List<ProductVo> productList = pservice.selectHostProductList(principal.getName());

		if (proNum == 0) {
		    if (productList.size() > 0) {
		        proNum = productList.get(productList.size() - 1).getProNum();
		    }
		}
		List<QnaVo> qnaList = new ArrayList<>();
		if (proNum > 0) {
		    qnaList = qna_service.selectHostProductQnaList(currentPage, cntPerPage, proNum);
		}

		Map<String, Object> hostQna = new HashMap<>();
		hostQna.put("pageInfo", map);
		hostQna.put("productList", productList);
		hostQna.put("selectedProNum", proNum);
		hostQna.put("qnaList", qnaList);

		return new Gson().toJson(hostQna);

	}
	@PostMapping("/qna/delete")
	@ResponseBody
	public String deleteQnaAjax(
			  @RequestParam(name="selectedProNum") int proNum
			, @RequestParam(value="page", defaultValue="1") int page
			, @RequestParam(value="qnaNum") int qnaNum
			, Principal principal
			) throws Exception {

		int cntPerPage = 3; 
		int currentPage = page;
		int totalCnt = qna_service.selectHostQnaCount(proNum);
		Map<String, Integer> map = new Paging().paging(currentPage, totalCnt, cntPerPage, 5);

		List<ProductVo> productList = pservice.selectHostProductList(principal.getName());

		if (proNum == 0) {
		    if (productList.size() > 0) {
		        proNum = productList.get(productList.size() - 1).getProNum();
		    }
		}
		List<QnaVo> qnaList = new ArrayList<>();
		if (proNum > 0) {
			qna_service.delete(qnaNum);
		    qnaList = qna_service.selectHostProductQnaList(currentPage, cntPerPage, proNum);
		}

		Map<String, Object> hostQna = new HashMap<>();
		hostQna.put("pageInfo", map);
		hostQna.put("productList", productList);
		hostQna.put("selectedProNum", proNum);
		hostQna.put("qnaList", qnaList);

		return new Gson().toJson(hostQna);
	}
	
	@PostMapping("/qna/reply/update")
	@ResponseBody
	public String replyUpdateQnaAjax(QnaVo vo
			, @RequestParam(name="selectedProNum") int proNum
			, @RequestParam(value="page", defaultValue="1") int page
			, @RequestParam(value="qnaNum") int qnaNum
			, Principal principal
			) throws Exception {

		int cntPerPage = 3; 
		int currentPage = page;
		int totalCnt = qna_service.selectHostQnaCount(proNum);
		Map<String, Integer> map = new Paging().paging(currentPage, totalCnt, cntPerPage, 5);

		List<ProductVo> productList = pservice.selectHostProductList(principal.getName());

		if (proNum == 0) {
		    if (productList.size() > 0) {
		        proNum = productList.get(productList.size() - 1).getProNum();
		    }
		}
		List<QnaVo> qnaList = new ArrayList<>();
		if (proNum > 0) {
			qna_service.updateReply(vo);
		    qnaList = qna_service.selectHostProductQnaList(currentPage, cntPerPage, proNum);
		}

		Map<String, Object> hostQna = new HashMap<>();
		hostQna.put("pageInfo", map);
		hostQna.put("productList", productList);
		hostQna.put("selectedProNum", proNum);
		hostQna.put("qnaList", qnaList);

		return new Gson().toJson(hostQna);
	}
	
	@PostMapping("/qna/reply/delete")
	@ResponseBody
	public String replyDeleteQnaAjax(
			  @RequestParam(name="selectedProNum") int proNum
			, @RequestParam(value="page", defaultValue="1") int page
			, @RequestParam(value="qnaNum") int qnaNum
			, Principal principal
			) throws Exception {

		int cntPerPage = 3; 
		int currentPage = page;
		int totalCnt = qna_service.selectHostQnaCount(proNum);
		Map<String, Integer> map = new Paging().paging(currentPage, totalCnt, cntPerPage, 5);

		List<ProductVo> productList = pservice.selectHostProductList(principal.getName());

		if (proNum == 0) {
		    if (productList.size() > 0) {
		        proNum = productList.get(productList.size() - 1).getProNum();
		    }
		}
		List<QnaVo> qnaList = new ArrayList<>();
		if (proNum > 0) {
			qna_service.deleteReply(qnaNum);
		    qnaList = qna_service.selectHostProductQnaList(currentPage, cntPerPage, proNum);
		}

		Map<String, Object> hostQna = new HashMap<>();
		hostQna.put("pageInfo", map);
		hostQna.put("productList", productList);
		hostQna.put("selectedProNum", proNum);
		hostQna.put("qnaList", qnaList);

		return new Gson().toJson(hostQna);
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
	public ModelAndView updateProductPage(
			ModelAndView mv
				,@RequestParam("proNum") int proNum
			) throws Exception {
		ProductDetailDto pd = pservice.selectOne(proNum);
		mv.addObject("productDetail", pd);
		mv.setViewName("/host/product/update");
		return mv;
	}
	
	@PostMapping("/product/update")
	public ModelAndView updateProduct(
			ModelAndView mv,
		// 	@RequestParam("proNum") int proNum,
			ProductDetailDto pd
			) throws Exception {
		//   pd = pservice.selectOne(proNum);
		int result = pservice.updateProduct(pd);  // TODO ProductDetailDto으로 수정
		if(result == 4) {
			mv.setViewName("redirect:/host/product");
		}else if(result == 3) {
			mv.setViewName("redirect:/host/product");
		}else if(result == 2) {
			mv.setViewName("redirect:/host/product");
		}else {
//			mv.addObject("message","업데이트 실패");
			mv.setViewName("redirect:/host/product");
		}
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
