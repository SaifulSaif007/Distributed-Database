drop table age_info;

CREATE TABLE age_info (
	trackid integer, 
	snum integer, 
	same_age number); 

	
create or replace procedure procAge(
		track_id in out student.snum%TYPE)
		IS
		s_id number;
		age student.age%TYPE;
		c_age student.snum%TYPE;
		
		cursor cur_sinfo is
		select snum,age from student;
		
begin
	
	open cur_sinfo;
	
	loop
	fetch cur_sinfo into s_id, age;
	c_age := isSameAge(s_id); 
	track_id := track_id + 1;
 
	--dbms_output.put_line(track_id || ' ' || s_id || ' ' || c_age);

	insert into age_info values (track_id, s_id, c_age);
	exit 
		when cur_sinfo%notfound;
	end loop;
	
	close cur_sinfo;	
	
end procAge;
/
 
