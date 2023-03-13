package study.cloud.stc.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import study.cloud.stc.test.dao.TestDao;
import study.cloud.stc.test.vo.TestVo;

@Service
public class TestServiceImp implements TestService{

	@Autowired
	private TestDao dao;
	
	public int insert(TestVo vo) {
		return dao.insert(vo);
	}
	public int update(TestVo vo) {
		return dao.update(vo);
	}
	public int delete(String id) {
		return dao.delete(id);
	}
	public TestVo selectOne(int boardNum) {
		return dao.selectOne(boardNum);
	}
	
	public List<TestVo> selectList(){
		return dao.selectList();
	}
	
	@Override
	public List<TestVo> selectList(int currentPage, int limit) {
		// TODO Auto-generated method stub
		return dao.selectList(currentPage, limit);
	}
	
	
	
	
	public int selectCount() {
		return dao.selectCount();
	}
}
