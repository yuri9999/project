-- member sql

--member 테이블생성
create table member(
id varchar2(30) not null primary key, -- 아이디
pwd varchar2(50) not null, -- 비밀번호
koreanName varchar2(50) not null, -- 한글 이름
englishName varchar2(50) not null, --영어이름
birthday varchar2(30) not null, -- 생년월일
gender varchar2(10) not null,	-- 성별
passportNum varchar2(30) not null, -- 여권번호
nation varchar2(20) not null, --국적
country varchar2(20) not null, --거주 국가
email1 varchar2(15) not null,- 이메일 아이디부분
email2 varchar2(15) not null,- 이메일 뒷부분
tel1 number not null, -- 국가번호(82)
tel2 number not null, -- 010
tel3 number not null, -- 1234
tel4 number not null, -- 5678
grade number not null, -- 등급
boardingCnt number, --탑승횟수
accumulatedPoint number,--누적포인트
usedPoint number, --사용포인트
totalPoint number --총포인트
);

--회원가입
INSERT INTO member VALUES(#{id}, #{pwd}, #{koreanName}, #{englishName}, #{birthday}, #{gender}, #{passportNum}, #{nation}, #{country}, #{email1}, #{email2}, #{tel1}, #{tel2}, #{tel3}, #{tel4}, 'silver', 0, 1000, 0, 0)

--회원정보 수정
UPDATE member SET koreanName=#{koreanName},englishName=#{englishName},birthday=#{birthday},gender=#{gender},passportNum=#{passportNum},nation=#{nation},country=#{country},email1=#{email1},email2=#{email2},tel1=#{tel1},tel2=#{tel2},tel3=#{tel3},tel4=#{tel4}
		WHERE id = #{id}

--회원정보출력
SELECT * FROM member WHERE id = #{id}

--로그인
SELECT * FROM member WHERE id = #{id } and pwd = #{pwd }

--아이디 중복검사
select id from member where id = #{id }
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- event sql
--이벤트 시퀀스 생성
create sequence seq_event nocache nocycle;
--이벤트 테이블 생성
create table event (
seq number,
id varchar2(100) not null,
subject varchar2(100) not null,
content varchar2(1000) not null,
image varchar2(100),
hit number,
logtime date);

--이벤트 게시물 작성
INSERT INTO event VALUES(seq_event.nextval,#{id},#{subject},#{content},#{image},0,to_date(sysdate,'YY-MM-DD'))

--이벤트 게시물 수정
UPDATE event SET subject=#{subject},content=#{content}	WHERE seq = #{seq}

--이벤트 게시물 삭제
DELETE FROM event WHERE seq = #{seq}

--진행중인 이벤트 총 개수(현재 날짜로부터 30일 이내)
<![CDATA[SELECT count(*) FROM event where (select to_date(sysdate, 'YY.MM.DD')+1 - to_date(logtime, 'YY.MM.DD') from dual) <= 30]]>

--종료된 이벤트 총 개수(현재 날짜로부터 30일 이후)
<![CDATA[SELECT count(*) FROM event where (select to_date(sysdate, 'YY.MM.DD')+1 - to_date(logtime, 'YY.MM.DD') from dual) > 30]]>

--진행중인 이벤트 리스트 출력
<![CDATA[select seq, id, subject, content, hit, image, to_char(logtime,'YY.MM.DD') as logtime from (select rownum rn, tt. * from (select * from event order by seq desc)tt) where rn>=#{startNum} and rn<=#{endNum} and (select
  		to_date(sysdate, 'YY.MM.DD')+1 - to_date(logtime, 'YY.MM.DD') from dual) <= 30]]>

--종료된 이벤트 리스트 출력
<![CDATA[select seq, id, subject, content, hit, image, to_char(logtime,'YY.MM.DD') as logtime from (select rownum rn, tt. * from (select * from event order by seq desc)tt) where (select
  		to_date(sysdate, 'YY.MM.DD')+1 - to_date(logtime, 'YY.MM.DD') from dual) > 30]]>

--이벤트 정보 출력
SELECT * FROM event WHERE seq=#{seq}

--이벤트 수정
UPDATE event SET hit=hit+1 WHERE seq=#{seq}

--이벤트 조회수 증가
UPDATE event SET hit=hit+1 WHERE seq=#{seq}
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--공지상항 sql

--공지사항 시퀀스 생성
create sequence seq_notice nocache nocycle;

--공지사항 테이블 생성
create table notice (
seq number,
id varchar2(100),
subject varchar2(1000),
content varchar2(1000),
hit number,
logtime date
);

--공지사항 입력
INSERT INTO notice VALUES(seq_notice.nextval,#{id},#{subject},#{content},0,to_date(sysdate,'YY-MM-DD'))

--공지사항 수정
UPDATE notice SET subject=#{subject},content=#{content}	WHERE seq = #{seq}

--공지사항 삭제
DELETE FROM notice WHERE seq = #{seq}

--공시하항 총 개수
<![CDATA[SELECT count(*) FROM notice]]>

--공지사항 리스트 출력
<![CDATA[select seq, id, subject, content, hit, to_char(logtime,'YY.MM.DD') as logtime from (select rownum rn, tt. * from (select * from notice order by seq desc)tt) where rn>=#{startNum} and rn<=#{endNum}]]>

--공지사항 출력
SELECT * FROM notice WHERE seq=#{seq}

--공지사항 조회수 증가
UPDATE notice SET hit=hit+1 WHERE seq=#{seq}

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------












