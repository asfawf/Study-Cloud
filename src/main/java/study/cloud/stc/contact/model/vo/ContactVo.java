package study.cloud.stc.contact.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class ContactVo {

//	----------- -------- -------------- 
//	CON_NUM     NOT NULL NUMBER         
//	CON_NAME    NOT NULL VARCHAR2(20)   
//	CON_EMAIL            VARCHAR2(30)   
//	CON_TITLE            VARCHAR2(50)   
//	CON_CONTENT          VARCHAR2(2000)
//  CON_DATE
	
	private int conNum;
	private String conName;
	private String conEmail;
	private String conTitle;
	private String conContent;
	private Date conDate;
 
	
	public ContactVo() {
		super();
	}

	public ContactVo(int conNum, String conName, String conEmail, String conTitle, String conContent, Date conDate) {
		super();
		this.conNum = conNum;
		this.conName = conName;
		this.conEmail = conEmail;
		this.conTitle = conTitle;
		this.conContent = conContent;
		this.conDate = conDate;
	}

	@Override
	public String toString() {
		return "ContactVo [conNum=" + conNum + ", conName=" + conName + ", conEmail=" + conEmail + ", conTitle="
				+ conTitle + ", conContent=" + conContent + ", conDate=" + conDate + "]";
	}

	public int getConNum() {
		return conNum;
	}

	public void setConNum(int conNum) {
		this.conNum = conNum;
	}

	public String getConName() {
		return conName;
	}

	public void setConName(String conName) {
		this.conName = conName;
	}

	public String getConEmail() {
		return conEmail;
	}

	public void setConEmail(String conEmail) {
		this.conEmail = conEmail;
	}

	public String getConTitle() {
		return conTitle;
	}

	public void setConTitle(String conTitle) {
		this.conTitle = conTitle;
	}

	public String getConContent() {
		return conContent;
	}

	public void setConContent(String conContent) {
		this.conContent = conContent;
	}

	public Date getConDate() {
		return conDate;
	}

	public void setConDate(Date conDate) {
		this.conDate = conDate;
	}
	
	
	
}
