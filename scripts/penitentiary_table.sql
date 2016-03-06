create table penitentiary(
penitentiary_id number primary key,
penitentiary_name varchar2(50) not null,
penitentiary_location varchar2(50) not null,
penitentiary_warden varchar2(50),
penitentiary_capacity number not null,
penitentiary_grade varchar2(10),
penitentiary_no_of_prisoners number not null);
