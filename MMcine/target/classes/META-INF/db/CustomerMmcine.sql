-----------------------------壱梓------------------------------------------------------
-- 壱梓
DROP TABLE CUSTOMER;
CREATE TABLE CUSTOMER (
    cusId VARCHAR2(20) PRIMARY KEY,
    cusPw   VARCHAR2(20) NOT NULL,
    cusName VARCHAR2(20) NOT NULL,
    cusNick VARCHAR2(20) UNIQUE, --廃越 6越切 慎嬢 20切 段引薦廃
    cusBirth DATE NOT NULL,
    cusPhone VARCHAR2(50) NOT NULL,
    cusEmail VARCHAR2(100) NOT NULL,
    cusAddress VARCHAR2(300),
    cusGender VARCHAR2(30) NOT NULL,
    cusPhoto VARCHAR2(100) DEFAULT 'noimg.jpg',
    cusSum NUMBER(20) DEFAULT 0,
    cusPoint NUMBER(20)  DEFAULT 0,
    cusRdate DATE  DEFAULT SYSDATE,
    cusBlack NUMBER(5)  DEFAULT 0
);
SELECT * FROM CUSTOMER; 
COMMIT;
ROLLBACK;
DELETE CUSTOMER;
DELETE CUSTOMER WHERE cusId = 'movie2';

--	//噺据亜脊 : INSERT研戚遂廃 娃舘廃 SQL庚 (軒渡葵聖 INT稽閤焼 N楳 穣汽戚闘稽 失鳶研硝焼沙陥)

INSERT INTO CUSTOMER VALUES ('movie1','movie1','沿疑汐','嫌層伸','19930307','010-7777-7777','movie1@naver.com','辞随 悪栽姥','害切','kim.jpg',0,0,SYSDATE,0);
INSERT INTO CUSTOMER VALUES ('movie2','movie2','神佐錐','葛畠旦','19870101','010-7777-7777','movie2@naver.com','辞随 悪栽姥','害切','noimg.jpg',0,0,SYSDATE,0);

INSERT INTO CUSTOMER (cusId,cusPw,cusName,cusNick,cusBirth,cusPhone,cusEmail,cusAddress,cusGender,cusSum,cusPoint,cusRdate,cusBlack) 
    VALUES ('movie3','movie3','酵薄層','奄綬壱庚','19800101','010-7777-7777','movie3@naver.com','昔探 尻呪疑','害切',0,0,SYSDATE,0);
INSERT INTO CUSTOMER (cusId,cusPw,cusName,cusNick,cusBirth,cusPhone,cusEmail,cusAddress,cusGender,cusSum,cusPoint,cusRdate,cusBlack) 
    VALUES ('movie4','movie4','戚渋汎','傾球適軒覗','19850101','010-7777-7777','movie4@naver.com','辞随 但疑','害切',0,0,SYSDATE,0);
INSERT INTO CUSTOMER (cusId,cusPw,cusName,cusNick,cusBirth,cusPhone,cusEmail,cusAddress,cusGender,cusSum,cusPoint,cusRdate,cusBlack) 
    VALUES ('movie5','movie5','宿仙伸','益欠闘','19970101','010-7777-7777','movie5@naver.com','辞随 曽唖蝕','害切',0,0,SYSDATE,0);
INSERT INTO CUSTOMER (cusId,cusPw,cusName,cusNick,cusBirth,cusPhone,cusEmail,cusAddress,cusGender,cusSum,cusPoint,cusRdate,cusBlack) 
    VALUES ('movie6','movie6','沿紫舌','CEO','19970101','010-7777-7777','movie5@naver.com','辞随 曽唖蝕','害切',0,0,SYSDATE,0);    

--  //焼戚巨 掻差端滴 : 繕闇拭 ID伊事聖 隔製生稽潤 掻差端滴拝呪赤惟敗 (舛左亜蟹神檎 掻差,舛左亜照蟹神檎 亜脊亜管)
SELECT * FROM CUSTOMER WHERE cusId='movie1'; 
--	//稽益昔 : 働舛噺据 舛左研 閤焼 舛左亜 蟹神檎 酔識 ID糎仙 益板 閤精舛左紗 PW研 伊事馬食 鎧亜 脊径廃 PW人 旭精走 溌昔
SELECT * FROM CUSTOMER WHERE cusId='movie1' AND cusPw='movie1' ;
--	//噺据舛左亜閃神奄 : 働舛噺据 舛左研 閤焼 dto梓端拭 隔壱 呪舛,稽益昔獣 室芝梓端拭 汽戚斗(dto)研 幻級凶 去去 床昔陥.
SELECT * FROM CUSTOMER WHERE cusId='movie1'; 
--	//噺据舛左呪舛馬奄 : UPDATE研 戚遂廃 娃舘廃 SQL庚 (軒渡葵聖 INT稽閤焼 N楳 穣汽戚闘稽 失鳶研硝焼沙陥)
UPDATE CUSTOMER SET cusPw = 'movie11', cusName = '沿疑汐', cusNick='鯵軒', cusPhone = '010-9089-7682', cusEmail = 'football@naver.com', cusAddress ='井奄亀 失害', cusPhoto ='noimg.jpg'
         WHERE cusId = 'movie1';
--	//噺据舛左軒什闘(凪戚臓on) : 穿端 噺据税 舛左研 窒径拝闇汽 廃凪戚走原陥 杖幻鏑 窒径拝闇走,舛慶授辞澗 嬢胸惟拝闇走 持唖廃 SQL庚
--1舘域
SELECT * FROM CUSTOMER where cNAME LIKE '%'||'沿'||'%' AND ctel LIKE '%'||7777||'%' ORDER BY CNAME; 
--2舘域
SELECT ROWNUM RM, A.* FROM(SELECT * FROM CUSTOMER where cNAME LIKE '%'||'沿'||'%' AND ctel LIKE '%'||010||'%' ORDER BY CNAME)A; 
--3舘域(焼戚巨人, 莞革績生稽 噺据伊事)
SELECT * FROM(SELECT ROWNUM RM, A.* FROM
    (SELECT * FROM CUSTOMER WHERE cusId LIKE '%'||''||'%' AND cusNick LIKE '%'||''||'%' ORDER BY cusName)A) 
        WHERE RM BETWEEN 1 AND 4; 
--	//穿端噺据呪(凪戚臓坦軒是敗) : 穿端噺据呪研嗣焼人 設限仲辞 廃凪戚走雁 噺据軒什闘呪研 杖幻鏑 窒径拝闇走 持唖廃 SQL庚
SELECT COUNT(*) COUNT FROM CUSTOMER;

UPDATE CUSTOMER SET cusPhoto = 'lee.jpg' WHERE cusId='movie3';

--纏盗
UPDATE CUSTOMER SET cusBlack = 1 WHERE cusId='movie2';
--鷺窟
UPDATE CUSTOMER SET cusBlack = 2 WHERE cusId='movie1';
--鷺窟差姥
UPDATE CUSTOMER SET cusBlack = 0 WHERE cusId='movie2';

--------------------------壱梓去厭------------------------------------------------------
-- 壱梓 去厭
DROP TABLE CUS_GRADE;
CREATE TABLE CUS_GRADE (
    cusGrade VARCHAR2(20) PRIMARY KEY,
    cusLow NUMBER(20) NOT NULL,
    cusHigh NUMBER(20) NOT NULL,
    cusDiscount NUMBER(10) NOT NULL
);
SELECT * FROM CUS_GRADE ;
COMMIT;
ROLLBACK;
DELETE CUS_GRADE;
DELETE CUS_GRADE WHERE cusGrade = 'NORMAL';
--去厭壕帖
INSERT INTO CUS_GRADE VALUES ('NORMAL',0,99999,0); --葛源 拝昔晴 0% 3腰舛亀 戚遂獣 去穣
INSERT INTO CUS_GRADE VALUES ('SILVER',100000,149999,3); --淑幻据 3% 5腰舛亀 戚遂獣 去穣
INSERT INTO CUS_GRADE VALUES ('GOLD',150000,299999,5); --淑神幻据 5% 10腰舛亀 戚遂獣 去穣
INSERT INTO CUS_GRADE VALUES ('PLATINUM',300000,599999,10); --誌淑幻据 10% 20腰舛亀 戚遂獣 去穣
INSERT INTO CUS_GRADE VALUES ('VIP',600000,1499999,20); --整淑幻据 20% 50腰舛亀 戚遂獣 去穣
INSERT INTO CUS_GRADE VALUES ('VVIP',1500000,999999999999,50); --拷神淑幻据 50% 

--去厭伊事
SELECT c.*,cusGrade,cusDiscount FROM CUS_GRADE G, CUSTOMER C WHERE C.cusSum BETWEEN G.cusLow AND G.cusHigh AND cusId='movie1';

--去厭臣形爽澗 SQL
UPDATE CUSTOMER SET cusSum=1560000 WHERE cusId = 'movie6';
--匂昔闘臣形爽澗 SQL
UPDATE CUSTOMER SET cusPoint=10000 WHERE cusId = 'movie1';


-----------------------------淫軒切------------------------------------------------------
-- 淫軒切
DROP TABLE ADMIN;
CREATE TABLE ADMIN (
    aId VARCHAR2(20) PRIMARY KEY,
    aPw VARCHAR2(20) NOT NULL,
    aName VARCHAR2(20) NOT NULL
);
SELECT * FROM ADMIN ;
COMMIT;
ROLLBACK;
DELETE ADMIN;
DELETE ADMIN WHERE AID = 'MMCINE1';
--淫軒切 INSERT庚
INSERT INTO ADMIN VALUES ('MMCINE1','MMCINE1','神淫軒');
INSERT INTO ADMIN VALUES ('MMCINE2','MMCINE2','酵淫軒');
INSERT INTO ADMIN VALUES ('MMCINE3','MMCINE3','戚淫軒');
INSERT INTO ADMIN VALUES ('MMCINE4','MMCINE4','沿淫軒');
INSERT INTO ADMIN VALUES ('MMCINE5','MMCINE5','宿淫軒');
--淫軒切 稽益昔
SELECT * FROM ADMIN WHERE aId='MMCINE1' AND apw='MMCINE1';
--淫軒切 軒什闘
SELECT * FROM ADMIN;
-----------------------------切政惟獣毒------------------------------------------------------
-- 切政惟獣毒
DROP SEQUENCE SEQ_FREEBOARD;
CREATE SEQUENCE SEQ_FREEBOARD;
DROP TABLE FREEBOARD;

CREATE TABLE FREEBOARD (
    fBoardNum NUMBER(10) PRIMARY KEY,
    fBoardId VARCHAR2(20) NOT NULL, --莞革績
    fBoardTitle VARCHAR2(50) NOT NULL,
    fBoardContent CLOB NOT NULL,
    fBoardGroup  NUMBER(10) NOT NULL,
    fBoardStep  NUMBER(10) NOT NULL,
    fBoardIndent  NUMBER(10) NOT NULL,
    fBoardImg VARCHAR2(100),
    fBoardHit NUMBER(10) NOT NULL,
    fBoardRdate DATE DEFAULT SYSDATE
);
SELECT * FROM FREEBOARD ;
COMMIT;
ROLLBACK;
DELETE FREEBOARD;
DELETE FREEBOARD WHERE fBoardNum = 1;
--Q&A砺戚鷺 INSERT
INSERT INTO FREEBOARD VALUES (SEQ_FREEBOARD.NEXTVAL,'aaa1212','偽穿衣源','嫌層伸宋製せせ',SEQ_FREEBOARD.CURRVAL,0,0,'RUW.jpg',0,SYSDATE); 



--1-1越鯉系 (paging匂敗)  --越益血精聡 越腰硲戚奄凶庚拭 置重授生稽 鯉系聖 亜閃神壱 益血鎧 窒径授辞研操辞 岩痕授辞
SELECT * FROM (SELECT ROWNUM RN, A.* FROM(SELECT Q.* FROM FREEBOARD Q ORDER BY fBoardGroup DESC, fBoardStep)A) 
        WHERE RN BETWEEN 1 AND 4 ;      
--1-2.越 鯵呪 (凪戚臓拝凶 護 凪戚走梢 蟹寛辞 拝闇走 拝凶 琶推)
SELECT COUNT(*) COUNT FROM FREEBOARD;

--2.据越床奄 --戚耕走歎採
INSERT INTO FREEBOARD VALUES (SEQ_FREEBOARD.NEXTVAL,'aaa1212','偽穿衣源','嫌層伸宋製せせ',SEQ_FREEBOARD.CURRVAL,0,0,'RUW.jpg',0,SYSDATE);

--2.据越床奄 --戚耕走蒸製
INSERT INTO FREEBOARD (fBoardNum, fBoardId, fBoardTitle, fBoardContent, fBoardGroup, fBoardStep, fBoardIndent, fBoardHit, fBoardRdate)
    VALUES (SEQ_FREEBOARD.NEXTVAL,'aaa1212','偽穿衣源','嫌層伸宋製せせ',SEQ_FREEBOARD.CURRVAL,0,0,0,SYSDATE); 
                             
--3-1.越税 繕噺呪 馬蟹臣軒奄
UPDATE FREEBOARD SET fBoardHit = fBoardHit+1 WHERE fBoardNum = 1;                 
--3-2.越鎧遂 左奄
SELECT * FROM FREEBOARD WHERE fBoardNum=1;
--4.越 呪舛
UPDATE FREEBOARD SET  fBoardTitle='壕壱督推', fBoardContent='壱奄爽室推', fBoardImg='JYP.jpg', fBoardRdate=SYSDATE 
    WHERE fBoardNum=1;
--5.越肢薦
DELETE FREEBOARD WHERE fBoardNum=1;
--6-1.岩痕越 床奄是背 据越税 舛左研 亜閃神澗 sql
SELECT * FROM FREEBOARD WHERE fBoardNum= 21 ;
--6-2.岩痕越 煽舌穿拭 背醤馬澗 A什吐 (据掘 岩痕越聖 廃牒鎧軒壱 歯稽錘 岩痕越戚 置重是帖稽 是帖馬惟)
UPDATE FREEBOARD SET fBoardStep = fBoardStep+1 WHERE fBoardGroup=1 AND fBoardStep>0; --越腰硲=3 戚壱 据掘 BSTEP戚 0段引(据越X,岩痕越O)析凶
--6-3.岩痕越 床奄 戚耕走歎採
INSERT INTO FREEBOARD VALUES (SEQ_FREEBOARD.NEXTVAL,'aaa1212','偽穿衣源','嫌層伸宋製せせ',1,0,0,'RUW.jpg',0,SYSDATE);
--6-3.岩痕越 床奄 戚耕走蒸製
INSERT INTO FREEBOARD (fBoardNum, fBoardId, fBoardTitle, fBoardContent, fBoardGroup, fBoardStep, fBoardIndent, fBoardHit, fBoardRdate)
    VALUES (SEQ_FREEBOARD.NEXTVAL,'aaa1212','偽穿衣源','嫌層伸宋製せせ',1,0,0,0,SYSDATE);

