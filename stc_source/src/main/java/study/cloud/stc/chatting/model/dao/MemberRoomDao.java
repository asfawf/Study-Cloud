package study.cloud.stc.chatting.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import study.cloud.stc.chatting.model.vo.MemberRoomVo;

@Repository
public class MemberRoomDao {

	@Autowired
	private SqlSession session;
	
	public MemberRoomVo viewMemberId(MemberRoomVo mrvo) {
		// TODO Auto-generated method stub
		return session.selectOne("memroomns.viewMemberId", mrvo);
	}

	public int addMemId(MemberRoomVo mrvo) {
		// TODO Auto-generated method stub
		return session.insert("memroomns.addMemId", mrvo);
	}

}
