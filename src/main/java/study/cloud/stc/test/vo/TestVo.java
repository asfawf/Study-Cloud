package study.cloud.stc.test.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class TestVo {
	
	/*
	 * create table boardTbl(
	 *  boardNum number not null, 
	 *  boardWriter varchar2(20),
	 * boardSubject varchar2(255),
	 *  boardContent varchar2(2000), 
	 *  boardDate Date default SYSDATE, 
	 *  boardView number default 1 not null, 
	 *  primary key(boardNum)
	 * );
	 */
	
	private int number;
	private String boardWriter;
	private String boardSubject;
	private String boardContent;
	private Date boardDate;
	private int boardView;
	
	public TestVo() {
		super();
	}


	public TestVo(int number, String boardWriter, String boardSubject, String boardContent, Date boardDate,
			int boardView) {
		super();
		this.number = number;
		this.boardWriter = boardWriter;
		this.boardSubject = boardSubject;
		this.boardContent = boardContent;
		this.boardDate = boardDate;
		this.boardView = boardView;
	}


	public int getNumber() {
		return number;
	}


	public void setNumber(int number) {
		this.number = number;
	}


	public String getBoardWriter() {
		return boardWriter;
	}


	public void setBoardWriter(String boardWriter) {
		this.boardWriter = boardWriter;
	}


	public String getBoardSubject() {
		return boardSubject;
	}


	public void setBoardSubject(String boardSubject) {
		this.boardSubject = boardSubject;
	}


	public String getBoardContent() {
		return boardContent;
	}


	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}


	public Date getBoardDate() {
		return boardDate;
	}


	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
	}


	public int getBoardView() {
		return boardView;
	}


	public void setBoardView(int boardView) {
		this.boardView = boardView;
	}


	@Override
	public String toString() {
		return "TestVo [number=" + number + ", boardWriter=" + boardWriter + ", boardSubject=" + boardSubject
				+ ", boardContent=" + boardContent + ", boardDate=" + boardDate + ", boardView=" + boardView + "]";
	}
	
	
	
}
