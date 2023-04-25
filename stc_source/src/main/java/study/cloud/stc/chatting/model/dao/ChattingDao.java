package study.cloud.stc.chatting.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import study.cloud.stc.chatting.model.vo.ChattingVo;

@Repository
public class ChattingDao {

	@Autowired
	private SqlSession session;
	
	public int addtMessage(ChattingVo vo) {
		// TODO Auto-generated method stub
		return session.insert("chatns.addtMessage", vo);
	}

}
