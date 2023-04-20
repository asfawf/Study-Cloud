package study.cloud.stc.product.model.service;

import java.util.List;

import study.cloud.stc.product.model.vo.ProductDetailDto;
import study.cloud.stc.product.model.vo.ProductVo;


public interface ProductService {

	public List<ProductVo> selectList(ProductVo vo) throws Exception;
	public List<ProductVo> selectList(int currentPage, int limit, ProductVo vo) throws Exception;

	public int selectCount(ProductVo vo) throws Exception;
	
	//상세페이지화면
	public ProductDetailDto selectOne(int proNum) throws Exception;
	
	
	public int insertProduct(ProductDetailDto dto) throws Exception;
}
