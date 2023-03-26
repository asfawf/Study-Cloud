package study.cloud.stc.chat;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/ws")
@Slf4j
public class WebsocketController {
	
	@GetMapping("/ws.do")
	public void ws() {}
}
