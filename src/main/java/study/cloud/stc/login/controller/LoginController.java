package study.cloud.stc.login.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
public class LoginController {
	
	@RequestMapping(value="/login/loginPage.do")
	public String loginPage() {
		return "/login/loginPage";
	}
	
	@RequestMapping(value="/login/accessDenied.do")
	public String accessDeniedPage() throws Exception {
		return "/login/accessDenied";
	}
}
