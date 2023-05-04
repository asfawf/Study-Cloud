package study.cloud.stc.reserve.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import study.cloud.stc.reserve.model.vo.ReserveVo;



@Repository
public class ReserveDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	
	//예약
	public int insertReserve(ReserveVo vo) throws Exception{
		return sqlSession.insert("reserve.insertReserve", vo);	
	}
}
