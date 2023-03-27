package study.cloud.stc.test.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import study.cloud.stc.test.model.dao.TestDao;
import study.cloud.stc.test.model.vo.TestVo;

@Service
public class TestServiceImpl implements TestService{

	@Autowired
	private TestDao dao;
	
	public int insert(TestVo vo) throws Exception {
		return dao.insert(vo);
	}
	public int update(TestVo vo) throws Exception {
		return dao.update(vo);
	}
	public int delete(String id) throws Exception {
		return dao.delete(id);
	}
	public TestVo selectOne(int boardNum) throws Exception {
		return dao.selectOne(boardNum);
	}
	
	public List<TestVo> selectList() throws Exception {
		return dao.selectList();
	}
	
	@Override
	public List<TestVo> selectList(int currentPage, int limit) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectList(currentPage, limit);
	}
	
	
	
	
	public int selectCount() throws Exception {
		return dao.selectCount();
	}
}
