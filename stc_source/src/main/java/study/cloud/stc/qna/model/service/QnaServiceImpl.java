package study.cloud.stc.qna.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import study.cloud.stc.qna.model.dao.QnaDao;
import study.cloud.stc.qna.model.vo.QnaVo;
 

@Service
public class QnaServiceImpl implements QnaService {

	@Autowired
	private QnaDao dao;
	
	@Override
	public int insert(QnaVo vo) throws Exception {
		return dao.insert(vo);
	}

	@Override
	public List<QnaVo> selectList() throws Exception {
		return dao.selectList();
	}

	@Override
	public List<QnaVo> selectQnaList(int proNum) throws Exception {
		return dao.selectQnaList(proNum);
	}

	@Override
	public int selectCount(int proNum) throws Exception {
		return dao.selectCount(proNum);
	}

	@Override
	public List<QnaVo> selectQnaList(int currentPage, int limit, int proNum) throws Exception {
		return dao.selectQnaList(currentPage, limit, proNum);
	}

	@Override
	public int update(QnaVo vo) throws Exception {
		return dao.update(vo);
	}

	@Override
	public int delete(int qnaNum) throws Exception {
		return dao.delete(qnaNum);	
	}

	@Override
	public int updateReply(QnaVo vo) throws Exception {
		return dao.updateReply(vo);	
	}

	// host qna 페이징 List
	@Override
	public int selectCount(String hostId) throws Exception {
		return dao.selectCount(hostId);
	}
	@Override
	public List<QnaVo> selectHostProductQnaList(int currentPage, int limit, int proNum) throws Exception {
		return dao.selectHostProductQnaList(currentPage, limit, proNum);
	}

}
