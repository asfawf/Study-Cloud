package study.cloud.stc.member.model.vo;

import org.springframework.stereotype.Component;

@Component
public class MemberVo {

	private String member_Id;
	private int member_IdNum;
	private int member_Phone;
	private int member_Authority;
	private String member_Passwd;
	private String member_Email;
	private int member_Quit;
	private String member_Name;

	public MemberVo() {
		super();
	}

	public MemberVo(String member_Id, int member_IdNum, int member_Phone, int member_Authority, String member_Passwd,
			String member_Email, int member_Quit, String member_Name) {
		super();
		this.member_Id = member_Id;
		this.member_IdNum = member_IdNum;
		this.member_Phone = member_Phone;
		this.member_Authority = member_Authority;
		this.member_Passwd = member_Passwd;
		this.member_Email = member_Email;
		this.member_Quit = member_Quit;
		this.member_Name = member_Name;
	}

	public String getMember_Id() {
		return member_Id;
	}

	public void setMember_Id(String member_Id) {
		this.member_Id = member_Id;
	}

	public int getMember_IdNum() {
		return member_IdNum;
	}

	public void setMember_IdNum(int member_IdNum) {
		this.member_IdNum = member_IdNum;
	}

	public int getMember_Phone() {
		return member_Phone;
	}

	public void setMember_Phone(int member_Phone) {
		this.member_Phone = member_Phone;
	}

	public int getMember_Authority() {
		return member_Authority;
	}

	public void setMember_Authority(int member_Authority) {
		this.member_Authority = member_Authority;
	}

	public String getMember_Passwd() {
		return member_Passwd;
	}

	public void setMember_Passwd(String member_Passwd) {
		this.member_Passwd = member_Passwd;
	}

	public String getMember_Email() {
		return member_Email;
	}

	public void setMember_Email(String member_Email) {
		this.member_Email = member_Email;
	}

	public int getMember_Quit() {
		return member_Quit;
	}

	public void setMember_Quit(int member_Quit) {
		this.member_Quit = member_Quit;
	}

	public String getMember_Name() {
		return member_Name;
	}

	public void setMember_Name(String member_Name) {
		this.member_Name = member_Name;
	}

	@Override
	public String toString() {
		return "MemberVo [member_Id=" + member_Id + ", member_IdNum=" + member_IdNum + ", member_Phone=" + member_Phone
				+ ", member_Authority=" + member_Authority + ", member_Passwd=" + member_Passwd + ", member_Email="
				+ member_Email + ", member_Quit=" + member_Quit + ", member_Name=" + member_Name + "]";
	}

}
