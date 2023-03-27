package study.cloud.stc.notice.model.service;

import java.util.List;

import study.cloud.stc.notice.model.vo.NoticeVo;


public interface NoticeService {

	public int insert(NoticeVo vo) throws Exception;
	public int update(NoticeVo vo) throws Exception;
	public int delete(int notiNum) throws Exception;
	public List<NoticeVo> selectList(String notiIdx) throws Exception;
	public List<NoticeVo> selectList(NoticeVo vo) throws Exception;
//	public int selectCount(String notiIdx) throws Exception;
	public int selectCount() throws Exception;
}
