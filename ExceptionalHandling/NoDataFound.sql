-- handle error when no data found
 DECLARE 
 v_empno emp.empno%type;
 v_ename emp.ename%type;
 v_sal   emp.sal%type;
  BEGIN 
   v_empno:=&empno;
    SELECT empno,ename,sal INTO v_empno,v_ename,v_sal
	FROM emp
	WHERE empno=v_empno;
	dbms_output.put_line('empno=' ||' '|| v_empno||' '||'ename='||' '||v_ename||' '||'sal='||' '||v_sal);
	EXCEPTION
	WHEN no_data_found THEN 
	 dbms_output.put_line('employee records not dound');
	  WHEN others THEN 
	  dbms_output.put_line('something went wrong-try after while');
	   end;
	   /