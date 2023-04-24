package study.cloud.stc.qna.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
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

	/* product/detail/qna 화면 */
	public List<QnaVo> selectQnaList(int proNum) throws Exception{
		return sqlSession.selectList("product.selectQnaList", proNum);
	}
	/* product/detail/qna 페이징 처리 화면 */
	public int selectCount(int proNum) throws Exception{
		return sqlSession.selectOne("product.selectQnaCount", proNum);
	}
	public List<QnaVo> selectQnaList(int currentPage, int limit, int proNum) throws Exception{
		return sqlSession.selectList("product.selectQnaList", proNum, new RowBounds((currentPage-1)*limit, limit));
	}

	public int update(QnaVo vo) throws Exception{
		return sqlSession.update("product.updateQna", vo);
	}
	public int delete(int qnaNum) throws Exception{
		return sqlSession.delete("product.deleteQna", qnaNum);
	}
	public int updateReply(QnaVo vo) throws Exception{
		return sqlSession.update("product.updateReply", vo);
	}

	// host qna 페이징 List
	public int selectCount(String hostId) throws Exception {
		return sqlSession.selectOne("product.selectHostQnaCount", hostId);
	}
	public List<QnaVo> selectHostProductQnaList(int currentPage, int limit, int proNum) {
		return sqlSession.selectList("product.selectHostProductQnaList", proNum, new RowBounds((currentPage-1)*limit, limit));
	}
}
