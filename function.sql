 create or replace function isSameAge(n_id in number)
	return number
	is
	count_age number;
	s_age number;
	
begin

	select age into s_age 
	from student where snum = n_id;
	
	select count(age)
	into count_age
	from student
	where age = s_age;
	return (count_age);
 
end isSameAge;
/	

	
 