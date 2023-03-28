package study.cloud.stc;

import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
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
	public ModelAndView kakaoLogin(@RequestParam(value = "code", required = false) String code, HttpSession session) throws Throwable {

		KakaoLoginServiceImpl iKakaoS = new KakaoLoginServiceImpl();
		
		System.out.println("code : "+ code);
		
		String access_Token = iKakaoS.getAccessToken(code);
		System.out.println("###access_Token#### : " + access_Token);
		
		HashMap<String, Object> userInfo = iKakaoS.getUserInfo(access_Token);
		System.out.println("###nickname#### : " + userInfo.get("nickname"));
		System.out.println("###email#### : " + userInfo.get("email"));
		
		return null;
	}
}
