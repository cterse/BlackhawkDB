create table crime
(
crime_no integer primary key,
crime_description varchar2(4000) not null,
crime_punishment varchar2(4000) not null,
crime_type varchar2(4000),
crime_extra varchar2(4000)
);