package study.cloud.stc.reserve.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

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
	@Transactional
	public int insertReserve(ReserveTimeReqDto rtDto) throws Exception{
		int resultCnt = sqlSession.insert("reserve.insertReservation", rtDto);
		int resultCnt2 = 0;
		
		if(rtDto != null && rtDto.getRsvTime()!= null ) {
			for(int i=0; i< rtDto.getRsvTime().length; i++) {
				Map<String, String> map = new HashMap<String, String>();
				map.put("proNum", rtDto.getProNum());
				map.put("rsvDate", rtDto.getRsvDate());
				map.put("rsvTime", rtDto.getRsvTime()[i]);
				resultCnt2 += updateRsvNumToProTime(map);
			}
		}
		return resultCnt;
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
	
	//예약번호추가
	private int updateRsvNumToProTime(Map<String, String> map) throws Exception{
		return sqlSession.update("reserve.updateRsvNumToProTime", map);	
	}
}
