SET SERVEROUTPUT ON

DECLARE
s varchar(20);


BEGIN
select distinct S.sname into s    
from student S,Course C, Enrolled E, Faculty F
where s.snum = E.snum
and E.cnum = C.cnum and C.fid = F.fid 
and F.fname ='Zobair' and S.slevel='1';


DBMS_OUTPUT.PUT_LINE(s); 

END;
/



SET SERVEROUTPUT ON

DECLARE
s varchar2(200) index by INTEGER;   
 

BEGIN
select distinct S.sname into s
from Student S
where S.snum in (select E1.snum
from Enrolled E1,Enrolled E2, Course C1,Course C2
where E1.snum = E2.snum and E1.cnum <>  E2.cnum
and E1.cnum = C1.cnum
and E2.cnum = C2.cnum and C1.meets_at = C2.meets_at);


loop 
 
DBMS_OUTPUT.PUT_LINE(s); 
 end loop;

END;
/ 