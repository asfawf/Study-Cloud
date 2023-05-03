package study.cloud.stc.chat;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import study.cloud.stc.chatting.model.service.ChattRoomService;
import study.cloud.stc.chatting.model.service.ChattingService;
import study.cloud.stc.chatting.model.vo.ChattRoomVo;
import study.cloud.stc.chatting.model.vo.ChattingVo;
import study.cloud.stc.member.model.vo.MemberVo;

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
			String standname = principal.getName();
			System.out.println("standname: "+standname);

			// 대화 그리고 분류용 정보
			request.setAttribute("chatt", service.selectListMessage(schvo));
			request.setAttribute("standname", standname);
			request.setAttribute("chrlist", crService.selectListChattRoom(crvo));
			
			request.setAttribute("roomCount", crService.selectCount());
			
			return "chat";
		}
		
		@PostMapping("/searchroom")
		@ResponseBody
		public List<ChattRoomVo> userInfoAjax(
				HttpServletRequest req,
				@RequestParam(value="searchKeyword", defaultValue="valueIsNull") String chaRoomId
			) throws Exception {
			
			
			// 이 때는 전체 방이 나오게 하기
			if(chaRoomId.equals("valueIsNull")) {
				System.out.println("searchKeyword : "+ chaRoomId);
				return crService.searchAllListChattRoom();
			}
			
			// 하단의 경우에서 부터는 조건에 맞춰서 찾기
//			return new Gson().toJson(crService.searchListChattRoom());
			return crService.searchReqChattRoom(chaRoomId);
		}
		
		@PostMapping("/updatecount")
		@ResponseBody
		public String updateCount(
			@RequestParam(value="chaRoomId", defaultValue="valueIsNull") String chaRoomId
				) throws Exception {
			
			System.out.println("검색어 관련 update Controller chaRoomId:" + chaRoomId);
			
			if(chaRoomId.equals("valueIsNull")) {
				String nullcount = String.valueOf( crService.selectCount());
				
				return nullcount;
			}
			
			String roomCount = String.valueOf( crService.searchRoomCount(chaRoomId));
			
			return roomCount;
		}
		

}
