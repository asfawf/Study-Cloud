package study.cloud.stc.chatting.model.service;

import study.cloud.stc.chatting.model.vo.ChattRoomVo;

public interface ChattRoomService {

	public ChattRoomVo viewRoomId(ChattRoomVo crvo);

	public int addRoomId(ChattRoomVo crvo);

}
