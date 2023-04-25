package study.cloud.stc.chatting.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import study.cloud.stc.chatting.model.dao.MemberRoomDao;
import study.cloud.stc.chatting.model.vo.MemberRoomVo;

@Service
public class MemberRoomServiceImpl implements MemberRoomService {

	@Autowired
	MemberRoomDao dao;
	
	@Override
	public MemberRoomVo viewMemberId(MemberRoomVo mrvo) {
		// TODO Auto-generated method stub
		return dao.viewMemberId(mrvo);
	}

	@Override
	public int addMemId(MemberRoomVo mrvo) {
		// TODO Auto-generated method stub
		return dao.addMemId(mrvo);
	}

}
