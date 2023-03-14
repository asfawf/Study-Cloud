package study.cloud.stc.review.model.vo;

import org.springframework.stereotype.Component;

@Component
public class ReviewVo {
//	  create table review_tbl(
//		         pro_num number not null,
//		         mem_id varchar2(50),
//		        re_cont varchar2(2000),
//		         host_id varchar2(50),
//		        host_re varchar2(2000),
//		        re_date Date
//		     );	
	
//	------- -------- -------------- 
//	PRO_NUM NOT NULL NUMBER         
//	MEM_ID           VARCHAR2(50)   
//	RE_CONT          VARCHAR2(2000) 
//	HOST_ID          VARCHAR2(50)   
//	HOST_RE          VARCHAR2(2000) 
//	RE_DATE          DATE   
	
	private int proNum;
	private String memId;
	private String reCont;
	private String hostId;
	private String hostRe;
	public int getProNum() {
		return proNum;
	}
	public void setProNum(int proNum) {
		this.proNum = proNum;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getReCont() {
		return reCont;
	}
	public void setReCont(String reCont) {
		this.reCont = reCont;
	}
	public String getHostId() {
		return hostId;
	}
	public void setHostId(String hostId) {
		this.hostId = hostId;
	}
	public String getHostRe() {
		return hostRe;
	}
	public void setHostRe(String hostRe) {
		this.hostRe = hostRe;
	}
	@Override
	public String toString() {
		return "ReviewVo [proNum=" + proNum + ", memId=" + memId + ", reCont=" + reCont + ", hostId=" + hostId
				+ ", hostRe=" + hostRe + "]";
	}
	public ReviewVo(int proNum, String memId, String reCont, String hostId, String hostRe) {
		super();
		this.proNum = proNum;
		this.memId = memId;
		this.reCont = reCont;
		this.hostId = hostId;
		this.hostRe = hostRe;
	}
	public ReviewVo() {
		super();
	}

	
	
	
}
