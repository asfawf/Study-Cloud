package study.cloud.stc.product.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import study.cloud.stc.product.model.dao.ProductDao;
import study.cloud.stc.product.model.vo.ProductVo;
 
@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao dao;
	
	@Override
	public List<ProductVo> selectList(ProductVo vo) throws Exception {
		return dao.selectList(vo);
	}

	@Override
	public List<ProductVo> selectList(int currentPage, int limit, String proAddress) throws Exception {
		return dao.selectList(currentPage, limit, proAddress);
	}

	@Override
	public int selectCount(String proAddress) throws Exception {
		return dao.selectCount(proAddress);
	}

}
