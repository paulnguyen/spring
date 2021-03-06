-- noinspection SqlDialectInspectionForFile
-- noinspection SqlNoDataSourceInspectionForFile

/* AWARDS */

insert into awards ( id, award_name,  awarded_by )
values	(1, 'OReilly Open Source Award', 'OReilly Media') ;

insert into awards ( id, award_name,  awarded_by )
values	(2, 'National Medal of Science', 'National Science Foundation') ;

insert into awards ( id, award_name, awarded_by )
values	(3, 'Turing Award', 'ACM') ;

insert into awards ( id, award_name, awarded_by )
values	(4, 'Draper Prize', 'National Academy of Engineering') ;

insert into awards ( id, award_name, awarded_by )
values	(5, 'Kyoto Prize', 'Inamori Foundation') ;

insert into awards ( id, award_name, awarded_by )
values	(6, 'Computer Sciences Man of the Year', 'Data Processing Management Association') ;

insert into awards ( id, award_name, awarded_by )
values	(7, 'Distinguished Fellow', 'British Computer Society') ;

insert into awards ( id, award_name, awarded_by )
values	(8, 'W. W. McDowell Award', 'IEEE Computer Society') ;

insert into awards ( id, award_name, awarded_by )
values	(9, 'IEEE Medal of Honor', 'IEEE') ;

insert into awards ( id, award_name, awarded_by )
values	(10, 'Rosing Prize', 'Norwegian Data Association') ;

insert into awards ( id, award_name, awarded_by )
values	(11, 'IEEE John von Neumann Medal', 'IEEE') ;

insert into awards ( id, award_name, awarded_by )
values	(12, 'Award for the Advancement of Free Software', 'Free Software Foundation') ;

insert into awards ( id, award_name, awarded_by )
values	(13, 'NLUUG Award', 'NLUUG') ;

insert into awards ( id, award_name, awarded_by )
values	(14, 'National Medal of Technology', 'United States') ;

insert into awards ( id, award_name, awarded_by )
values	(15, 'Japan Prize', 'The Japan Prize Foundation') ;

insert into awards ( id, award_name, awarded_by )
values	(16, 'ACM SIGPLAN Programming Languages Software Award', 'Association for Computing Machinery') ;

insert into awards ( id, award_name, awarded_by )
values	(17, 'The Economist Innovation Award', 'The Economist') ;

insert into awards ( id, award_name, awarded_by )
values	(18, 'Officer of the Order of Canada', 'Canada') ;

/* John Backus */

insert into person ( id, first_name, last_name, birth_date, death_date )
values  (1, 'John', 'Backus', '1924-12-03', '2007-03-17') ;

insert into contribs ( person_id, id, contribution ) values ( 1, 1, 'Fortran' ) ;
insert into contribs ( person_id, id, contribution ) values ( 1, 2, 'ALGO' ) ;
insert into contribs ( person_id, id, contribution ) values ( 1, 3, 'Backus-Naur Form' ) ;
insert into contribs ( person_id, id, contribution ) values ( 1, 4, 'FP' ) ;

insert into person_awards ( person_id, award_id, awarded_year ) values  (1, 8, '1967-01-01') ;
insert into person_awards ( person_id, award_id, awarded_year ) values	(1, 2, '1975-01-01') ;
insert into person_awards ( person_id, award_id, awarded_year ) values	(1, 3, '1977-01-01') ;
insert into person_awards ( person_id, award_id, awarded_year ) values	(1, 4, '1993-01-01') ;


/* John McCarthy */

insert into person ( id, first_name, last_name, birth_date, death_date )
values  (2, 'John', 'McCarthy', '1927-09-04', '2011-12-24') ;

insert into contribs ( person_id, id, contribution ) values ( 2, 5, 'Lisp' ) ;
insert into contribs ( person_id, id, contribution ) values ( 2, 6, 'ALGO' ) ;
insert into contribs ( person_id, id, contribution ) values ( 2, 7, 'Artificial Intelligence' ) ;

insert into person_awards ( person_id, award_id, awarded_year ) values (2, 3, '1971-01-01') ;
insert into person_awards ( person_id, award_id, awarded_year ) values	(2, 5, '1988-01-01') ;
insert into person_awards ( person_id, award_id, awarded_year ) values	(2, 2, '1990-01-01') ;


/* Grace Hopper */

insert into person ( id, first_name, last_name, birth_date, death_date )
values  (3, 'Grace', 'Hopper', '1906-12-09', '1992-01-01') ;

insert into contribs ( person_id, id, contribution ) values ( 3, 8, 'UNIVAC' ) ;
insert into contribs ( person_id, id, contribution ) values ( 3, 9, 'Compiler' ) ;
insert into contribs ( person_id, id, contribution ) values ( 3, 10, 'FLOW-MATIC' ) ;
insert into contribs ( person_id, id, contribution ) values ( 3, 11, 'COBOL' ) ;

insert into person_awards ( person_id, award_id, awarded_year ) values (3, 6, '1969-01-01') ;
insert into person_awards ( person_id, award_id, awarded_year ) values (3, 7, '1973-01-01') ;
insert into person_awards ( person_id, award_id, awarded_year ) values (3, 8, '1976-01-01') ;
insert into person_awards ( person_id, award_id, awarded_year ) values (3, 14, '1991-01-01') ;


/* Kristen Nygaard */

insert into person ( id, first_name, last_name, birth_date, death_date )
values  (4, 'Kristen', 'Nygaard', '1926-08-27', '2002-08-10') ;

insert into contribs ( person_id, id, contribution ) values ( 4, 12, 'OOP' ) ;
insert into contribs ( person_id, id, contribution ) values ( 4, 13, 'Simula' ) ;

insert into person_awards ( person_id, award_id, awarded_year ) values (4, 3, '2001-01-01') ;
insert into person_awards ( person_id, award_id, awarded_year ) values (4, 10, '1999-01-01') ;
insert into person_awards ( person_id, award_id, awarded_year ) values (4, 11, '2001-01-01') ;


/* Ole-Johan Dahl */

insert into person ( id, first_name, last_name, birth_date, death_date )
values  (5, 'Ole-Johan', 'Dahl', '1931-10-12', '2002-06-29') ;

insert into contribs ( person_id, id, contribution ) values ( 5, 14, 'OOP' ) ;
insert into contribs ( person_id, id, contribution ) values ( 5, 15, 'Simula' ) ;

insert into person_awards ( person_id, award_id, awarded_year ) values (5, 3, '2001-01-01') ;
insert into person_awards ( person_id, award_id, awarded_year ) values (5, 10, '1999-01-01') ;
insert into person_awards ( person_id, award_id, awarded_year ) values (5, 11, '2001-01-01') ;


/* Guido van Rossu */

insert into person ( id, first_name, last_name, birth_date )
values  (6, 'Guido', 'van Rossu', '1956-01-31' ) ;

insert into contribs ( person_id, id, contribution ) values ( 6, 16, 'Python' ) ;

insert into person_awards ( person_id, award_id, awarded_year ) values (6, 12, '2001-01-01') ;
insert into person_awards ( person_id, award_id, awarded_year ) values (6, 13, '2003-01-01') ;


/* Dennis Ritchie */

insert into person ( id, first_name, last_name, birth_date, death_date )
values  (7, 'Dennis', 'Ritchie', '1941-09-09', '2011-10-12' ) ;

insert into contribs ( person_id, id, contribution ) values ( 7, 17, 'UNIX' ) ;
insert into contribs ( person_id, id, contribution ) values ( 7, 18, 'C' ) ;

insert into person_awards ( person_id, award_id, awarded_year ) values (7, 3, '1983-01-01') ;
insert into person_awards ( person_id, award_id, awarded_year ) values (7, 14, '1998-01-01') ;
insert into person_awards ( person_id, award_id, awarded_year ) values (7, 15, '2011-01-01') ;


/* Yukihiro Matz Matsumoto */

insert into person ( id, first_name, last_name, birth_date )
values  (8, 'Yukihiro', 'Matsumoto (aka Matz)', '1965-04-14' ) ;

insert into contribs ( person_id, id, contribution ) values ( 8, 19, 'Ruby' ) ;

insert into person_awards ( person_id, award_id, awarded_year ) values (8, 12, '2011-01-01') ;


/* James Gosling */

insert into person ( id, first_name, last_name, birth_date )
values  (9, 'James', 'Gosling', '1955-05-19' ) ;

insert into contribs ( person_id, id, contribution ) values ( 9, 20, 'Java' ) ;

insert into person_awards ( person_id, award_id, awarded_year ) values (9, 17, '2002-01-01') ;
insert into person_awards ( person_id, award_id, awarded_year ) values (9, 18, '2007-01-01') ;


/* Martin Odersky */

insert into person ( id, first_name, last_name, birth_date )
values  (10, 'Martin', 'Odersky', '1958-09-05' ) ;

insert into contribs ( person_id, id, contribution ) values ( 10, 21, 'Scala' ) ;

