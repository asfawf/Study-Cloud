package study.cloud.stc.member.controller;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import study.cloud.stc.member.model.service.MailSendService;
import study.cloud.stc.member.model.service.MemberService;
import study.cloud.stc.member.model.vo.MemberVo;



@Controller
@RequestMapping("/join")
public class JoinController {
	
	@Autowired
	private MemberService memberService;
	@Autowired
	private MailSendService mailSendService;
	
	@GetMapping("/joinform")
	public ModelAndView joinForm(ModelAndView mv) {
		mv.setViewName("/join/joinform");
		return mv;
	}
	
	@PostMapping("/insert") //prev 로 되어있었음
	public String insertJoin(
			MemberVo memberVo
			, ModelAndView mv
		) throws Exception {
		/* 현재 들어오는 데이터 모양 
		 * 
		 * TODO : 전화번호 - 제거 후 set 하기
		 * 
		 * MemberVo(
		 * memId=sacscsacs, 
		 * memPasswd=1223, 
		 * memName=cccccccccccccc,
		 * memPhone=010-9586-9586, 
		 * memEmail=sscscc@fawwvav, 
		 * memQuit=0,
		 * memAuthority=ROLE_USER, 
		 * memSns=null)
		 */
		
		System.out.println("암호화 전: "+ memberVo.getMemPasswd());
		
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		
		String securePw = encoder.encode(memberVo.getMemPasswd());
		System.out.println("암호화 후: "+ securePw);
		
		memberService.insertJoin(memberVo);
		
		
		
		return "redirect:/";
	}
			
	
	@GetMapping("/jointerms")
	public ModelAndView jointerms(ModelAndView mv) {
		mv.setViewName("/join/jointerms");
		return mv;
	}
	
	@PostMapping("/idcheck")
    @ResponseBody
    public String idCheck(String memId) throws Exception {
        int result = memberService.idCheck(memId);
        return String.valueOf(result);
    }
	
	@GetMapping("/emailcheck")
	@ResponseBody
	public String emailCheck(String memEmail) {
		System.out.println("이메일 인증 요청");		
		System.out.println("이메일 주소: " + memEmail);
		return mailSendService.joinEmail(memEmail);
	}


	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	@ExceptionHandler(NullPointerException.class)
	public ModelAndView memberNullPointExceptionHandler( NullPointerException e
			// 오류 발생함. ModelAndView mv
			) {
		e.printStackTrace();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", e.getMessage()+" 오류가 발생했습니다. 다시 시도해 주세요.");
		mv.setViewName("errors/error");
		return mv;
	}
	@ExceptionHandler(NumberFormatException.class)
	public ModelAndView memberNumberFormatExceptionHandler( NumberFormatException e
			// 오류 발생함. ModelAndView mv
			) {
		e.printStackTrace();
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", e.getMessage()+" 오류가 발생했습니다. 다시 시도해 주세요.");
		mv.setViewName("errors/error");
		return mv;
	}
	@ExceptionHandler(SQLException.class)
	public ModelAndView memberSQLExceptionHandler( SQLException e
			// 오류 발생함. ModelAndView mv
			) {
		e.printStackTrace();
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", e.getMessage()+" 오류가 발생했습니다. 다시 시도해 주세요.");
		mv.setViewName("errors/error");
		return mv;
	}
//	@ExceptionHandler
	@ExceptionHandler(Exception.class)
	public ModelAndView memberExceptionHandler( Exception e
			// 오류 발생함. ModelAndView mv
			) {
		e.printStackTrace();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", e.getMessage()+" 오류가 발생했습니다. 다시 시도해 주세요.");
		mv.setViewName("errors/error");
		return mv;
	}
}
