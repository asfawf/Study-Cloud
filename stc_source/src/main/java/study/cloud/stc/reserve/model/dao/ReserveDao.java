package study.cloud.stc.reserve.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import study.cloud.stc.product.model.vo.ProductTimePriceDto;
import study.cloud.stc.product.model.vo.ProductTimeReqDto;
import study.cloud.stc.reserve.model.vo.MapVo;
import study.cloud.stc.reserve.model.vo.ReserveTimeReqDto;
import study.cloud.stc.reserve.model.vo.ReserveVo;



@Repository
public class ReserveDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	
	//예약
	public int insertReserve(ReserveTimeReqDto rtDto) throws Exception{
		return sqlSession.insert("reserve.insertReservation", rtDto);	
	}
	
	//예약확인
	public List<ReserveVo> selectReserveList(ReserveTimeReqDto rtDto) throws Exception{
		return sqlSession.selectList("reserve.selectReserveList", rtDto);	
	}
	
	//상품이름조회
	public MapVo selectProName(ReserveTimeReqDto rtDto) throws Exception{
		return sqlSession.selectOne("reserve.selectProName", rtDto);	
	}
	
	//상품이름리스트
	public List<MapVo> selectProNameList() throws Exception{
		return sqlSession.selectList("reserve.selectProNameList");	
	}
	
	public List<ProductTimePriceDto> selectTimePriceRsvList(ProductTimeReqDto dto) throws Exception {
		return sqlSession.selectList("reserve.selectTimePriceRsvList", dto);
	}
}
