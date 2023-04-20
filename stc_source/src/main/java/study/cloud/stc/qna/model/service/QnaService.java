package study.cloud.stc.qna.model.service;

import java.util.List;

import study.cloud.stc.qna.model.vo.QnaVo;


public interface QnaService {

	public int insert(QnaVo vo) throws Exception;
	public List<QnaVo> selectList() throws Exception;

	public List<QnaVo> selectQnaList(int proNum) throws Exception;
}
