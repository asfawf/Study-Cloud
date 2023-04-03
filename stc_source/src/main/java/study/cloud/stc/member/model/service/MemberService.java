package study.cloud.stc.member.model.service;

import java.util.List;

import study.cloud.stc.member.model.vo.MemberVo;
import study.cloud.stc.notice.model.vo.NoticeVo;

public interface MemberService {
	public List<MemberVo> selectList(MemberVo vo) throws Exception;
	
	public int selectCount() throws Exception;
	
	public int selectUnblockCount() throws Exception;
	public int selectBlockCount() throws Exception;
	public int selectSnsCount() throws Exception;
	
	public List<MemberVo> selectListTest(int currentPage, int limit, MemberVo vo) throws Exception;
	
	public List<MemberVo> selectUnblockUsers(int currentPage, int limit, MemberVo vo) throws Exception;
	public List<MemberVo> selectBlockUsers(int currentPage, int limit, MemberVo vo) throws Exception;
	public List<MemberVo> selectSnskUsers(int currentPage, int limit, MemberVo vo) throws Exception;

	public int memberblock(MemberVo vo) throws Exception;
	public int memberUnblock(MemberVo vo) throws Exception;
	
	
	
	
}
