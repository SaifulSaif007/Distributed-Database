set serveroutput on
declare
	theId money.id%TYPE;
	theTaka money.taka%TYPE;

	cursor money_cur(anId number) is
	select id,taka from money
	where id <= anId;

begin
	open money_cur(1);
	loop
		fetch money_cur into theId,theTaka;
		exit when money_cur%notfound;
			DBMS_OUTPUT.PUT_LINE(TO_CHAR(theId)||' '||TO_CHAR(theTaka));
		end loop;
	close money_cur;
end;
/