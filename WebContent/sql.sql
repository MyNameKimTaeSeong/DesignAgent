create table d_login(
	d_id varchar2(50) primary key,
	d_pw varchar2(50),
	d_name varchar2(50),
	d_phone number,
	d_email varchar2(50),
	d_blog varchar2(50)
)
select * from d_login;
drop table d_login;

create table c_login(
	c_id varchar2(50) primary key,
	c_pw1 varchar2(50),
	c_companyName varchar2(50),
	c_name varchar2(50),
	c_position varchar2(30),
	c_depart varchar2(30),
	c_phone number,
	c_fax number,
	c_email varchar2(50),
	c_businessNum varchar2(50)
)

select * from c_login;
drop table c_login;

create table login_check(
	l_id varchar2(50) primary key,
	l_pw varchar2(50),
	l_name varchar2(30),
	l_div varchar2(50)
)

select * from login_check;
drop table login_check;



create table post(
	p_num number primary key,
	title varchar2(50),
	photo_url varchar2(200),
	id varchar2(30),
	sort varchar2(10),
	category varchar2(20),
	comments varchar2(100),
	upload_date date default sysdate,
	heart_num number default 0,
	approval number default 0
)

create sequence p_num start with 1 increment by 1;
drop sequence p_num;

select * from post;
drop table post;

	

create table heart(
	h_num number primary key,
	id varchar2(30),
	p_num number,
	foreign key(id) references login_check(l_id),
	foreign key(p_num) references post(p_num)
)

create sequence h_num start with 1 increment by 1;
drop sequence h_num;

select * from heart;
drop table heart;
drop table post;


create table QnA(
	q_num number primary key,
	q_writer varchar2(30),
	q_pw number,
	q_title varchar2(50), 
	q_content varchar2(100),
	q_date date default sysdate, 
	q_read_count number default 0,
	q_re varchar2(50) default null
)

create sequence q_num increment by 1 start with 1;
drop sequence q_num;

select * from QnA;
drop table QnA;

delete QnA where q_writer='모장환';


select (select post.p_num, heart.id from post left outer join heart on post.p_num = heart.p_num)temp ;
select rownum r , d_login.d_id,d_name,d_email,d_phone from d_login


select rownum r ,d_login.d_id,d_name,d_email,d_phone from d_login

delete from login_check where l_id='mjw';

select rownum r, d_login.d_name, d_email from d_login;

create table Admin_login(
	a_id varchar2(50),
	a_pw varchar2(50),
	a_name varchar2(50)
)
SELECT * FROM Admin_login;
drop table Admin_login;
insert into Admin_login(a_id,a_pw,a_name) values('Admin','1234','관리자')

select * from c_login


select * from (SELECT rownum rnum,QnA.* FROM (SELECT q_num,q_writer,q_title,TO_CHAR(q_date,'yyyy-mm-dd'),q_read_count FROM QnA order by q_num desc) QnA) QnA2 where QnA2.rnum >=1 and QnA2.rnum <= 10
