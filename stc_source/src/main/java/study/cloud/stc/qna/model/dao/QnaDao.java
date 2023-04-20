package study.cloud.stc.qna.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import study.cloud.stc.qna.model.vo.QnaVo;
 

@Repository
public class QnaDao {

	@Autowired
	private SqlSession sqlSession;
	
	public int insert(QnaVo vo) {
		return sqlSession.insert("product.insertQna", vo);
	}

	public List<QnaVo> selectList() {
		return sqlSession.selectList("product.selectQnaList");
	}

	public List<QnaVo> selectQnaList(int proNum) {
		return sqlSession.selectList("product.selectQnaList", proNum);
	}
}
