create table pen(
pen_id number primary key,
pen_name varchar2(50) not null,
pen_location varchar2(50) not null,
pen_warden varchar2(50),
pen_capacity number not null,
pen_grade varchar2(10),
pen_no_of_prisoners number not null);
