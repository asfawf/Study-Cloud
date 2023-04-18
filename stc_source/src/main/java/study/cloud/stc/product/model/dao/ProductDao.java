package study.cloud.stc.product.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import study.cloud.stc.product.model.vo.ProductDetailDto;
import study.cloud.stc.product.model.vo.ProductVo;

@Repository
public class ProductDao {
	
	@Autowired
	private SqlSession sqlSession;

	public List<ProductVo> selectList(ProductVo vo) throws Exception {
		return sqlSession.selectList("product.selectList", vo);
	}

	public List<ProductVo> selectList(int currentPage, int limit, ProductVo vo) throws Exception {
		return sqlSession.selectList("product.selectList", vo, new RowBounds((currentPage-1)*limit, limit));
	}

	public int selectCount(ProductVo vo) throws Exception {
		return sqlSession.selectOne("product.selectOneCount", vo);
	}

	
	
	
	
	public ProductDetailDto selectOne(int proNum) {
		return sqlSession.selectOne("product.proDetail",proNum);
	}
	
	
}
