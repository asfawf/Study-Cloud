package study.cloud.stc.member.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import study.cloud.stc.member.model.dao.MemberDao;
import study.cloud.stc.member.model.vo.MemberVo;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDao dao;
	
	@Override
	public List<MemberVo> selectList(MemberVo vo) throws Exception {
		
		return dao.selectList(vo);
	}

	@Override
	public int selectCount() throws Exception {
		
		return dao.selectCount();
		
	}

	@Override
	public List<MemberVo> selectListTest(int currentPage, int limit, MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectListTest(currentPage, limit, vo);
	}

}
