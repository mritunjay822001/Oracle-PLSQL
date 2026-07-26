DECLARE
 v_empno emp.empno%type;
 v_sal   emp.sal%type;
 v_comm  emp.comm%type;
 v_message varchar2(15);
  BEGIN 
  v_empno:=&empno;
   SELECT sal,comm INTO v_sal,v_comm 
   FROM emp
   WHERE v_empno=empno;
    IF v_sal>v_comm THEN 
	v_message:='SALARY GREATER';
	ELSE 
	v_message:='COMM GREATER';
	 END IF ;
	 dbms_output.put_line('His'||' '||v_message);
	 END ;
	 /
	 