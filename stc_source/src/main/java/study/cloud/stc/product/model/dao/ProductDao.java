package study.cloud.stc.product.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import study.cloud.stc.product.model.vo.ProductVo;

@Repository
public class ProductDao {
	
	@Autowired
	private SqlSession sqlSession;

	public List<ProductVo> selectList(ProductVo vo) throws Exception {
		return sqlSession.selectList("product.selectList", vo);
	}

}
