create table precinct(
precinct_id number primary key,
precinct_head varchar2(50),
precinct_location varchar2(50) not null,
precinct_no_of_cases number not null,
precinct_staff_strength number not null);