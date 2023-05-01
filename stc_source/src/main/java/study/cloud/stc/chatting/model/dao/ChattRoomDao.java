package study.cloud.stc.chatting.model.dao;

import java.util.List;

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
		
		return session.insert("chroom.addRoomId", crvo);
	}

	public int updateChattRoom(ChattRoomVo crvo) {
		
		return session.update("chroom.updateChattRoom", crvo);
	}

	public List<ChattRoomVo> selectListChattRoom(ChattRoomVo crvo) {
		// TODO Auto-generated method stub
		return session.selectList("chroom.selectListChattRoom", crvo);
	}

	public int selectCount() {
		// TODO Auto-generated method stub
		return  session.selectOne("chroom.selectCount");
	}

}
