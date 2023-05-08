package study.cloud.stc.reserve.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import study.cloud.stc.reserve.model.dao.ReserveDao;
import study.cloud.stc.reserve.model.vo.MapVo;
import study.cloud.stc.reserve.model.vo.ReserveTimeReqDto;
import study.cloud.stc.reserve.model.vo.ReserveVo;

@Service
public class ReserveServiceImpl implements ReserveService{
	
	@Autowired
	private ReserveDao dao;

	@Override
	public int insertReserve(ReserveTimeReqDto rtDto) throws Exception {
		return dao.insertReserve(rtDto);
	}

	@Override
	public List<ReserveVo> selectReserveList(ReserveTimeReqDto rtDto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectReserveList(rtDto);
	}

	@Override
	public MapVo selectProName(ReserveTimeReqDto rtDto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectProName(rtDto);
	}
	
	@Override
	public List<MapVo> selectProNameList() throws Exception {
		// TODO Auto-generated method stub
		return dao.selectProNameList();
	}

}
