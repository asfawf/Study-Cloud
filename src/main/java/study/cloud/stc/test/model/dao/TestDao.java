package study.cloud.stc.test.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import study.cloud.stc.test.model.vo.TestVo;

@Repository
public class TestDao {

	@Autowired
	private SqlSession sqlSession;
	
	public int insert(TestVo vo) {
		return sqlSession.insert("testMember.testinsert", vo);
	}
	public int update(TestVo vo) {
		return sqlSession.update("testMember.testupdate", vo);
	}
	public int delete(String id) {
		return sqlSession.delete("testMember.testdelete", id);
	}
	public TestVo selectOne(int boardNum) {
		return sqlSession.selectOne("testMember.testselectOne", boardNum);
	}
	public List<TestVo> selectList() {
		return sqlSession.selectList("testMember.testselectList");
	}
	
	public List<TestVo> selectList(int currentPage, int limit) {
		
		int offset = (currentPage -1 )*limit;
		
		RowBounds rb = new RowBounds(offset, limit);
		
		return sqlSession.selectList("testMember.testselectList", null , rb);
	}
	
	
	public int selectCount() {
		return sqlSession.selectOne("testMember.selectCount");
	}
	
}
