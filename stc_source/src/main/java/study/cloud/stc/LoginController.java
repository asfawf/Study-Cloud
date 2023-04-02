package study.cloud.stc;

import java.security.Principal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import study.cloud.stc.member.model.vo.MemberVo;
import study.cloud.stc.test.model.service.TestService;

@Controller
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	private TestService service;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginFor(Locale locale, Model model) {
		logger.info("Welcome Login Form!");

		return "login/loginForm";
	}

	@RequestMapping(value = "/login/accessDenied.do", method = RequestMethod.GET)
	public String accessDenied(Locale locale, Model model) {
		logger.info("Welcome Access Denied!");

		return "login/accessDenied";
	}
	
	
	@RequestMapping(value="/kakaologin", method = RequestMethod.GET)
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code, HttpSession session) throws Throwable {

		KakaoLoginServiceImpl iKakaoS = new KakaoLoginServiceImpl();
		
		
		System.out.println("code : "+ code);
		
		String access_Token = iKakaoS.getAccessToken(code);
		System.out.println("###access_Token#### : " + access_Token);
		
		HashMap<String, Object> userInfo = iKakaoS.getUserInfo(access_Token);
		System.out.println("###nickname#### : " + userInfo.get("nickname"));
		System.out.println("###email#### : " + userInfo.get("email"));
		
		MemberVo vo = new MemberVo();
		
		String memEmail = (String) userInfo.get("email");
		String memName = (String) userInfo.get("nickname");
		String memId = memEmail;
		
		
		vo.setMemId(memId); 
		vo.setMemEmail(memEmail); 
		vo.setMemName(memName);
		 
		System.out.println("memEmail: "+memEmail + " memName: " + memName +" memId: " + memId);
		
		MemberVo result;
		result = service.kakaoselect(memId);
		
		System.out.println("result: "+ result );
		
		if(result == null)
		{
			service.insertKakao(vo);
		}
		
		// 여기 수정해야 함 ==> 현재 하드 코딩 상태 DB 왔다 가서 auther 가져와서 비교 후 그걸로 로그인 구현 넣기		
		
		List<GrantedAuthority> roles = new ArrayList<>(1);
		String roleStr = memEmail.equals(memEmail) ? "ROLE_USER" : "ROLE_USER";
		roles.add(new SimpleGrantedAuthority(roleStr));
		
		
		User user = new User(memEmail, "", roles);
		
		// DB 접근 		
		Authentication auth = new UsernamePasswordAuthenticationToken(memEmail, null, roles);
		SecurityContextHolder.getContext().setAuthentication(auth);
		
		session.setAttribute("kakaoToken", access_Token);
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "naverlogin", method = RequestMethod.GET)
	public String callBack(){
		return "login/callBack";
	}
	
	@RequestMapping(value="naversave", method=RequestMethod.POST)
	public @ResponseBody String naverSave(@RequestParam("n_age") String n_age, @RequestParam("n_birthday") String n_birthday, @RequestParam("n_email") String n_email, @RequestParam("n_gender") String n_gender, @RequestParam("n_id") String n_id, @RequestParam("n_name") String n_name, @RequestParam("n_nickName") String n_nickName) {
		System.out.println("#############################################");
		System.out.println(n_age);
		System.out.println(n_birthday);
		System.out.println(n_email);
		System.out.println(n_gender);
		System.out.println(n_id);
		System.out.println(n_name);
		System.out.println(n_nickName);
		System.out.println("#############################################");
		// ajax에서 성공 결과에서 ok인지 no인지에 따라 다른 페이지에 갈 수 있게끔 result의 기본값을 "no"로 선언
		 
		MemberVo naver= new MemberVo();
		naver.setMemId(n_id);
		naver.setMemEmail(n_email);
		
		System.out.println("naver: " + n_id + " : " +n_email);
		
		String result = "no";
		
		if(naver!=null) {
			// naver가 비어있지 않는다는건 데이터를 잘 받아왔다는 뜻이므로 result를 "ok"로 설정
			result = "ok";
		}

		return result;
	    
	}
		
}
