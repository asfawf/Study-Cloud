package study.cloud.stc.product.model.service;

import java.util.List;

import org.springframework.stereotype.Service;

import study.cloud.stc.product.model.vo.HostProductDto;
import study.cloud.stc.product.model.vo.ProductDetailDto;
import study.cloud.stc.product.model.vo.ProductVo;

@Service
public interface ProductService {

	public List<ProductVo> selectList(ProductVo vo) throws Exception;
	public List<ProductVo> selectList(int currentPage, int limit, ProductVo vo) throws Exception;

	public int selectCount(ProductVo vo) throws Exception;
	
	//상세페이지화면
	public ProductDetailDto selectOne(int proNum) throws Exception;
	
	//상품등록
	public int insertProduct(ProductDetailDto dto) throws Exception;
	public int insertMap(ProductDetailDto dto) throws Exception;
	public int insertDetail(ProductDetailDto dto) throws Exception;
	
	public List<HostProductDto> selectList (HostProductDto dto)throws Exception;
	
	//업데이트
		public int updateProduct(ProductDetailDto dto) throws Exception;
		//삭제
		public int deleteProduct(int proNum) throws Exception;
		
	
	//페이징관련
		public int selectCount(HostProductDto dto) throws Exception;
		public List<HostProductDto> selectList (int currentPage,int limit,HostProductDto dto) throws Exception; 
		
	// host qna select 옵션 List
	public List<ProductVo> selectHostProductList(String membId) throws Exception;
}
