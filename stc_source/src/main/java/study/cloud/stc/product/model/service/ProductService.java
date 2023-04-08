package study.cloud.stc.product.model.service;

import java.util.List;

import study.cloud.stc.product.model.vo.ProductVo;


public interface ProductService {

	public List<ProductVo> selectList(ProductVo vo) throws Exception;
}
