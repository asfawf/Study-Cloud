package study.cloud.stc.test.model.service;

import java.util.List;

import study.cloud.stc.test.model.vo.TestVo;

public interface TestService {

	public int insert(TestVo vo);
	public int update(TestVo vo);
	public int delete(String id) ;
	public TestVo selectOne(int boardNum);
	
	public List<TestVo> selectList();

	public List<TestVo> selectList(int currentPage, int limit);
	
	public int selectCount();
	
}
