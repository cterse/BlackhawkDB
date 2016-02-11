create table criminal_info(
	criminal_info_ssn integer primary key,
	criminal_info_name varchar2(4000) not null,
	criminal_info_dob date,
	criminal_info_age number,
	criminal_info_sex varchar2(1) not null,
	criminal_info_nationality varchar2(4000),
	criminal_info_current_address varchar2(4000),
	criminal_info_contact_no integer,
	criminal_info_remarks varchar2(4000)
);