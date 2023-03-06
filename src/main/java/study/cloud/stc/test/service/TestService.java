package study.cloud.stc.test.service;

import java.util.List;

import study.cloud.stc.test.vo.TestVo;

public interface TestService {

	public int insert(TestVo vo);
	public int update(TestVo vo);
	public int delete(String id) ;
	public TestVo selectOne(int boardNum);
	public List<TestVo> selectList();
	
}
