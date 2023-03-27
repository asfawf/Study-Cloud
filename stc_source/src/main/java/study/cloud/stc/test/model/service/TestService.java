package study.cloud.stc.test.model.service;

import java.util.List;

import study.cloud.stc.test.model.vo.TestVo;

public interface TestService {

	public int insert(TestVo vo) throws Exception;
	public int update(TestVo vo) throws Exception;
	public int delete(String id) throws Exception ;
	public TestVo selectOne(int boardNum) throws Exception;
	
	public List<TestVo> selectList() throws Exception;

	public List<TestVo> selectList(int currentPage, int limit) throws Exception;
	
	public int selectCount() throws Exception;
	
}
