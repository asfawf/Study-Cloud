package study.cloud.stc.review.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Component
@ToString
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ReviewVo {

//	RSV_NUM	VARCHAR2(30 BYTE)	No		1	주문번호
//	PRO_NAME	VARCHAR2(100 BYTE)	Yes		2	상품이름
//	REV_CONTENTS	VARCHAR2(1000 BYTE)	Yes		3	리뷰내용
//	REV_DATE	TIMESTAMP(6)	Yes	"SYSDATE	"	4	리뷰작성시간
//	MEM_AUTHORITY	VARCHAR2(20 BYTE)	Yes		5	계정권한
//	HOST_REPLY	VARCHAR2(1000 BYTE)	Yes		6	호스트답글  

	private String rsvNum;
	private String proName;
	private String revContents;
	private Date revDate;
	private String memAuthority;
	private String hostReply;
}
