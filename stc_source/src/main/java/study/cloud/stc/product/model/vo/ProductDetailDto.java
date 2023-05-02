package study.cloud.stc.product.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;



@Component
//@ToString
//@Getter
//@Setter
//@AllArgsConstructor
//@NoArgsConstructor
public class ProductDetailDto {

	private int proNum;
	private String proName;
	private String proAddress;
	private String proPhone;
	
	private String memId;
	private String proPost;
	private String proInfo;
	private String proNotice;
	private String proRefund;
	private String proZipcode;
	
	private String proPicOriginal;
	private String proPicRename;
	
	private Date proUseTime;
	private int proPrice;
	private String rsvNum;
	@Override
	public String toString() {
		return "ProductDetailDto [proNum=" + proNum + ", proName=" + proName + ", proAddress=" + proAddress
				+ ", proPhone=" + proPhone + ", memId=" + memId + ", proPost=" + proPost + ", proInfo=" + proInfo
				+ ", proNotice=" + proNotice + ", proRefund=" + proRefund + ", proZipcode=" + proZipcode
				+ ", proPicOriginal=" + proPicOriginal + ", proPicRename=" + proPicRename + ", proUseTime=" + proUseTime
				+ ", proPrice=" + proPrice + ", rsvNum=" + rsvNum + "]";
	}
	public int getProNum() {
		return proNum;
	}
	public void setProNum(int proNum) {
		this.proNum = proNum;
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
	public String getProPhone() {
		return proPhone;
	}
	public void setProPhone(String proPhone) {
		this.proPhone = proPhone;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getProPost() {
		return proPost;
	}
	public void setProPost(String proPost) {
		this.proPost = proPost;
	}
	public String getProInfo() {
		return proInfo;
	}
	public void setProInfo(String proInfo) {
		this.proInfo = proInfo;
	}
	public String getProNotice() {
		return proNotice;
	}
	public void setProNotice(String proNotice) {
		this.proNotice = proNotice;
	}
	public String getProRefund() {
		return proRefund;
	}
	public void setProRefund(String proRefund) {
		this.proRefund = proRefund;
	}
	public String getProZipcode() {
		return proZipcode;
	}
	public void setProZipcode(String proZipcode) {
		this.proZipcode = proZipcode;
	}
	public String getProPicOriginal() {
		return proPicOriginal;
	}
	public void setProPicOriginal(String proPicOriginal) {
		this.proPicOriginal = proPicOriginal;
	}
	public String getProPicRename() {
		return proPicRename;
	}
	public void setProPicRename(String proPicRename) {
		this.proPicRename = proPicRename;
	}
	public Date getProUseTime() {
		return proUseTime;
	}
	public void setProUseTime(Date proUseTime) {
		this.proUseTime = proUseTime;
	}
	public int getProPrice() {
		return proPrice;
	}
	public void setProPrice(int proPrice) {
		this.proPrice = proPrice;
	}
	public String getRsvNum() {
		return rsvNum;
	}
	public void setRsvNum(String rsvNum) {
		this.rsvNum = rsvNum;
	}
	
//	private List<ProductDetailDto> proPicList;
	
//	private int currval;
//	private int nextval;
	
	
	
}