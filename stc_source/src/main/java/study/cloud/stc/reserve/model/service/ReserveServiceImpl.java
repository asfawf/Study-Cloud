package study.cloud.stc.reserve.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import study.cloud.stc.reserve.model.dao.ReserveDao;
import study.cloud.stc.reserve.model.vo.ReserveVo;

@Service
public class ReserveServiceImpl implements ReserveService{
	@Autowired
	private ReserveDao dao;

	@Override
	public int insertReserve(ReserveVo vo) throws Exception {
		return dao.insertReserve(vo);
	} 

}
