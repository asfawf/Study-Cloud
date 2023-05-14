package study.cloud.stc.review.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import study.cloud.stc.reserve.model.vo.ReserveVo;
import study.cloud.stc.review.model.vo.ReviewResReqVo;

@Repository
public class ReviewDao {

	@Autowired
	private SqlSession sqlSession;

	public List<ReserveVo> userRsvNumSelect(int proNum) throws Exception{
		return sqlSession.selectList("product.userRsvNumSelect", proNum);
	}
	public List<ReserveVo> userRsvNum(String name) {
		return sqlSession.selectList("product.userRsvNum", name);
	}
	public List<ReserveVo> userRsvProName(String name) {
		return sqlSession.selectList("product.userRsvProName", name);
	}
	
}
