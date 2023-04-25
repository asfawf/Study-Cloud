package study.cloud.stc.chatting.model.service;

import study.cloud.stc.chatting.model.vo.MemberRoomVo;

public interface MemberRoomService {

	public MemberRoomVo viewMemberId(MemberRoomVo mrvo);

	public int addMemId(MemberRoomVo mrvo);

}
