DECLARE 
v_empno emp.empno%type;
v_comm emp.comm%type;
v_message varchar2(20);
 BEGIN 
  v_empno:=&empno;
   SELECT comm INTO v_comm
   FROM emp
   WHERE empno=v_empno;
    IF v_comm IS NULL THEN 
	v_message:= 'Comm not allocate';
	ELSE 
	v_message:='comm granted';
	END if;
	dbms_output.put_line(v_message);
	end;
	/