package study.cloud.stc.review.model.service;

import java.util.List;

import study.cloud.stc.reserve.model.vo.ReserveVo;
import study.cloud.stc.review.model.vo.ReviewResReqVo;

public interface ReviewService {

	public List<ReserveVo> userRsvNumSelect(int proNum) throws Exception;
	public List<ReserveVo> userRsvNum(String name) throws Exception;
	public List<ReserveVo> userRsvProName(String name) throws Exception;
}
