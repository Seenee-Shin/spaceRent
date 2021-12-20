CREATE TABLE "MEMBER" (
	"MEMBER_NO"	NUMBER		NOT NULL,
	"MEMBER_EMAIL"	VARCHAR2(50)		NOT NULL,
	"MEMBER_PW"	VARCHAR2(50)		NOT NULL,
	"MEMBER_NM"	VARCHAR2(50)		NOT NULL,
	"MEMBER_PNO"	VARCHAR2(50)		NULL,
	"MEMBER_ST"	NUMBER	DEFAULT 11	NOT NULL,
	"MEMBER_AGREE"	CHAR	DEFAULT 'N'	NOT NULL,
	"MEMBER_IMG_ORG"	VARCHAR2(100)		NULL,
	"MEMBER_IMG_PATH"	VARCHAR2(200)		NULL,
	"MEMBER_IMG_NM"	VARCHAR2(30)		NULL,
	"MEMBER_REG_DT"	DATE	DEFAULT SYSDATE	NOT NULL,
	"MEMBER_UPDATE_DT"	DATE	DEFAULT SYSDATE	NOT NULL,
	"MEMBER_SEC_DT"	DATE	DEFAULT SYSDATE	NOT NULL
);

COMMENT ON COLUMN "MEMBER"."MEMBER_NO" IS '회원번호';

COMMENT ON COLUMN "MEMBER"."MEMBER_EMAIL" IS '이메일';

COMMENT ON COLUMN "MEMBER"."MEMBER_PW" IS '비밀번호';

COMMENT ON COLUMN "MEMBER"."MEMBER_NM" IS '닉네임';

COMMENT ON COLUMN "MEMBER"."MEMBER_PNO" IS '연락처';

COMMENT ON COLUMN "MEMBER"."MEMBER_ST" IS '회원상태';

COMMENT ON COLUMN "MEMBER"."MEMBER_AGREE" IS '서비스동의여부';

COMMENT ON COLUMN "MEMBER"."MEMBER_IMG_ORG" IS '프로필이미지원본명';

COMMENT ON COLUMN "MEMBER"."MEMBER_IMG_PATH" IS '프로필이지미경로';

COMMENT ON COLUMN "MEMBER"."MEMBER_IMG_NM" IS '프로필이미지명';

COMMENT ON COLUMN "MEMBER"."MEMBER_REG_DT" IS '가입일자';

COMMENT ON COLUMN "MEMBER"."MEMBER_UPDATE_DT" IS '수정일자';

COMMENT ON COLUMN "MEMBER"."MEMBER_SEC_DT" IS '탈퇴일자';

CREATE TABLE "SPACE" (
	"SPACE_NO"	NUMBER		NOT NULL,
	"SPACE_NM"	VARCHAR2(50)		NOT NULL,
	"SPACE_SUB_NM"	VARCHAR2(50)		NOT NULL,
	"SPACE_INTRO"	VARCHAR2(2000)		NOT NULL,
	"SPACE_GUIDE"	VARCHAR2(2000)		NOT NULL,
	"PRECAUTIONS"	VARCHAR2(2000)		NOT NULL,
	"REFUND_POLICY"	VARCHAR2(2000)		NOT NULL,
	"SPACE_ADDR"	VARCHAR2(300)		NOT NULL,
	"SPACE_PNO"	VARCHAR2(20)		NOT NULL,
	"SPACE_TIME"	VARCHAR2(50)		NOT NULL,
	"SPACE_CLOSED_DT"	VARCHAR2(300)		NOT NULL,
	"SPACE_MAP_IMG"	VARCHAR2(30)		NOT NULL,
	"SPACE_MAP_PATH"	VARCHAR2(200)		NOT NULL,
	"SPACE_RECO"	CHAR	DEFAULT 'N'	NOT NULL,
	"SPACE_TYPE_NO"	NUMBER		NOT NULL
);

ALTER TABLE SPACE ADD SPACE_ST NUMBER DEFAULT 101 NOT NULL;

ALTER TABLE SPACE MODIFY SPACE_SUB_NM VARCHAR2(500);

COMMENT ON COLUMN "SPACE"."SPACE_NO" IS '공간번호';

COMMENT ON COLUMN "SPACE"."SPACE_NM" IS '공간명';

COMMENT ON COLUMN "SPACE"."SPACE_SUB_NM" IS '공간부제';

COMMENT ON COLUMN "SPACE"."SPACE_INTRO" IS '공간소개';

COMMENT ON COLUMN "SPACE"."SPACE_GUIDE" IS '시설안내';

COMMENT ON COLUMN "SPACE"."PRECAUTIONS" IS '주의사항';

COMMENT ON COLUMN "SPACE"."REFUND_POLICY" IS '환불규정';

COMMENT ON COLUMN "SPACE"."SPACE_ADDR" IS '공간주소';

COMMENT ON COLUMN "SPACE"."SPACE_PNO" IS '전화번호';

COMMENT ON COLUMN "SPACE"."SPACE_TIME" IS '영업시간';

COMMENT ON COLUMN "SPACE"."SPACE_CLOSED_DT" IS '휴무일';

COMMENT ON COLUMN "SPACE"."SPACE_MAP_IMG" IS '지도 이미지명';

COMMENT ON COLUMN "SPACE"."SPACE_MAP_PATH" IS '지도이미지 경로';

COMMENT ON COLUMN "SPACE"."SPACE_RECO" IS '추천공간';

COMMENT ON COLUMN "SPACE"."SPACE_TYPE_NO" IS '공간유형번호';

COMMENT ON COLUMN "SPACE"."SPACE_ST" IS '공간상태';

CREATE TABLE "RESERVE" (
	"RES_NO"	NUMBER		NOT NULL,
	"RES_PERSONNEL"	VARCHAR2(50)		NOT NULL,
	"RES_NM"	VARCHAR2(50)		NOT NULL,
	"RES_PNO"	VARCHAR2(50)		NOT NULL,
	"RES_EMAIL"	VARCHAR2(50)		NOT NULL,
	"RES_PURPOSE"	VARCHAR2(2000)		NULL,
	"RES_REQ"	VARCHAR2(2000)		NULL,
	"RES_AGREE"	CHAR	DEFAULT 'N'	NOT NULL,
	"PAY_METHOD"	NUMBER		NOT NULL,
	"PAY_DATE"	DATE		NOT NULL,
	"USE_DATE"	DATE		NOT NULL,
	"RES_DT"	NUMBER	DEFAULT 31	NOT NULL,
	"MEMBER_NO"	NUMBER		NOT NULL,
	"SPACE_ROOM_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "RESERVE"."RES_NO" IS '예약번호';

COMMENT ON COLUMN "RESERVE"."RES_PERSONNEL" IS '예약인원';

COMMENT ON COLUMN "RESERVE"."RES_NM" IS '예약자명';

COMMENT ON COLUMN "RESERVE"."RES_PNO" IS '예약자연락처';

COMMENT ON COLUMN "RESERVE"."RES_EMAIL" IS '예약자이메일';

COMMENT ON COLUMN "RESERVE"."RES_PURPOSE" IS '사용목적';

COMMENT ON COLUMN "RESERVE"."RES_REQ" IS '요청사항';

COMMENT ON COLUMN "RESERVE"."RES_AGREE" IS '서비스동의여부';

COMMENT ON COLUMN "RESERVE"."PAY_METHOD" IS '결제방법';

COMMENT ON COLUMN "RESERVE"."PAY_DATE" IS '결제일';

COMMENT ON COLUMN "RESERVE"."USE_DATE" IS '공간이용일';

COMMENT ON COLUMN "RESERVE"."RES_DT" IS '예약상태';

COMMENT ON COLUMN "RESERVE"."MEMBER_NO" IS '회원번호';

COMMENT ON COLUMN "RESERVE"."SPACE_ROOM_NO" IS '공간룸번호';

CREATE TABLE "REVIEW" (
	"REV_NO"	NUMBER		NOT NULL,
	"REV_CONTENT"	VARCHAR2(2000)		NOT NULL,
	"REV_DT"	DATE	DEFAULT SYSDATE	NOT NULL,
	"REV_ST"	NUMBER	DEFAULT 41	NOT NULL,
	"RES_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "REVIEW"."REV_NO" IS '이용후기번호';

COMMENT ON COLUMN "REVIEW"."REV_CONTENT" IS '이용후기내용';

COMMENT ON COLUMN "REVIEW"."REV_DT" IS '이용후기작성일';

COMMENT ON COLUMN "REVIEW"."REV_ST" IS '이용후기상태';

COMMENT ON COLUMN "REVIEW"."RES_NO" IS '예약번호';

CREATE TABLE "SPACE_DIBS" (
	"MEMBER_NO"	NUMBER		NOT NULL,
	"SPACE_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "SPACE_DIBS"."MEMBER_NO" IS '회원번호';

COMMENT ON COLUMN "SPACE_DIBS"."SPACE_NO" IS '공간번호';

CREATE TABLE "QUESTION" (
	"QUE_NO"	NUMBER		NOT NULL,
	"INQ_TYPE"	NUMBER		NOT NULL,
	"QUE_TITLE"	VARCHAR2(100)		NOT NULL,
	"QUE_CONTENT"	VARCHAR2(2000)		NOT NULL,
	"QUE_DT"	DATE	DEFAULT SYSDATE	NOT NULL,
	"QUE_ST"	NUMBER	DEFAULT 71	NOT NULL,
	"MEMBER_NO"	NUMBER		NOT NULL,
	"SPACE_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "QUESTION"."QUE_NO" IS '문의번호';

COMMENT ON COLUMN "QUESTION"."INQ_TYPE" IS '문의타입';

COMMENT ON COLUMN "QUESTION"."QUE_TITLE" IS '문의제목';

COMMENT ON COLUMN "QUESTION"."QUE_CONTENT" IS '문의내용';

COMMENT ON COLUMN "QUESTION"."QUE_DT" IS '문의등록일';

COMMENT ON COLUMN "QUESTION"."QUE_ST" IS '문의상태';

COMMENT ON COLUMN "QUESTION"."MEMBER_NO" IS '회원번호';

COMMENT ON COLUMN "QUESTION"."SPACE_NO" IS '공간번호';

CREATE TABLE "EX_SPACE" (
	"EX_NO"	NUMBER		NOT NULL,
	"SPACE_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "EX_SPACE"."EX_NO" IS '기획전번호';

COMMENT ON COLUMN "EX_SPACE"."SPACE_NO" IS '공간번호';

CREATE TABLE "EXHIBIT" (
	"EX_NO"	NUMBER		NOT NULL,
	"EX_NM"	VARCHAR2(40)		NOT NULL,
	"EX_SUV_NM"	VARCHAR2(200)		NOT NULL,
	"EX_IMG"	VARCHAR2(200)		NOT NULL
);

COMMENT ON COLUMN "EXHIBIT"."EX_NO" IS '기획전번호';

COMMENT ON COLUMN "EXHIBIT"."EX_NM" IS '기획전명';

COMMENT ON COLUMN "EXHIBIT"."EX_SUV_NM" IS '기획전 부제';

COMMENT ON COLUMN "EXHIBIT"."EX_IMG" IS '기획전 이미지';

CREATE TABLE "HELP" (
	"HELP_NO"	NUMBER		NOT NULL,
	"HELP_TITLE"	VARCHAR(100)		NOT NULL,
	"HELP_CONTENT"	VARCHAR2(2000)		NOT NULL,
	"HELP_IMG"	VARCHAR2(200)		NULL,
	"HELP_DT"	DATE	DEFAULT SYSDATE	NOT NULL,
	"HELP_ST"	NUMBER	DEFAULT 91	NOT NULL,
	"CATG_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "HELP"."HELP_NO" IS '도움말번호';

COMMENT ON COLUMN "HELP"."HELP_TITLE" IS '도움말제목';

COMMENT ON COLUMN "HELP"."HELP_CONTENT" IS '도움말내용';

COMMENT ON COLUMN "HELP"."HELP_IMG" IS '도움말이미지';

COMMENT ON COLUMN "HELP"."HELP_DT" IS '도움말등록일';

COMMENT ON COLUMN "HELP"."HELP_ST" IS '도움말상태';

COMMENT ON COLUMN "HELP"."CATG_NO" IS '카테고리번호';

CREATE TABLE "CATEGORY" (
	"CATG_NO"	NUMBER		NOT NULL,
	"CATG_NM"	VARCHAR2(15)		NOT NULL
);

COMMENT ON COLUMN "CATEGORY"."CATG_NO" IS '카테고리번호';

COMMENT ON COLUMN "CATEGORY"."CATG_NM" IS '카테고리명';

CREATE TABLE "SPACE_TYPE" (
	"SPACE_TYPE_NO"	NUMBER		NOT NULL,
	"SPACE_TYPE_NM"	VARCHAR2(50)		NOT NULL,
    "SPACE_TYPE_ST_CD" NUMBER DEFAULT 1 NOT NULL,
    "SPACE_TYPE_IMG" VARCHAR2(30) NOT NULL
);

COMMENT ON COLUMN "SPACE_TYPE"."SPACE_TYPE_NO" IS '공간유형번호';

COMMENT ON COLUMN "SPACE_TYPE"."SPACE_TYPE_NM" IS '공간유형명';

COMMENT ON COLUMN "SPACE_TYPE"."SPACE_TYPE_ST_CD" IS '공간유형상태';

COMMENT ON COLUMN "SPACE_TYPE"."SPACE_TYPE_IMG" IS '공간유형이미지';

CREATE TABLE "OPTION" (
	"OPTION_NO"	NUMBER		NOT NULL,
	"OPTION_NM"	VARCHAR2(50)		NOT NULL,
	"OPTON_ICON"	VARCHAR2(200)		NOT NULL
);

COMMENT ON COLUMN "OPTION"."OPTION_NO" IS '옵션번호';

COMMENT ON COLUMN "OPTION"."OPTION_NM" IS '옵션명';

COMMENT ON COLUMN "OPTION"."OPTON_ICON" IS '옵션아이콘이미지';

CREATE TABLE "SPACE_OPTION" (
	"SPACE_ROOM_NO"	NUMBER		NOT NULL,
	"OPTION_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "SPACE_OPTION"."SPACE_ROOM_NO" IS '공간룸번호';

COMMENT ON COLUMN "SPACE_OPTION"."OPTION_NO" IS '옵션번호';

CREATE TABLE "REPLY" (
	"REPLY_NO"	NUMBER		NOT NULL,
	"REPLY_DT"	DATE	DEFAULT SYSDATE	NOT NULL,
	"REPLY_CONTENT"	VARCHAR2(2000)		NOT NULL,
	"REPLY_ST"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "REPLY"."REPLY_NO" IS '이용후기번호';

COMMENT ON COLUMN "REPLY"."REPLY_DT" IS '답글날짜';

COMMENT ON COLUMN "REPLY"."REPLY_CONTENT" IS '답글내용';

COMMENT ON COLUMN "REPLY"."REPLY_ST" IS '답글상태';

CREATE TABLE "ANSWER" (
	"INQ_NO"	NUMBER		NOT NULL,
	"ANS_CONTENT"	VARCHAR2(2000)		NOT NULL,
	"ANS_DATE"	DATE	DEFAULT SYSDATE	NOT NULL,
	"ANS_ST"	NUMBER	DEFAULT 81	NOT NULL
);

COMMENT ON COLUMN "ANSWER"."INQ_NO" IS '문의번호';

COMMENT ON COLUMN "ANSWER"."ANS_CONTENT" IS '답변내용';

COMMENT ON COLUMN "ANSWER"."ANS_DATE" IS '답변날짜';

COMMENT ON COLUMN "ANSWER"."ANS_ST" IS '답변상태';

CREATE TABLE "CERTIFIED" (
	"CERT_NO"	NUMBER		NOT NULL,
	"CERT_ID_NO"	VARCHAR(10)		NOT NULL,
	"CERT_DT"	DATE	DEFAULT SYSDATE	NOT NULL,
	"CERT_TIME"	DATE	DEFAULT SYSDATE	NOT NULL,
	"CERT_ST"	NUMBER	DEFAULT 1	NOT NULL,
	"MEMBER_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "CERTIFIED"."CERT_NO" IS '인증번호';

COMMENT ON COLUMN "CERTIFIED"."CERT_ID_NO" IS '식별번호';

COMMENT ON COLUMN "CERTIFIED"."CERT_DT" IS '인증요청시간';

COMMENT ON COLUMN "CERTIFIED"."CERT_TIME" IS '인증종료시간';

COMMENT ON COLUMN "CERTIFIED"."CERT_ST" IS '인증상태';

COMMENT ON COLUMN "CERTIFIED"."MEMBER_NO" IS '회원번호';

CREATE TABLE "SPACE_ROOM" (
	"SPACE_ROOM_NO"	NUMBER		NOT NULL,
	"SPACE_ROOM_NM"	VARCHAR2(200)		NOT NULL,
	"SPACE_ROOM_PRICE"	NUMBER		NOT NULL,
	"SPACE_ROOM_FIT"	VARCHAR2(50)		NOT NULL,
	"SPACE_ROOM_DESC"	VARCHAR2(2000)		NOT NULL,
	"SPACE_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "SPACE_ROOM"."SPACE_ROOM_NO" IS '공간룸번호';

COMMENT ON COLUMN "SPACE_ROOM"."SPACE_ROOM_NM" IS '공간룸명';

COMMENT ON COLUMN "SPACE_ROOM"."SPACE_ROOM_PRICE" IS '공간룸가격';

COMMENT ON COLUMN "SPACE_ROOM"."SPACE_ROOM_FIT" IS '공간룸수용인원';

COMMENT ON COLUMN "SPACE_ROOM"."SPACE_ROOM_DESC" IS '공간룸설명';

COMMENT ON COLUMN "SPACE_ROOM"."SPACE_NO" IS '공간번호';

CREATE TABLE "SPACE_IMG" (
	"SPACE_IMG_NO"	NUMBER		NOT NULL,
	"SPACE_IMG_PATH"	VARCHAR2(200)		NOT NULL,
	"SPACE_IMG_NM"	VARCHAR2(30)		NOT NULL,
	"SPACE_IMG_ORG"	VARCHAR2(100)		NOT NULL,
	"SPACE_IMG_LEVEL"	NUMBER		NOT NULL,
	"SPACE_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "SPACE_IMG"."SPACE_IMG_NO" IS '이미지번호';

COMMENT ON COLUMN "SPACE_IMG"."SPACE_IMG_PATH" IS '이미지 경로';

COMMENT ON COLUMN "SPACE_IMG"."SPACE_IMG_NM" IS '이미지명';

COMMENT ON COLUMN "SPACE_IMG"."SPACE_IMG_ORG" IS '이미지원본명';

COMMENT ON COLUMN "SPACE_IMG"."SPACE_IMG_LEVEL" IS '이미지 위치';

COMMENT ON COLUMN "SPACE_IMG"."SPACE_NO" IS '공간번호';

ALTER TABLE "MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY (
	"MEMBER_NO"
);

ALTER TABLE "SPACE" ADD CONSTRAINT "PK_SPACE" PRIMARY KEY (
	"SPACE_NO"
);

ALTER TABLE "RESERVE" ADD CONSTRAINT "PK_RESERVE" PRIMARY KEY (
	"RES_NO"
);

ALTER TABLE "REVIEW" ADD CONSTRAINT "PK_REVIEW" PRIMARY KEY (
	"REV_NO"
);

ALTER TABLE "SPACE_DIBS" ADD CONSTRAINT "PK_SPACE_DIBS" PRIMARY KEY (
	"MEMBER_NO",
	"SPACE_NO"
);

ALTER TABLE "QUESTION" ADD CONSTRAINT "PK_QUESTION" PRIMARY KEY (
	"QUE_NO"
);

ALTER TABLE "EX_SPACE" ADD CONSTRAINT "PK_EX_SPACE" PRIMARY KEY (
	"EX_NO",
	"SPACE_NO"
);

ALTER TABLE "EXHIBIT" ADD CONSTRAINT "PK_EXHIBIT" PRIMARY KEY (
	"EX_NO"
);

ALTER TABLE "HELP" ADD CONSTRAINT "PK_HELP" PRIMARY KEY (
	"HELP_NO"
);

ALTER TABLE "CATEGORY" ADD CONSTRAINT "PK_CATEGORY" PRIMARY KEY (
	"CATG_NO"
);

ALTER TABLE "SPACE_TYPE" ADD CONSTRAINT "PK_SPACE_TYPE" PRIMARY KEY (
	"SPACE_TYPE_NO"
);

ALTER TABLE "OPTION" ADD CONSTRAINT "PK_OPTION" PRIMARY KEY (
	"OPTION_NO"
);

ALTER TABLE "SPACE_OPTION" ADD CONSTRAINT "PK_SPACE_OPTION" PRIMARY KEY (
	"SPACE_ROOM_NO",
	"OPTION_NO"
);

ALTER TABLE "REPLY" ADD CONSTRAINT "PK_REPLY" PRIMARY KEY (
	"REPLY_NO"
);

ALTER TABLE "ANSWER" ADD CONSTRAINT "PK_ANSWER" PRIMARY KEY (
	"INQ_NO"
);

ALTER TABLE "CERTIFIED" ADD CONSTRAINT "PK_CERTIFIED" PRIMARY KEY (
	"CERT_NO"
);

ALTER TABLE "SPACE_ROOM" ADD CONSTRAINT "PK_SPACE_ROOM" PRIMARY KEY (
	"SPACE_ROOM_NO"
);

ALTER TABLE "SPACE_IMG" ADD CONSTRAINT "PK_SPACE_IMG" PRIMARY KEY (
	"SPACE_IMG_NO"
);

ALTER TABLE "SPACE" ADD CONSTRAINT "FK_SPACE_TYPE_TO_SPACE_1" FOREIGN KEY (
	"SPACE_TYPE_NO"
)
REFERENCES "SPACE_TYPE" (
	"SPACE_TYPE_NO"
);

ALTER TABLE "RESERVE" ADD CONSTRAINT "FK_MEMBER_TO_RESERVE_1" FOREIGN KEY (
	"MEMBER_NO"
)
REFERENCES "MEMBER" (
	"MEMBER_NO"
);

ALTER TABLE "RESERVE" ADD CONSTRAINT "FK_SPACE_ROOM_TO_RESERVE_1" FOREIGN KEY (
	"SPACE_ROOM_NO"
)
REFERENCES "SPACE_ROOM" (
	"SPACE_ROOM_NO"
);

ALTER TABLE "REVIEW" ADD CONSTRAINT "FK_RESERVE_TO_REVIEW_1" FOREIGN KEY (
	"RES_NO"
)
REFERENCES "RESERVE" (
	"RES_NO"
);

ALTER TABLE "SPACE_DIBS" ADD CONSTRAINT "FK_MEMBER_TO_SPACE_DIBS_1" FOREIGN KEY (
	"MEMBER_NO"
)
REFERENCES "MEMBER" (
	"MEMBER_NO"
);

ALTER TABLE "SPACE_DIBS" ADD CONSTRAINT "FK_SPACE_TO_SPACE_DIBS_1" FOREIGN KEY (
	"SPACE_NO"
)
REFERENCES "SPACE" (
	"SPACE_NO"
);

ALTER TABLE "QUESTION" ADD CONSTRAINT "FK_MEMBER_TO_QUESTION_1" FOREIGN KEY (
	"MEMBER_NO"
)
REFERENCES "MEMBER" (
	"MEMBER_NO"
);

ALTER TABLE "QUESTION" ADD CONSTRAINT "FK_SPACE_TO_QUESTION_1" FOREIGN KEY (
	"SPACE_NO"
)
REFERENCES "SPACE" (
	"SPACE_NO"
);

ALTER TABLE "EX_SPACE" ADD CONSTRAINT "FK_EXHIBIT_TO_EX_SPACE_1" FOREIGN KEY (
	"EX_NO"
)
REFERENCES "EXHIBIT" (
	"EX_NO"
);

ALTER TABLE "EX_SPACE" ADD CONSTRAINT "FK_SPACE_TO_EX_SPACE_1" FOREIGN KEY (
	"SPACE_NO"
)
REFERENCES "SPACE" (
	"SPACE_NO"
);

ALTER TABLE "HELP" ADD CONSTRAINT "FK_CATEGORY_TO_HELP_1" FOREIGN KEY (
	"CATG_NO"
)
REFERENCES "CATEGORY" (
	"CATG_NO"
);

ALTER TABLE "SPACE_OPTION" ADD CONSTRAINT "FK_SPACE_ROOM_TO_SPACE_OPT_1" FOREIGN KEY (
	"SPACE_ROOM_NO"
)
REFERENCES "SPACE_ROOM" (
	"SPACE_ROOM_NO"
);

ALTER TABLE "SPACE_OPTION" ADD CONSTRAINT "FK_OPTION_TO_SPACE_OPTION_1" FOREIGN KEY (
	"OPTION_NO"
)
REFERENCES "OPTION" (
	"OPTION_NO"
);

ALTER TABLE "REPLY" ADD CONSTRAINT "FK_REVIEW_TO_REPLY_1" FOREIGN KEY (
	"REPLY_NO"
)
REFERENCES "REVIEW" (
	"REV_NO"
);

ALTER TABLE "ANSWER" ADD CONSTRAINT "FK_QUESTION_TO_ANSWER_1" FOREIGN KEY (
	"INQ_NO"
)
REFERENCES "QUESTION" (
	"QUE_NO"
);

ALTER TABLE "CERTIFIED" ADD CONSTRAINT "FK_MEMBER_TO_CERTIFIED_1" FOREIGN KEY (
	"MEMBER_NO"
)
REFERENCES "MEMBER" (
	"MEMBER_NO"
);

ALTER TABLE "SPACE_ROOM" ADD CONSTRAINT "FK_SPACE_TO_SPACE_ROOM_1" FOREIGN KEY (
	"SPACE_NO"
)
REFERENCES "SPACE" (
	"SPACE_NO"
);

ALTER TABLE "SPACE_IMG" ADD CONSTRAINT "FK_SPACE_TO_SPACE_IMG_1" FOREIGN KEY (
	"SPACE_NO"
)
REFERENCES "SPACE" (
	"SPACE_NO"
);

-- SPACE_TYPE DATA
INSERT INTO SPACE_TYPE VALUES(1, '라이브방송', DEFAULT, 'broadcasting');
INSERT INTO SPACE_TYPE VALUES(2, '카페', DEFAULT, 'cafe');
INSERT INTO SPACE_TYPE VALUES(3, '파티룸', DEFAULT, 'gathering');
INSERT INTO SPACE_TYPE VALUES(4, '악기연습실', DEFAULT, 'instrumental_room');
INSERT INTO SPACE_TYPE VALUES(5, '실외촬영', DEFAULT, 'outdoor');
INSERT INTO SPACE_TYPE VALUES(6, '공연장', DEFAULT, 'performance');
INSERT INTO SPACE_TYPE VALUES(7, '운동시설', 2, 'workingout');
INSERT INTO SPACE_TYPE VALUES(8, '스몰웨딩', 2, 'wedding');
INSERT INTO SPACE_TYPE VALUES(9, '회의실', 2, 'meeting');
INSERT INTO SPACE_TYPE VALUES(10, '촬영스튜디오', 2, 'shooting');
INSERT INTO SPACE_TYPE VALUES(11, '독립오피스', DEFAULT, 'private_office');
INSERT INTO SPACE_TYPE VALUES(12, '세미나실', DEFAULT, 'seminar');

-- 컬럼 변경
ALTER TABLE SPACE_TYPE RENAME COLUMN SPACE_TYPE_ST_CD TO SPACE_TYPE_ST;
ALTER TABLE REPLY RENAME COLUMN REPLY_ST_CD TO REPLY_ST;
ALTER TABLE EXHIBIT MODIFY EX_NM VARCHAR2(100);

-- 기획전
SET DEFINE OFF;
INSERT INTO EXHIBIT VALUES(1, '원테이블 레스토랑은 이곳에,&lt;br&gt;오늘은 내가 일일 쉐프', '노잼도시를 구하라 WEEK6', 'promotion_pic_01');
INSERT INTO EXHIBIT VALUES(2, '댕댕이와 함께라면!&lt;br&gt;반려동물 동반 공간 기획전', '노잼도시를 구하라 WEEK5', 'promotion_pic_02');
INSERT INTO EXHIBIT VALUES(3, '최애 직관은 못 참아!&lt;br&gt;안방 1열 온라인 콘서트 공간', '노잼도시를 구하라 WEEK4', 'promotion_pic_03');
INSERT INTO EXHIBIT VALUES(4, '연말에 추천하는 공간&lt;br&gt;BEST', '노잼도시를 구하라 WEEK3', 'promotion_pic_04');
INSERT INTO EXHIBIT VALUES(5, '라이브 장송을 위한&lt;br&gt;시간당 2만원3ㅐ 역세권 공간들', '노잼도시를 구하라 WEEK2', 'promotion_pic_05');
INSERT INTO EXHIBIT VALUES(6, '나만의 부케 만나기!&lt;br&gt;도심 속 이색 파티룸', '노잼도시를 구하라 WEEK1', 'promotion_pic_06');


-- 시퀀스
CREATE SEQUENCE CERTIFIED_SEQ_NO;
CREATE SEQUENCE MEMBER_SEQ_NO;
CREATE SEQUENCE RESERVE_SEQ_NO;
CREATE SEQUENCE REVIEW_SEQ_NO;
CREATE SEQUENCE HELP_SEQ_NO;
CREATE SEQUENCE CATEGORY_SEQ_NO;
CREATE SEQUENCE SPACE_SEQ_NO;
CREATE SEQUENCE SPACE_ROOM_SEQ_NO;
CREATE SEQUENCE SPACE_IMG_SEQ_NO;
CREATE SEQUENCE EXHIBIT_SEQ_NO;
CREATE SEQUENCE SPACE_TYPE_SEQ_NO;
CREATE SEQUENCE OPTION_SEQ_NO;
CREATE SEQUENCE QUESTION_SEQ_NO;
