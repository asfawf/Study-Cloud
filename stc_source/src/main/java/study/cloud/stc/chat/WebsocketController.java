package study.cloud.stc.chat;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/ws")
@Slf4j
public class WebsocketController {

	@GetMapping("/ws.do")
	public ModelAndView ws(ModelAndView mv, Principal principal) {

		String id = principal.getName();

		mv.addObject("id", id);

		mv.setViewName("ws/ws");

		return mv;

	}
}