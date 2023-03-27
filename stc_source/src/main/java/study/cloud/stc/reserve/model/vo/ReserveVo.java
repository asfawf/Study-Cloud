package study.cloud.stc.reserve.model.vo;

import java.sql.Date;
import java.sql.Timestamp;




public class ReserveVo {
	
//	---------- -------- ------------ 
//	RSV_NUM     NOT NULL VARCHAR2(30)       
//	RSV_DATE    NOT NULL DATE 
//	RSV_PERSON  NOT NULL NUMBER       
//	MEM_ID      NOT NULL VARCHAR2(20) 
//	RSV_METHOD  NOT NULL VARCHAR2(4)
//	RSV_PAY_DATE         TIMESTAMP
//	RSV_AMOUNT           NUMBER
//	RSV_STATUS           NUMBER

	
	private int rsvNum;
    private Date rsvDate;
    private int rsvPerson;
    private String memId;
    private String rsvMethod;
    private Timestamp rsvPayDate;
    private int rsvAmount;
    private int rsvStatus;
    
    public ReserveVo() {
    	super();
    	// TODO Auto-generated constructor stub
    }

	public ReserveVo(int rsvNum, Date rsvDate, int rsvPerson, String memId, String rsvMethod, Timestamp rsvPayDate,
			int rsvAmount, int rsvStatus) {
		super();
		this.rsvNum = rsvNum;
		this.rsvDate = rsvDate;
		this.rsvPerson = rsvPerson;
		this.memId = memId;
		this.rsvMethod = rsvMethod;
		this.rsvPayDate = rsvPayDate;
		this.rsvAmount = rsvAmount;
		this.rsvStatus = rsvStatus;
	}

	public int getRsvNum() {
		return rsvNum;
	}

	public void setRsvNum(int rsvNum) {
		this.rsvNum = rsvNum;
	}

	public Date getRsvDate() {
		return rsvDate;
	}

	public void setRsvDate(Date rsvDate) {
		this.rsvDate = rsvDate;
	}

	public int getRsvPerson() {
		return rsvPerson;
	}

	public void setRsvPerson(int rsvPerson) {
		this.rsvPerson = rsvPerson;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getRsvMethod() {
		return rsvMethod;
	}

	public void setRsvMethod(String rsvMethod) {
		this.rsvMethod = rsvMethod;
	}

	public Timestamp getRsvPayDate() {
		return rsvPayDate;
	}

	public void setRsvPayDate(Timestamp rsvPayDate) {
		this.rsvPayDate = rsvPayDate;
	}

	public int getRsvAmount() {
		return rsvAmount;
	}

	public void setRsvAmount(int rsvAmount) {
		this.rsvAmount = rsvAmount;
	}

	public int getRsvStatus() {
		return rsvStatus;
	}

	public void setRsvStatus(int rsvStatus) {
		this.rsvStatus = rsvStatus;
	}

	@Override
	public String toString() {
		return "ReserveVo [rsvNum=" + rsvNum + ", rsvDate=" + rsvDate + ", rsvPerson=" + rsvPerson + ", memId=" + memId
				+ ", rsvMethod=" + rsvMethod + ", rsvPayDate=" + rsvPayDate + ", rsvAmount=" + rsvAmount
				+ ", rsvStatus=" + rsvStatus + "]";
	}

    
    
	
    

}
