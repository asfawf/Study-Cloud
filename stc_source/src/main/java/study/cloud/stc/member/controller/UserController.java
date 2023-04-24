package study.cloud.stc.member.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import study.cloud.stc.member.model.service.MemberService;
import study.cloud.stc.member.model.vo.MemberVo;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private MemberService mservice;
	
	
	@GetMapping
	public ModelAndView main(ModelAndView mv,  Principal principal) throws Exception {
		
		mv.addObject("principal", principal.getName());
		mv.setViewName("user/user");
		return mv;
	}	
	
	@GetMapping("/info")
	public ModelAndView viewUserInfo(ModelAndView mv, Principal principal, MemberVo vo) throws Exception {
		
		
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
		
		mv.setViewName("/user/info");
		
		return mv;
	}
	
	@PostMapping("/userinfoajax")
	@ResponseBody
	public String userInfoAjax(
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
