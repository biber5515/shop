
select * from BOOK_MEMBER;

UPDATE book_member SET adminck = 1 where memberid = '4';

-- 국가 테이블 생성
create table vam_nation(
   nationId varchar2(2) primary key,
    nationName varchar2(50)
);
 
-- 국가 테이블 데이터 삽입
insert into vam_nation values ('01', '국내');
insert into vam_nation values ('02', '국외');
 
-- 작가 테이블 생성
create table vam_author(
    authorId number primary key,
    authorName varchar2(50),
    nationId varchar2(2),
    authorIntro long,
    foreign key (nationId) references vam_nation(nationId)
);

-- 작가아이디 시퀀스
create sequence autor_seq
increment by 1
start with 1
minvalue 1
maxvalue 9999
nocycle
nocache;

select * from vam_nation;

insert into vam_author(authorId,authorName, nationId, authorIntro) values(autor_seq.nextval,'유홍준', '01', '작가 소개입니다' );
insert into vam_author(authorId,authorName, nationId, authorIntro) values(autor_seq.nextval,'김난도', '01', '작가 소개입니다' );
insert into vam_author(authorId,authorName, nationId, authorIntro) values(autor_seq.nextval,'폴크루그먼', '02', '작가 소개입니다' );

select * from vam_author;
commit;

 alter table vam_author add regDate date default sysdate;
  alter table vam_author add updateDate date default sysdate;
  
  select * from user_indexes; 