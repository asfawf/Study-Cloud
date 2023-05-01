package study.cloud.stc.chat;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import study.cloud.stc.chatting.model.service.ChattRoomService;
import study.cloud.stc.chatting.model.service.ChattingService;
import study.cloud.stc.chatting.model.vo.ChattRoomVo;
import study.cloud.stc.chatting.model.vo.ChattingVo;

@Controller
@RequestMapping("/chatting")
public class ChattingController {
	
	@Autowired
	ChattingService service;
	
	@Autowired
	ChattRoomService crService;
	
	// 채팅방 입장
		@GetMapping
		public String viewChat(
				HttpServletRequest request, 
				HttpServletResponse response, 
				Model model, 
				ModelAndView mv,
				Principal principal, 
				@RequestParam(value="room_id", defaultValue="1") String room_id
				) throws Exception
		{

			ChattingVo schvo = new ChattingVo();
			ChattRoomVo crvo = new ChattRoomVo();

			System.out.println("채팅 컨트롤러 에서의 room_id: "+ room_id);
			schvo.setRoomId(room_id);

			// 해당 방의 대화
			System.out.println("service.selectListMessage(schvo): "+ service.selectListMessage(schvo));

			String standname = principal.getName();
			System.out.println("standname: "+standname);

			// 대화 그리고 분류용 정보
			request.setAttribute("chatt", service.selectListMessage(schvo));
			request.setAttribute("standname", standname);
			request.setAttribute("chrlist", crService.selectListChattRoom(crvo));
			
			System.out.println("crService.selectCount(): "+ crService.selectCount());
			
			request.setAttribute("roomCount", crService.selectCount());
			
			System.out.println(" crService.selectListChattRoom(crvo): 이거 봐"+  crService.selectListChattRoom(crvo));
			
			return "chat";
		}

}
