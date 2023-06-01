-- tour DDL --

-- DROP SCHEMA tourapi;
CREATE SCHEMA tourapi;
USE tourapi;
 
 CREATE TABLE MEMBER(
 mNO			INT PRIMARY KEY AUTO_INCREMENT,
 ID				VARCHAR(30) NOT NULL UNIQUE,
 PASSWORD 		VARCHAR(100) NOT NULL,
 NAME			VARCHAR(15) NOT NULL,
 EMAIL			VARCHAR(100),
 PHONE			VARCHAR(13),
 ENROLL_DATE	DATETIME DEFAULT CURRENT_TIMESTAMP 
 );
 
 COMMIT;
 SELECT * FROM MEMBER;
 
CREATE TABLE BOARD (	
    bNO 				INT AUTO_INCREMENT,
    mNO 				INT, 
	TITLE 				VARCHAR(1000), 
	CONTENTID 			INT,
    CONTENT 			VARCHAR(2000),
	TYPE 				VARCHAR(100), 
	ORIGINAL_FILENAME 	VARCHAR(100), 
	READCOUNT 			INT DEFAULT 0, 
    STATUS 				VARCHAR(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
    CREATE_DATE 		DATETIME  DEFAULT CURRENT_TIMESTAMP, 
    MODIFY_DATE 		DATETIME  DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT PK_BOARD_NO PRIMARY KEY(bNO),
    CONSTRAINT FK_BOARD_WRITER FOREIGN KEY(mNO) REFERENCES MEMBER(mNO) ON DELETE SET NULL
    );
    
COMMIT;
SELECT * FROM BOARD;


CREATE TABLE REPLY(
  rNO INT PRIMARY KEY AUTO_INCREMENT,
  bNO INT,
  mNO INT,
  CONTENT VARCHAR(1000),
  STATUS VARCHAR(1) DEFAULT 'Y' CHECK (STATUS IN ('Y', 'N')),
  CREATE_DATE DATETIME DEFAULT CURRENT_TIMESTAMP,
  MODIFY_DATE DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (bNO) REFERENCES BOARD(bNO),
  FOREIGN KEY (mNO) REFERENCES MEMBER(mNO)
);

COMMIT;
SELECT * FROM REPLY;
 
 
CREATE TABLE Accommodation(
	contentid      	INT,
	contenttypeid      VARCHAR(100),
	homepage           VARCHAR(1000),
	tel                VARCHAR(100),
	title              VARCHAR(200),
	firstimage         VARCHAR(200),
	firstimage2        VARCHAR(200),
	areacode           VARCHAR(100),
	sigungucode        VARCHAR(100),
	cat1               VARCHAR(100),
	cat2               VARCHAR(100),
	cat3               VARCHAR(100),
	addr1              VARCHAR(100),
	addr2              VARCHAR(100),
    zipcode      		VARCHAR(100),
	mapx               VARCHAR(100),
	mapy               VARCHAR(100),
	overview           VARCHAR(3000),
	mlevel             VARCHAR(100),
	accomcountlodging   VARCHAR(100),
	benikia             VARCHAR(100),
	checkintime         VARCHAR(100),
	checkouttime        VARCHAR(100),
	chkcooking          VARCHAR(100),
	foodplace           VARCHAR(1000),
	goodstay            VARCHAR(100),
	hanok               VARCHAR(100),
	infocenterlodging   VARCHAR(100),
	parkinglodging      VARCHAR(100),
	pickup              VARCHAR(100),
	roomcount           VARCHAR(100),
	reservationlodging  VARCHAR(100),
	reservationurl      VARCHAR(100),
	roomtype            VARCHAR(1000),
	scalelodging        VARCHAR(100),
	subfacility         VARCHAR(1000),
	barbecue            VARCHAR(100),
	beauty              VARCHAR(100),
	beverage            VARCHAR(100),
	bicycle             VARCHAR(100),
	campfire            VARCHAR(100),
	fitness             VARCHAR(100),
	karaoke             VARCHAR(100),
	publicbath          VARCHAR(100),
	publicpc            VARCHAR(100),
	sauna               VARCHAR(100),
	seminar             VARCHAR(100),
	sports              VARCHAR(100),
	refundregulation    VARCHAR(1000),
	PRIMARY KEY (contentid)
);
-- DROP TABLE Accommodation;
DESC Accommodation;
select * from Accommodation;


 CREATE TABLE Tourlist(
	contentid      	INT,
	contenttypeid      VARCHAR(100),
	homepage           VARCHAR(600),
	tel                VARCHAR(100),
	title              VARCHAR(200),
	firstimage         VARCHAR(200),
	firstimage2        VARCHAR(200),
	areacode           VARCHAR(100),
	sigungucode        VARCHAR(100),
	cat1               VARCHAR(100),
	cat2               VARCHAR(100),
	cat3               VARCHAR(100),
	addr1              VARCHAR(100),
	addr2              VARCHAR(100),
    zipcode      		VARCHAR(100),
	mapx               VARCHAR(100),
	mapy               VARCHAR(100),
	overview           VARCHAR(3000),
	mlevel             VARCHAR(100),
	accomcount   		VARCHAR(100),
	chkbabycarriage     VARCHAR(100),
	chkcreditcard       VARCHAR(100),
	chkpet        		VARCHAR(100),
	expagerange         VARCHAR(100),
	expguide           	VARCHAR(1000),
	heritage1           VARCHAR(100),
	heritage2           VARCHAR(100),
	heritage3   		VARCHAR(100),
	infocenter      	VARCHAR(1000),
	opendate            VARCHAR(100),
	parking           	VARCHAR(500),
	restdate  			VARCHAR(100),
	useseason      		VARCHAR(100),
	usetime            	VARCHAR(1000),
	PRIMARY KEY (contentid)
);
-- DROP TABLE Tourlist;
DESC Tourlist;
select * from Tourlist;
 
 
 CREATE TABLE CultureContent(
	contentid      	INT,
	contenttypeid      VARCHAR(100),
	homepage           VARCHAR(300),
	tel                VARCHAR(100),
	title              VARCHAR(200),
	firstimage         VARCHAR(200),
	firstimage2        VARCHAR(200),
	areacode           VARCHAR(100),
	sigungucode        VARCHAR(100),
	cat1               VARCHAR(100),
	cat2               VARCHAR(100),
	cat3               VARCHAR(100),
	addr1              VARCHAR(100),
	addr2              VARCHAR(100),
    zipcode      		VARCHAR(100),
	mapx               VARCHAR(100),
	mapy               VARCHAR(100),
	overview           VARCHAR(2500),
	mlevel             VARCHAR(100),
    imgname				VARCHAR(100),
    originimgurl		VARCHAR(1000),
    smallimageurl		VARCHAR(1000),
	accomcountculture   		VARCHAR(100),
	chkbabycarriageculture     	VARCHAR(100),
	chkcreditcardculture       	VARCHAR(100),
	chkpetculture        		VARCHAR(100),
	discountinfo         		VARCHAR(1000),
	infocenterculture          	VARCHAR(1000),
	parkingculture           	VARCHAR(1000),
	parkingfee         			VARCHAR(500),
	usefee   					VARCHAR(1000),
	usetimeculture      		VARCHAR(1000),
    restdateculture				VARCHAR(1000),
	scale            			VARCHAR(1000),
	spendtime           		VARCHAR(1000),
	PRIMARY KEY (contentid)
);
-- DROP TABLE CultureContent;
DESC CultureContent;
select * from CultureContent;

CREATE TABLE Food(
	contentid      		INT,
	contenttypeid      	VARCHAR(100),
	homepage          	VARCHAR(500),
	tel                	VARCHAR(100),
	title              	VARCHAR(200),
	firstimage         	VARCHAR(200),
	firstimage2        	VARCHAR(200),
	areacode           	VARCHAR(100),
	sigungucode        	VARCHAR(100),
	cat1               	VARCHAR(100),
	cat2               	VARCHAR(100),
	cat3               	VARCHAR(100),
	addr1              	VARCHAR(100),
	addr2              	VARCHAR(100),
    zipcode      		VARCHAR(100),
	mapx               	VARCHAR(100),
	mapy               	VARCHAR(100),
	overview           	VARCHAR(2000),
	mlevel             	VARCHAR(100),
    chkcreditcardfood 	VARCHAR(500),
	discountinfofood	VARCHAR(500),
	firstmenu			VARCHAR(2000),
	infocenterfood		VARCHAR(500),
	kidsfacility		VARCHAR(500),
	opendatefood		VARCHAR(500),
	opentimefood		VARCHAR(500),
	packing				VARCHAR(500),
	parkingfood			VARCHAR(500),
	reservationfood		VARCHAR(500),
	restdatefood		VARCHAR(500),
	scalefood			VARCHAR(500),
	seat				VARCHAR(500),
	smoking				VARCHAR(500),
	treatmenu			VARCHAR(1000),
	lcnsno				VARCHAR(500)	
);
-- DROP TABLE food;
desc food;
select * from food;


CREATE TABLE Festival(
	contentid      		INT,
	contenttypeid      	VARCHAR(100),
	homepage          	VARCHAR(800),
	tel                	VARCHAR(200),
	title              	VARCHAR(200),
	firstimage         	VARCHAR(200),
	firstimage2        	VARCHAR(200),
	areacode           	VARCHAR(100),
	sigungucode        	VARCHAR(100),
	cat1               	VARCHAR(100),
	cat2               	VARCHAR(100),
	cat3               	VARCHAR(100),
	addr1              	VARCHAR(100),
	addr2              	VARCHAR(100),
    zipcode      		VARCHAR(100),
	mapx               	VARCHAR(100),
	mapy               	VARCHAR(100),
	overview           	VARCHAR(2000),
	mlevel             	VARCHAR(100),
	agelimit			VARCHAR(100),
	bookingplace		VARCHAR(300),
	discountinfofestival	VARCHAR(100),
	eventenddate		VARCHAR(100),
	eventhomepage		VARCHAR(300),
	eventplace			VARCHAR(300),
	eventstartdate		VARCHAR(100),
	festivalgrade		VARCHAR(100),
	placeinfo			VARCHAR(500),
	playtime			VARCHAR(300),
	program				VARCHAR(100),
	spendtimefestival	VARCHAR(100),
	sponsor1			VARCHAR(100),
	sponsor1tel			VARCHAR(200),
	sponsor2			VARCHAR(100),
	sponsor2tel			VARCHAR(100),
	subevent			VARCHAR(300),
	usetimefestival		VARCHAR(300)
);
-- DROP TABLE Festival;
desc festival;
select * from festival;





USE tourapi;
CREATE TABLE MEMBER (
    mNO 	 INT  PRIMARY KEY AUTO_INCREMENT,
    ID 		 VARCHAR(30) NOT NULL UNIQUE,
    PASSWORD VARCHAR(100) NOT NULL,
    ROLE 	 VARCHAR(10) DEFAULT 'ROLE_USER',
    NAME 	 VARCHAR(15) NOT NULL,
    PHONE 	 VARCHAR(13),
    EMAIL 	 VARCHAR(100),
    ADDRESS  VARCHAR(100),
    HOBBY 	 VARCHAR(100),
    KAKAOTOKEN	VARCHAR(1000),
    STATUS 	 VARCHAR(1) DEFAULT 'Y' CHECK(STATUS IN('Y', 'N')),
    ENROLL_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP,
    MODIFY_DATE DATETIME DEFAULT CURRENT_TIMESTAMP
);



INSERT INTO MEMBER (
    mNO, 
    ID, 
    PASSWORD, 
    ROLE,
    NAME, 
    PHONE, 
    EMAIL, 
    ADDRESS, 
    HOBBY, 
    KAKAOTOKEN,
    STATUS, 
    ENROLL_DATE, 
    MODIFY_DATE
) VALUES(
    0, 
    'admin', 
    '1234', 
    'ROLE_ADMIN', 
    '관리자', 
    '010-1234-4341', 
    'admin@test.com', 
    '서울시 강남구 역삼동',
    DEFAULT,
    DEFAULT,
    DEFAULT,
    DEFAULT,
    DEFAULT
);

COMMIT;

SELECT * FROM MEMBER;

