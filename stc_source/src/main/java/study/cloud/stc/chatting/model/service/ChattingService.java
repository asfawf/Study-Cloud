package study.cloud.stc.chatting.model.service;

import java.util.List;

import study.cloud.stc.chatting.model.vo.ChattingVo;

public interface ChattingService {

	public int addtMessage(ChattingVo vo);

	public List<ChattingVo> selectListMessage(ChattingVo schvo);

}
