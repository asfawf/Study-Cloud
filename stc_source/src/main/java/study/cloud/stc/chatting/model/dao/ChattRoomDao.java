package study.cloud.stc.chatting.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import study.cloud.stc.chatting.model.vo.ChattRoomVo;

@Repository
public class ChattRoomDao {

	@Autowired
	private SqlSession session;
	
	public ChattRoomVo viewRoomId(ChattRoomVo crvo) {
		
		return session.selectOne("chroom.viewRoomId", crvo);
	}

	public int addRoomId(ChattRoomVo crvo) {
		
		return session.update("chroom.addRoomId", crvo);
	}

}
