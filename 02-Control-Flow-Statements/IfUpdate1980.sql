DECLARE 
v_empno emp.empno%type;
v_hiredate emp.hiredate%type;
v_per float;
 v_year Varchar2(4);
   
  BEGIN 
   v_empno:=&empno;
   SELECT hiredate INTO v_hiredate
   FROM emp
   WHERE v_empno=empno;
    v_year:= to_char(v_hiredate,'yyyy');
	 
	 IF v_year=1980 THEN 
	  v_per:=18.5;
	  END if;
	  UPDATE emp SET sal=sal+(sal*v_per/100)
	  WHERE v_empno=empno;
	  commit;
	  dbms_output.put_line('v_hiredate='||v_hiredate);
	  dbms_output.put_line('bonus='||v_per);
	  end;
	  /
 