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
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	
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
		
		String username= (String) userInfo.get("email");
		
		
		// 여기 수정해야 함 ==> 현재 하드 코딩 상태 DB 왔다 가서 auther 가져와서 비교 후 그걸로 로그인 구현 넣기		
		
		List<GrantedAuthority> roles = new ArrayList<>(1);
		String roleStr = username.equals("soub0713@naver.com") ? "ROLE_USER" : "ROLE_HOST";
		roles.add(new SimpleGrantedAuthority(roleStr));
		
		
		//  
		
		
		User user = new User(username, "", roles);
		
		// DB 접근 		
		Authentication auth = new UsernamePasswordAuthenticationToken(username, null, roles);
		SecurityContextHolder.getContext().setAuthentication(auth);
		
		session.setAttribute("kakaoToken", access_Token);
		
		return "redirect:/";
	}
}
