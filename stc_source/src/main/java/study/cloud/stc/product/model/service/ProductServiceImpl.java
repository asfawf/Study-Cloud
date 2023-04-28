package study.cloud.stc.product.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import study.cloud.stc.product.model.dao.ProductDao;
import study.cloud.stc.product.model.vo.HostProductDto;
import study.cloud.stc.product.model.vo.ProductDetailDto;
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
	public List<ProductVo> selectList(int currentPage, int limit, ProductVo vo) throws Exception {
		return dao.selectList(currentPage, limit, vo);
	}

	@Override
	public int selectCount(ProductVo vo) throws Exception {
		return dao.selectCount(vo);
	}
	
	
	@Override
	public ProductDetailDto selectOne(int proNum) throws Exception {
		return dao.selectOne(proNum);
	}

	
	
	
	//상품등록	
	@Override
	public int insertProduct(ProductDetailDto dto) throws Exception {
		return dao.insertProduct(dto);
	}

	@Override
	public int insertMap(ProductDetailDto dto) throws Exception {
		return dao.insertProduct(dto);
	}

	@Override
	@Transactional
	public int insertDetail(ProductDetailDto dto) throws Exception {
		int nextValProNum = dao.insertMap(dto);
		dto.setProNum(nextValProNum);
		int result = dao.insertProduct(dto);
			
		return result;
	}

	@Override
	public List<HostProductDto> selectList(HostProductDto dto) throws Exception {
		return dao.selectList(dto);
	}

	@Override
	public int selectCount(HostProductDto dto) throws Exception {
		return dao.selectCount(dto);
	}

	@Override
	public List<HostProductDto> selectList(int currentPage, int limit, HostProductDto dto) throws Exception {
		return dao.selectList(currentPage, limit, dto);
	
	}

	// host qna select 옵션 List
	@Override
	public List<ProductVo> selectHostProductList(String membId) throws Exception {
		return dao.selectHostProductList(membId);
	}

	@Override
	public int updateProduct(ProductDetailDto dto) throws Exception {
		int result = dao.updateMap(dto);
		if(result == 1) {
			result = dao.updateProduct(dto);
		}if(result == 1) {
			result = dao.updateProtime(dto);
		}if(result ==1) {
			result = dao.updateProductFile(dto);
		}
		return result;
	}

	@Override
	public int deleteProduct(int proNum) throws Exception {
		int result = dao.deleteProductFile(proNum);
		if(result == 1) {
			result = dao.deleteProduct(proNum);
		}if(result == 1) {
			result = dao.deleteMap(proNum);
		}
		return result;
	}
	


	
}
