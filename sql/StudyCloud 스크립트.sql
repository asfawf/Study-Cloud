prompt 워크북용 스크립트﻿
set feedback off
set define off

SELECT * FROM CHATTROOM;

DROP TABLE CHAT CASCADE CONSTRAINTS;
DROP TABLE MEMBER_ROOM CASCADE CONSTRAINTS;
DROP TABLE CHATTROOM CASCADE CONSTRAINTS;

DROP TABLE NOTICE CASCADE CONSTRAINTS;
DROP TABLE QNA CASCADE CONSTRAINTS;
DROP TABLE PROTIME CASCADE CONSTRAINTS;
DROP TABLE PRODUCTFILE CASCADE CONSTRAINTS;
DROP TABLE PRODUCT CASCADE CONSTRAINTS;
DROP TABLE MAP CASCADE CONSTRAINTS;
DROP TABLE CANCEL CASCADE CONSTRAINTS;
DROP TABLE REVIEW CASCADE CONSTRAINTS;
DROP TABLE RESERVE CASCADE CONSTRAINTS;
DROP TABLE MEMBER CASCADE CONSTRAINTS;

DROP SEQUENCE SEQ_PRO_NUM;
CREATE SEQUENCE SEQ_PRO_NUM;

CREATE TABLE MEMBER (
	MEM_ID	VARCHAR2(45)		NOT NULL,
	MEM_PASSWD	VARCHAR2(20)		NULL,
	MEM_NAME	VARCHAR2(10)		NULL,
	MEM_PHONE	VARCHAR2(20)		NULL,
	MEM_EMAIL	VARCHAR2(20)		NULL,
	MEM_QUIT	NUMBER	DEFAULT 1	NULL,
	MEM_AUTHORITY	VARCHAR2(20)		NULL,
	MEM_SNS		VARCHAR(15)			NULL
);
COMMENT ON COLUMN MEMBER.MEM_ID  IS '아이디';
COMMENT ON COLUMN MEMBER.MEM_PASSWD  IS '비밀번호';
COMMENT ON COLUMN MEMBER.MEM_NAME  IS '이름';
COMMENT ON COLUMN MEMBER.MEM_PHONE  IS '전화번호';
COMMENT ON COLUMN MEMBER.MEM_EMAIL  IS '이메일';
COMMENT ON COLUMN MEMBER.MEM_QUIT  IS '탈퇴구분';
COMMENT ON COLUMN MEMBER.MEM_AUTHORITY  IS '계정권한';
COMMENT ON COLUMN MEMBER.MEM_SNS  IS '가입구분';
ALTER TABLE MEMBER ADD CONSTRAINT PK_MEMBER PRIMARY KEY (
	MEM_ID
);

CREATE TABLE RESERVE (
	RSV_NUM	VARCHAR2(30)		NOT NULL,
	RSV_DATE	DATE		NOT NULL,
	RSV_PERSON	NUMBER		NOT NULL,
	MEM_ID		VARCHAR2(20)	NOT NULL,		
	RSV_AMOUNT	NUMBER		NULL,
	RSV_STATUS	NUMBER		NULL
);
COMMENT ON COLUMN RESERVE.RSV_NUM  IS '주문번호';
COMMENT ON COLUMN RESERVE.RSV_DATE  IS '예약날짜';
COMMENT ON COLUMN RESERVE.RSV_PERSON  IS '예약인원';
COMMENT ON COLUMN RESERVE.MEM_ID  IS '아이디';
COMMENT ON COLUMN RESERVE.RSV_AMOUNT  IS '총금액';
COMMENT ON COLUMN RESERVE.RSV_STATUS  IS '주문상태(결제시1 취소시 0)';
 
ALTER TABLE RESERVE ADD CONSTRAINT PK_RESERVE PRIMARY KEY (
	RSV_NUM
);
ALTER TABLE RESERVE ADD CONSTRAINT FK_MEMBER_TO_RESERVE_1 FOREIGN KEY (
	MEM_ID
)
REFERENCES MEMBER (
	MEM_ID
);

CREATE TABLE REVIEW (
	RSV_NUM	VARCHAR2(30)		NOT NULL,
	PRO_NAME	VARCHAR2(100)		NULL,
	REV_CONTENTS	VARCHAR2(1000)		NULL,
	REV_DATE	TIMESTAMP	DEFAULT SYSDATE	NULL,
	MEM_AUTHORITY	VARCHAR2(20)		NULL,
	HOST_REPLY	VARCHAR2(1000)		NULL
);
COMMENT ON COLUMN REVIEW.RSV_NUM  IS '주문번호';
COMMENT ON COLUMN REVIEW.PRO_NAME  IS '상품이름';
COMMENT ON COLUMN REVIEW.REV_CONTENTS  IS '리뷰내용';
COMMENT ON COLUMN REVIEW.REV_DATE  IS '리뷰작성시간';
COMMENT ON COLUMN REVIEW.MEM_AUTHORITY  IS '계정권한';
COMMENT ON COLUMN REVIEW.HOST_REPLY  IS '호스트답글';
ALTER TABLE REVIEW ADD CONSTRAINT PK_REVIEW PRIMARY KEY (
	RSV_NUM
);
ALTER TABLE REVIEW ADD CONSTRAINT FK_RESERVE_TO_REVIEW_1 FOREIGN KEY (
	RSV_NUM
)
REFERENCES RESERVE (
	RSV_NUM
);

CREATE TABLE CANCEL (
	RSV_NUM	VARCHAR2(30)		NOT NULL,
	CXL_DATE	DATE		NOT NULL,
	CXL_REASON	VARCHAR2(1000)		NULL
);
COMMENT ON COLUMN CANCEL.RSV_NUM  IS '주문번호';
COMMENT ON COLUMN CANCEL.CXL_DATE  IS '취소날짜';
COMMENT ON COLUMN CANCEL.CXL_REASON  IS '환불사유';
ALTER TABLE CANCEL ADD CONSTRAINT PK_CANCEL PRIMARY KEY (
	RSV_NUM
);
ALTER TABLE CANCEL ADD CONSTRAINT FK_RESERVE_TO_CANCEL_1 FOREIGN KEY (
	RSV_NUM
)
REFERENCES RESERVE (
	RSV_NUM
);
CREATE TABLE MAP (
	PRO_NUM	NUMBER		NOT NULL,
	PRO_NAME	VARCHAR2(60)		NOT NULL,
	PRO_ADDRESS	VARCHAR2(100)		NULL,
	PRO_PHONE	VARCHAR2(20)		NULL
);
COMMENT ON COLUMN MAP.PRO_NUM  IS '상품번호';
COMMENT ON COLUMN MAP.PRO_NAME  IS '상품이름';
COMMENT ON COLUMN MAP.PRO_ADDRESS  IS '상품주소';
COMMENT ON COLUMN MAP.PRO_PHONE  IS '전화번호';
ALTER TABLE MAP ADD CONSTRAINT PK_MAP PRIMARY KEY (
	PRO_NUM
);

CREATE TABLE PRODUCT (
	PRO_NUM	NUMBER		NOT NULL,
	MEM_ID	VARCHAR2(20)		NOT NULL,
	PRO_POST	VARCHAR2(4000)		NULL,
	PRO_INFO	VARCHAR2(1000)		NULL,
	PRO_NOTICE	VARCHAR2(4000)		NULL,
	PRO_REFUND	VARCHAR2(800)		NULL,
	PRO_ZIPCODE	VARCHAR2(10)		NULL
);
COMMENT ON COLUMN PRODUCT.PRO_NUM  IS '상품번호';
COMMENT ON COLUMN PRODUCT.MEM_ID  IS '아이디';
COMMENT ON COLUMN PRODUCT.PRO_POST  IS '상품소개';
COMMENT ON COLUMN PRODUCT.PRO_INFO  IS '시설안내';
COMMENT ON COLUMN PRODUCT.PRO_NOTICE  IS '유의사항';
COMMENT ON COLUMN PRODUCT.PRO_REFUND  IS '환불정책';
COMMENT ON COLUMN PRODUCT.PRO_ZIPCODE  IS '우편번호';
ALTER TABLE "PRODUCT" ADD CONSTRAINT "PK_PRODUCT" PRIMARY KEY (
	"PRO_NUM"
);
ALTER TABLE PRODUCT ADD CONSTRAINT FK_MAP_TO_PRODUCT_1 FOREIGN KEY (
	PRO_NUM
)
REFERENCES MAP (
	PRO_NUM
);

ALTER TABLE PRODUCT ADD CONSTRAINT FK_MEMBER_TO_PRODUCT_1 FOREIGN KEY (
	MEM_ID
)
REFERENCES MEMBER (
	MEM_ID
);

CREATE TABLE PRODUCTFILE (
	PRO_NUM	NUMBER		NOT NULL,
	PRO_PIC_ORIGINAL	VARCHAR2(100)		NULL,
	PRO_PIC_RENAME	VARCHAR2(100)		NULL
);
COMMENT ON COLUMN PRODUCTFILE.PRO_NUM  IS '상품번호';
COMMENT ON COLUMN PRODUCTFILE.PRO_PIC_ORIGINAL  IS '상품사진';
COMMENT ON COLUMN PRODUCTFILE.PRO_PIC_RENAME  IS '상품사진사본';
ALTER TABLE PRODUCTFILE ADD CONSTRAINT FK_MAP_TO_PRODUCTFILE_1 FOREIGN KEY (
	PRO_NUM
)
REFERENCES MAP (
	PRO_NUM
);

CREATE TABLE "PROTIME" (
	"PRO_DATE"	DATE		NOT NULL,
	"PRO_NUM"	NUMBER		NOT NULL,
	"PRO_PRICE"	NUMBER		NOT NULL,
	"RSV_NUM"	VARCHAR2(30)		NULL
);

COMMENT ON COLUMN "PROTIME"."PRO_DATE" IS '사용날짜+사용시간';
COMMENT ON COLUMN "PROTIME"."PRO_NUM" IS 'SEQ_PRO_NUM 사용';
COMMENT ON COLUMN "PROTIME"."PRO_PRICE" IS '(시간당)가격';
COMMENT ON COLUMN "PROTIME"."RSV_NUM" IS '0:예약가능시간';
ALTER TABLE "PROTIME" ADD CONSTRAINT "PK_PROTIME" PRIMARY KEY (
	"PRO_DATE",
	"PRO_NUM"
);
ALTER TABLE "PROTIME" ADD CONSTRAINT "FK_MAP_TO_PROTIME_1" FOREIGN KEY (
	"PRO_NUM"
)
REFERENCES "MAP" (
	"PRO_NUM"
);
ALTER TABLE "PROTIME" ADD CONSTRAINT "FK_RESERVE_TO_PROTIME_1" FOREIGN KEY (
	"RSV_NUM"
)
REFERENCES "RESERVE" (
	"RSV_NUM"
);


CREATE TABLE QNA (
	PRO_NUM	NUMBER		NOT NULL,
	PRO_NAME	VARCHAR2(100)		NULL,
	MEM_ID	VARCHAR2(20)		NOT NULL,
	MEM_QUESTION	VARCHAR2(1000)		NULL,
	MEM_AUTHORITY	VARCHAR2(20)		NULL,
	HOST_ANSWER	VARCHAR2(1000)		NULL,
	QNA_DATE	TIMESTAMP		NULL
	QNA_NUM	NUMBER		NOT NULL
);
COMMENT ON COLUMN QNA.PRO_NUM  IS '상품번호';
COMMENT ON COLUMN QNA.PRO_NAME  IS '상품이름';
COMMENT ON COLUMN QNA.MEM_ID  IS '아이디';
COMMENT ON COLUMN QNA.MEM_QUESTION  IS '사용자문의글';
COMMENT ON COLUMN QNA.MEM_AUTHORITY  IS '계정권한';
COMMENT ON COLUMN QNA.HOST_ANSWER  IS '호스트답글';
COMMENT ON COLUMN QNA.QNA_DATE  IS 'QNA작성시간';
COMMENT ON COLUMN QNA.QNA_NUM  IS 'QNA번호';
ALTER TABLE QNA ADD CONSTRAINT FK_MAP_TO_QNA_1 FOREIGN KEY (
	PRO_NUM
)
REFERENCES MAP (
	PRO_NUM
);

ALTER TABLE QNA ADD CONSTRAINT FK_MEMBER_TO_QNA_1 FOREIGN KEY (
	MEM_ID
)
REFERENCES MEMBER (
	MEM_ID
);

CREATE TABLE NOTICE (
	NOTI_NUM	NUMBER		NOT NULL,
	MEM_ID	VARCHAR2(20)		NOT NULL,
	NOTI_IDX	VARCHAR2(15)		NULL,
	NOTI_TITLE	VARCHAR2(100)		NULL,
	NOTI_CONTENTS	VARCHAR2(4000)		NULL,
	NOTI_DATE	DATE	DEFAULT SYSDATE	NULL,
	ORIGINAL_FILENAME	VARCHAR2(100)		NULL,
	RENAME_FILENAME	VARCHAR2(100)		NULL
);
COMMENT ON COLUMN NOTICE.NOTI_NUM  IS '글번호';
COMMENT ON COLUMN NOTICE.MEM_ID  IS '아이디';
COMMENT ON COLUMN NOTICE.NOTI_IDX  IS '분류';
COMMENT ON COLUMN NOTICE.NOTI_TITLE  IS '제목';
COMMENT ON COLUMN NOTICE.NOTI_CONTENTS  IS '내용';
COMMENT ON COLUMN NOTICE.NOTI_DATE  IS '날짜';
COMMENT ON COLUMN NOTICE.ORIGINAL_FILENAME  IS '파일';
COMMENT ON COLUMN NOTICE.RENAME_FILENAME  IS '파일사본';
ALTER TABLE NOTICE ADD CONSTRAINT PK_NOTICE PRIMARY KEY (
	NOTI_NUM,
	MEM_ID
);
ALTER TABLE NOTICE ADD CONSTRAINT FK_MEMBER_TO_NOTICE_1 FOREIGN KEY (
	MEM_ID
)
REFERENCES MEMBER (
	MEM_ID
);
 

CREATE TABLE CHATTROOM (
	CHA_ROOM_ID 	VARCHAR2(30)		NULL,
	ROOM_CONTENTS	VARCHAR2(500)		NULL,
	ROOM_LASTDATE	TIMESTAMP	DEFAULT SYSTIMESTAMP	NULL
);
COMMENT ON COLUMN CHATTROOM.CHA_ROOM_ID  IS '방아이디';
COMMENT ON COLUMN CHATTROOM.ROOM_CONTENTS  IS '내용';
COMMENT ON COLUMN CHATTROOM.ROOM_LASTDATE  IS '마지막작성시간';
ALTER TABLE CHATTROOM ADD CONSTRAINT PK_CHATTROOM PRIMARY KEY (
	CHA_ROOM_ID
);

CREATE TABLE MEMBER_ROOM (
	MEM_ID	VARCHAR2(20)		NULL,
	ROOM_ID	VARCHAR2(30)		NULL,
    CONNECT_STATUS VARCHAR(10)     NOT NULL
);
COMMENT ON COLUMN MEMBER_ROOM.MEM_ID  IS '아이디';
COMMENT ON COLUMN MEMBER_ROOM.ROOM_ID  IS '방아이디';
COMMENT ON COLUMN MEMBER_ROOM.CONNECT_STATUS  IS '접속상태';
ALTER TABLE MEMBER_ROOM ADD CONSTRAINT PK_MEMBER_ROOM PRIMARY KEY (
	MEM_ID,
	ROOM_ID
);
ALTER TABLE MEMBER_ROOM ADD CONSTRAINT FK_MEMBER_TO_MEMBER_ROOM_1 FOREIGN KEY (
	MEM_ID
)
REFERENCES MEMBER (
	MEM_ID
);
ALTER TABLE MEMBER_ROOM ADD CONSTRAINT FK_CHATTROOM_TO_MEMBER_ROOM_1 FOREIGN KEY (
	ROOM_ID
)
REFERENCES CHATTROOM (
	CHA_ROOM_ID
);

CREATE TABLE CHAT (
    CHA_NUM     NUMBER	NOT NULL,
	CHA_TIME	TIMESTAMP	DEFAULT SYSTIMESTAMP	NULL,
	MEM_ID	    VARCHAR2(20)		NOT NULL,
	ROOM_ID 	VARCHAR2(30)		NOT NULL,
	CHA_CONTENTS	VARCHAR2(500)		NOT NULL
);
COMMENT ON COLUMN CHAT.CHA_NUM  IS '채팅 번호';
COMMENT ON COLUMN CHAT.CHA_TIME  IS '작성시간';
COMMENT ON COLUMN CHAT.MEM_ID  IS '아이디';
COMMENT ON COLUMN CHAT.ROOM_ID  IS '방아이디';
COMMENT ON COLUMN CHAT.CHA_CONTENTS  IS '내용';
ALTER TABLE CHAT ADD CONSTRAINT FK_MEMBER_ROOM_TO_CHAT FOREIGN KEY (
	MEM_ID, ROOM_ID
)
REFERENCES MEMBER_ROOM (
	MEM_ID, ROOM_ID
);
 
ALTER TABLE CHAT ADD CONSTRAINT PK_CHAT PRIMARY KEY (
	CHA_NUM
);

set feedback on
set define on
 