package study.cloud.stc.chatting.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import study.cloud.stc.chatting.model.dao.ChattRoomDao;
import study.cloud.stc.chatting.model.vo.ChattRoomVo;

@Service
public class ChattRoomServiceImpl implements ChattRoomService{

	@Autowired
	private ChattRoomDao dao;
	
	@Override
	public ChattRoomVo viewRoomId(ChattRoomVo crvo) {
		
		return dao.viewRoomId(crvo);
	}

	@Override
	public int addRoomId(ChattRoomVo crvo) {
		// TODO Auto-generated method stub
		return dao.addRoomId(crvo);
	}

}
