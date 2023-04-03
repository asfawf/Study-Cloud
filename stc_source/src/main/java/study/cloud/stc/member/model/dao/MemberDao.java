package study.cloud.stc.member.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import study.cloud.stc.member.model.vo.MemberVo;
import study.cloud.stc.test.model.vo.TestVo;

@Repository
public class MemberDao {
	
	@Autowired
	private SqlSession session;
	
	
	public List<MemberVo> selectList(MemberVo vo) throws Exception {
		
		return session.selectList("memberns.memberSelectUsersList", vo);
	}
	
	public int selectCount() throws Exception {
		return session.selectOne("memberns.selectUserCount");
	}

	public List<MemberVo> selectListTest(int currentPage, int limit, MemberVo vo) throws Exception {
			
		int offset = (currentPage -1 )*limit;
		
		RowBounds rb = new RowBounds(offset, limit);
		
		return session.selectList("memberns.memberSelectUsersList", vo , rb);
	}
	
}
