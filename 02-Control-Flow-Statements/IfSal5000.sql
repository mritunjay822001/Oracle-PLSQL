DECLARE
 v_empno emp.empno%type;
  v_sal emp.sal%type;
  v_message varchar2(15);
   BEGIN 
   v_empno:=&empno;
   SELECT sal INTO v_sal
   FROM emp
   WHERE v_empno=empno;
    IF v_sal>5000 THEN 
	v_message:='HIGH SALARY';
	ELSE
	v_message:='NORMAL SALARY';
	END if;
	 dbms_output.put_line(v_message);
	 end;
	 /