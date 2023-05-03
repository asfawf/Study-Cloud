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

	public List<ChattRoomVo> searchListChattRoom();

	public List<ChattRoomVo> allListChattRoom();

	public List<ChattRoomVo> searchAllListChattRoom();

	public List<ChattRoomVo> searchReqChattRoom(String chaRoomId);

	public int searchRoomCount(String chaRoomId);

}
