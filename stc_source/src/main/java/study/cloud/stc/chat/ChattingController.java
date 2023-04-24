package study.cloud.stc.chat;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import study.cloud.stc.chatting.model.service.ChattingService;

@Controller
@RequestMapping("/chatting")
public class ChattingController {
	
	@Autowired
	ChattingService service;
	
	// 채팅방 입장
		@GetMapping
		public String viewChat(HttpServletRequest request, HttpServletResponse response, Model model, ModelAndView mv,Principal principal) throws Exception {

			String standname = principal.getName();
			System.out.println("standname: "+standname);
			
			request.setAttribute("standname", standname);
			
			return "chat";
		}

}
