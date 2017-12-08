
select Distinct S.sname
from Student S
where s.snum in (select E.snum
from Enrolled E
group by E.snum
having count(*)>=All (select count(*)
from Enrolled E2 group by E2.snum));


 




select Distinct F.fname from Faculty F
where 5 < (select count(E.snum) from Course C,Enrolled E
where C.cnum=E.cnum
and C.fid = F.fid) and 20> (select count(E.snum) from Course C,Enrolled E
where C.cnum=E.cnum
and C.fid = F.fid);



select Distinct F.fname from Faculty F
where  ((select count(E.snum) from Course C,Enrolled E
where C.cnum=E.cnum
and C.fid = F.fid) between 5 and 20);




 
#2--------------


1.select distinct S.sname
from Student S,Course C, Enrolled E, Faculty F
where S.snum = E.snum and E.cnum = C.cnum and C.fid = F.fid and F.fname ='Zobair' and S.slevel='3';



1.
SET SERVEROUTPUT ON;

DECLARE
s_name Student.sname %TYPE;

BEGIN
select distinct S.sname into s_name
from Student S,Course C, Enrolled E, Faculty F
where S.snum = E.snum and E.cnum = C.cnum and C.fid = F.fid and F.fname ='Zobair' and S.slevel='3';

DBMS_OUTPUT.PUT_LINE(s_name);
END;
/