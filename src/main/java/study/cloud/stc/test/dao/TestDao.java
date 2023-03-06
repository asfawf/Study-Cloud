package study.cloud.stc.test.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import study.cloud.stc.test.vo.TestVo;

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
	
}
