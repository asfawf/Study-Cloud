package study.cloud.stc.member.model.service;

import java.util.List;

import study.cloud.stc.member.model.vo.MemberVo;
import study.cloud.stc.notice.model.vo.NoticeVo;

public interface MemberService {
	public List<MemberVo> selectList(MemberVo vo) throws Exception;
	
	public int selectCount() throws Exception;
	
	public List<MemberVo> selectListTest(int currentPage, int limit, MemberVo vo) throws Exception;
	

}
