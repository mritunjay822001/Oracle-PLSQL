DECLARE
v_empno emp.empno%type;
v_job emp.job%type;
v_message varchar2(30);

  BEGIN 
   v_empno:=&empno;
    SELECT job INTO v_job FROM emp 
	WHERE empno=v_empno;
	IF v_job='MANAGER' THEN 
	v_message:='MANAGER POST';
	elsif v_job='PRESIDENT' THEN 
	v_message:='OWNER';
	ELSE 
	v_message:='helper';
	END if;
	dbms_output.put_line(v_message);
	end;
	/