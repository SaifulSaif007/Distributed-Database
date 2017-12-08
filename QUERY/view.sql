create or replace view myview as
select S.id, S.name, R.cgpa
from student S, student_result R
where S.id = R.id;

select * from myview;

create or replace view 
myview(view_id, view_name, view_cgpa) as
select S.id, S.name, R.cgpa
from student S, student_result R
where S.id = R.id;

select * from myview;

update myview set view_cgpa = 0.00
where view_id = 3;

select * from myview;
select * from student_result;