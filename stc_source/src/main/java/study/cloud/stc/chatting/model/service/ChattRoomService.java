package study.cloud.stc.chatting.model.service;

import java.util.List;

import study.cloud.stc.chatting.model.vo.ChattRoomVo;
import study.cloud.stc.chatting.model.vo.ChattingVo;

public interface ChattRoomService {

	public ChattRoomVo viewRoomId(ChattRoomVo crvo);

	public int addRoomId(ChattRoomVo crvo);

	public int updateChattRoom(ChattRoomVo crvo);

	public List<ChattRoomVo> selectListChattRoom(ChattRoomVo crvo);

	public int selectCount();

}
