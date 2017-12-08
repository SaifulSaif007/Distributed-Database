clear screen;

drop table student cascade constraints;
drop table student_result cascade constraints;
drop table student_contact cascade constraints;
drop table student_blood_group cascade constraints;


create table student
(id number(20),
name varchar2(20),
semester integer,
date_of_birth date);


create table student_result
(id number(20),
cgpa number(6,5));


create table student_contact
(id number(20),
phone_no number(15));

create table student_blood_group
(id number(20),
b_group varchar2(10));
