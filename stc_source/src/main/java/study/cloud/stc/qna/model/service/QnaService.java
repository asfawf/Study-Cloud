package study.cloud.stc.qna.model.service;

import java.util.List;

import study.cloud.stc.qna.model.vo.QnaVo;


public interface QnaService {

	public int insert(QnaVo vo) throws Exception;
	public List<QnaVo> selectList() throws Exception;

	// productDetail 페이징 List
	public int selectCount(int proNum) throws Exception;
	public List<QnaVo> selectQnaList(int currentPage, int limit, int proNum) throws Exception;
	
	// detail qna List
	public List<QnaVo> selectQnaList(int proNum) throws Exception;
	public int update(QnaVo vo) throws Exception;
	public int delete(int qnaNum) throws Exception;
	public int updateReply(QnaVo vo) throws Exception;
	
	// host qna 페이징 List 
	public int selectHostQnaCount(int proNum) throws Exception;
	public List<QnaVo> selectHostProductQnaList(int currentPage, int limit, int proNum) throws Exception;
	
}
