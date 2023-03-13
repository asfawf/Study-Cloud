package study.cloud.stc.book.model.vo;

public class BookVo {
	
//	---------- -------- ------------ 
//	BO_NUM     NOT NULL NUMBER       
//	MEM_NAME            VARCHAR2(20) 
//	MEM_PHONE           NUMBER       
//	PRO_NAME            VARCHAR2(30) 
//	PRO_ADRESS          VARCHAR2(50) 
//	PRO_PRICE           NUMBER 
	
	private int boNum;
    private String memName;
    private int memPhone;
    private String proName;
    private String proAddress;
    private int proPrice;
    
    
	public BookVo() {
		super();
		
	}


	public BookVo(int boNum, String memName, int memPhone, String proName, String proAddress, int proPrice) {
		super();
		this.boNum = boNum;
		this.memName = memName;
		this.memPhone = memPhone;
		this.proName = proName;
		this.proAddress = proAddress;
		this.proPrice = proPrice;
	}


	@Override
	public String toString() {
		return "BookVo [boNum=" + boNum + ", memName=" + memName + ", memPhone=" + memPhone + ", proName=" + proName
				+ ", proAddress=" + proAddress + ", proPrice=" + proPrice + "]";
	}


	public int getBoNum() {
		return boNum;
	}


	public void setBoNum(int boNum) {
		this.boNum = boNum;
	}


	public String getMemName() {
		return memName;
	}


	public void setMemName(String memName) {
		this.memName = memName;
	}


	public int getMemPhone() {
		return memPhone;
	}


	public void setMemPhone(int memPhone) {
		this.memPhone = memPhone;
	}


	public String getProName() {
		return proName;
	}


	public void setProName(String proName) {
		this.proName = proName;
	}


	public String getProAddress() {
		return proAddress;
	}


	public void setProAddress(String proAddress) {
		this.proAddress = proAddress;
	}


	public int getProPrice() {
		return proPrice;
	}


	public void setProPrice(int proPrice) {
		this.proPrice = proPrice;
	}
	
	

    
    

}
