-- 회원 입력 // 비밀번호 123
INSERT INTO USER VALUES
	('jhj900412', '$2a$10$t4H/nOY68MEWbAnothO37eYoBojwYjKjHp093izANFKmPtMEExzeG','장효정',  true, true, true, true);

INSERT INTO USER VALUES
	('http', '$2a$10$t4H/nOY68MEWbAnothO37eYoBojwYjKjHp093izANFKmPtMEExzeG','홍길동',  true, true, true, true);


-- 회원 권한 입력
INSERT INTO AUTHORITY VALUES
	('jhj900412', 'ADMIN');
	
INSERT INTO AUTHORITY VALUES
	('jhj900412', 'USER');
	
INSERT INTO AUTHORITY VALUES
	('http', 'USER');


-- 게시판 게시글 입력

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_1', 'http', '1번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_2', 'jhj900412', '2번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_3', 'http', '3번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_4', 'jhj900412', '4번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_5', 'http', '5번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_6', 'jhj900412', '6번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_7', 'http', '7번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_8', 'jhj900412', '8번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_9', 'http', '9번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_10', 'jhj900412', '10번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_11', 'http', '11번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_12', 'jhj900412', '12번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_13', 'http', '13번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_14', 'jhj900412', '14번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_15', 'http', '15번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_16', 'jhj900412', '16번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_17', 'http', '17번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_18', 'jhj900412', '18번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_19', 'http', '19번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_20', 'jhj900412', '20번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_21', 'http', '21번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_22', 'jhj900412', '22번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_23', 'http', '23번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_24', 'jhj900412', '24번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_25', 'http', '25번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_26', 'jhj900412', '26번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_27', 'http', '27번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_28', 'jhj900412', '28번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_29', 'http', '29번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_30', 'jhj900412', '30번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_31', 'http', '31번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_32', 'jhj900412', '32번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_33', 'http', '33번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_34', 'jhj900412', '34번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_35', 'http', '35번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_36', 'jhj900412', '36번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_37', 'http', '37번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_38', 'jhj900412', '38번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_39', 'http', '39번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_40', 'jhj900412', '40번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_41', 'http', '41번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_42', 'jhj900412', '42번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_43', 'http', '43번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_44', 'jhj900412', '44번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_45', 'http', '45번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_46', 'jhj900412', '46번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_47', 'http', '47번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_48', 'jhj900412', '48번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_49', 'http', '49번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_50', 'jhj900412', '50번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_51', 'http', '51번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_52', 'jhj900412', '52번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_53', 'http', '53번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_54', 'jhj900412', '54번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_55', 'http', '55번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_56', 'jhj900412', '56번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_57', 'http', '57번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_58', 'jhj900412', '58번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_59', 'http', '59번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_60', 'jhj900412', '60번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_61', 'http', '61번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_62', 'jhj900412', '62번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_63', 'http', '63번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_64', 'jhj900412', '64번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_65', 'http', '65번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_66', 'jhj900412', '66번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_67', 'http', '67번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_68', 'jhj900412', '68번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_69', 'http', '69번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_70', 'jhj900412', '70번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_71', 'http', '71번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_72', 'jhj900412', '72번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_73', 'http', '73번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_74', 'jhj900412', '74번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_75', 'http', '75번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_76', 'jhj900412', '76번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_77', 'http', '77번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_78', 'jhj900412', '78번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_79', 'http', '79번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_80', 'jhj900412', '80번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_81', 'http', '81번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_82', 'jhj900412', '82번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_83', 'http', '83번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_84', 'jhj900412', '84번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_85', 'http', '85번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_86', 'jhj900412', '86번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_87', 'http', '87번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_88', 'jhj900412', '88번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_89', 'http', '89번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_90', 'jhj900412', '90번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_91', 'http', '91번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_92', 'jhj900412', '92번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_93', 'http', '93번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_94', 'jhj900412', '94번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_95', 'http', '95번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_96', 'jhj900412', '96번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_97', 'http', '97번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_98', 'jhj900412', '98번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_99', 'http', '99번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_100', 'jhj900412', '100번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_101', 'http', '101번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_102', 'jhj900412', '102번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_103', 'http', '103번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_104', 'jhj900412', '104번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_105', 'http', '105번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_106', 'jhj900412', '106번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_107', 'http', '107번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_108', 'jhj900412', '108번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_109', 'http', '109번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_110', 'jhj900412', '110번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_111', 'http', '111번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_112', 'jhj900412', '112번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_113', 'http', '113번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_114', 'jhj900412', '114번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_115', 'http', '115번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_116', 'jhj900412', '116번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_117', 'http', '117번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_118', 'jhj900412', '118번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_119', 'http', '119번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_120', 'jhj900412', '120번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_121', 'http', '121번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_122', 'jhj900412', '122번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_123', 'http', '123번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_124', 'jhj900412', '124번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_125', 'http', '125번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_126', 'jhj900412', '126번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_127', 'http', '127번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_128', 'jhj900412', '128번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_129', 'http', '129번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

INSERT INTO BOARD
	(SUBJECT, USER_ID, CONTENTS, REG_DATE, LAST_MD_DATE)
VALUES ('공지사항 알려드립니다_130', 'jhj900412', '130번째 게시글의 내용은 아래와 같습니다.', SYSDATE, SYSDATE);

