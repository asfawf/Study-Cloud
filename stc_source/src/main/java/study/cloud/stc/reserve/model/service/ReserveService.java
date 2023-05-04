package study.cloud.stc.reserve.model.service;

import org.springframework.stereotype.Service;

import study.cloud.stc.reserve.model.vo.ReserveVo;



@Service
public interface ReserveService {
	
	//예약
	public int insertReserve(ReserveVo vo) throws Exception;

}
