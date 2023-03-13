package study.cloud.stc.common.paging;

import java.util.HashMap;
import java.util.Map;

public class Paging {
	public Map<String , Integer> paging(int currentPage, int totalCnt, int BOARD_LIMIT, int PAGE_LIMIT){
	
		
		int totalPage = (totalCnt % BOARD_LIMIT == 0) ? (totalCnt / BOARD_LIMIT) : (totalCnt / BOARD_LIMIT) +1;
		int startPage = (currentPage % PAGE_LIMIT == 0) ? (currentPage / PAGE_LIMIT - 1) * PAGE_LIMIT + 1 : (currentPage / PAGE_LIMIT) * PAGE_LIMIT + 1;
		int endPage = (startPage + PAGE_LIMIT > totalPage) ? totalPage : (startPage + PAGE_LIMIT);
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("totalPage", totalPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("currentPage", currentPage);
		
		return map;
		
	}
}
