package study.cloud.stc.member.vo;

import org.springframework.stereotype.Component;

@Component
public class MemberVo {

	private String Member_Id;
	private int Member_IdNum;
	private int Member_Phone;
	private int Member_Authority;
	private String Member_Passwd;
	private String Member_Email;
	private int Member_Quit;
	private String Member_Name;

	public MemberVo() {
		super();
	}

	public MemberVo(String member_Id, int member_IdNum, int member_Phone, int member_Authority, String member_Passwd,
			String member_Email, int member_Quit, String member_Name) {
		super();
		Member_Id = member_Id;
		Member_IdNum = member_IdNum;
		Member_Phone = member_Phone;
		Member_Authority = member_Authority;
		Member_Passwd = member_Passwd;
		Member_Email = member_Email;
		Member_Quit = member_Quit;
		Member_Name = member_Name;
	}

	public String getMember_Id() {
		return Member_Id;
	}

	public void setMember_Id(String member_Id) {
		Member_Id = member_Id;
	}

	public int getMember_IdNum() {
		return Member_IdNum;
	}

	public void setMember_IdNum(int member_IdNum) {
		Member_IdNum = member_IdNum;
	}

	public int getMember_Phone() {
		return Member_Phone;
	}

	public void setMember_Phone(int member_Phone) {
		Member_Phone = member_Phone;
	}

	public int getMember_Authority() {
		return Member_Authority;
	}

	public void setMember_Authority(int member_Authority) {
		Member_Authority = member_Authority;
	}

	public String getMember_Passwd() {
		return Member_Passwd;
	}

	public void setMember_Passwd(String member_Passwd) {
		Member_Passwd = member_Passwd;
	}

	public String getMember_Email() {
		return Member_Email;
	}

	public void setMember_Email(String member_Email) {
		Member_Email = member_Email;
	}

	public int getMember_Quit() {
		return Member_Quit;
	}

	public void setMember_Quit(int member_Quit) {
		Member_Quit = member_Quit;
	}

	public String getMember_Name() {
		return Member_Name;
	}

	public void setMember_Name(String member_Name) {
		Member_Name = member_Name;
	}

	@Override
	public String toString() {
		return "MemberVo [Member_Id=" + Member_Id + ", Member_IdNum=" + Member_IdNum + ", Member_Phone=" + Member_Phone
				+ ", Member_Authority=" + Member_Authority + ", Member_Passwd=" + Member_Passwd + ", Member_Email="
				+ Member_Email + ", Member_Quit=" + Member_Quit + ", Member_Name=" + Member_Name + "]";
	}

}
