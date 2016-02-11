create table criminal(
	criminal_id integer primary key,
	criminal_ssn integer not null,
	criminal_crime_no integer not null,
	criminal_sentence varchar2(4000),
	criminal_status varchar2(4000),
	criminal_arrested_at integer,
	criminal_pen_id integer  
);
