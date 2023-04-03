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
	public int selectUnblockCount() throws Exception {
		// TODO Auto-generated method stub
		return dao.selectUnblockCount();
	}
	
	@Override
	public int selectBlockCount() throws Exception {
		// TODO Auto-generated method stub
		return dao.selectBlockCount();
	}
	
	@Override
	public int selectSnsCount() throws Exception {
		// TODO Auto-generated method stub
		return dao.selectSnsCount();
	}
	

	@Override
	public List<MemberVo> selectListTest(int currentPage, int limit, MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectListTest(currentPage, limit, vo);
	}

	@Override
	public int memberblock(MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.memberblock(vo);
	}

	@Override
	public int memberUnblock(MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.memberUnblock(vo);
	}

	@Override
	public List<MemberVo> selectUnblockUsers(int currentPage, int limit, MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectUnblockUsers(currentPage, limit, vo);
	}

	@Override
	public List<MemberVo> selectBlockUsers(int currentPage, int limit, MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectBlockUsers(currentPage, limit, vo);
	}

	@Override
	public List<MemberVo> selectSnskUsers(int currentPage, int limit, MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectSnskUsers(currentPage, limit, vo);
	}

	

}
