select S.name, B.b_group
from student S, student_blood_group B
where S.id = B.id;

select S.name, B.b_group
from student S inner join student_blood_group B
on S.id = B.id;

-- right join, left join