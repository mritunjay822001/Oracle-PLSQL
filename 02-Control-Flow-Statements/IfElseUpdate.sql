DECLARE 
 v_empno emp.empno%type;
 v_job emp.job%type;
 v_per float;
 
  BEGIN 
   v_empno:=&empno;
    SELECT job INTO v_job 
	FROM emp 
	WHERE v_empno=empno;
	 IF v_job='MANAGER' THEN 
	 v_per:=20;
	  ELSE 
	  v_per:=10;
	  END IF;
	  UPDATE emp SET sal=sal*v_per/100
	  WHERE empno=v_empno;
	  commit;
	   dbms_output.put_line('job='||v_job);
	   dbms_output.put_line(v_per||'% on sal increased....');
	    END;
		/