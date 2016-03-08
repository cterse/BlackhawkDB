alter table criminal add foreign key (criminal_pen_id) references pen(pen_id);

alter table criminal add foreign key (criminal_arrested_at) references precinct(precinct_id);

alter table criminal add foreign key (criminal_crime_no) references crime(crime_no);

alter table criminal add foreign key (criminal_ssn) references criminal_info(criminal_info_ssn);