package study.cloud.stc.reserve.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import study.cloud.stc.reserve.model.vo.MapVo;
import study.cloud.stc.reserve.model.vo.ReserveTimeReqDto;
import study.cloud.stc.reserve.model.vo.ReserveVo;


public interface ReserveService {
	
	
	//예약
	public int insertReserve(ReserveTimeReqDto rtDto) throws Exception;
	
	//예약확인
	public List<ReserveVo> selectReserveList(ReserveTimeReqDto rtDto) throws Exception;
	
	//상품이름
	public MapVo selectProName(ReserveTimeReqDto vo) throws Exception;
	
	//상품이름리스트
	public List<MapVo> selectProNameList() throws Exception;

	
}

