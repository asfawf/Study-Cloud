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

}
