package study.cloud.stc.chatting.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import study.cloud.stc.chatting.model.dao.ChattingDao;
import study.cloud.stc.chatting.model.vo.ChattingVo;

@Service
public class ChattingServiceImpl implements ChattingService{

	@Autowired
	ChattingDao dao;
	
	@Override
	public int addtMessage(ChattingVo vo) {
		// TODO Auto-generated method stub
		return dao.addtMessage(vo);
	}

}
