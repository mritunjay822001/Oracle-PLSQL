DECLARE
v_empno emp.empno%type;
v_comm emp.empno%type;
v_newcomm float;
 
 BEGIN
  v_empno:=&empno;
   v_newcomm:=&newcomm;
    
	SELECT comm INTO v_comm 
	FROM emp 
	WHERE v_empno=empno;
	 IF v_comm IS NULL THEN 
	 UPDATE emp SET comm=v_newcomm;
	 commit;
	 dbms_output.put_line('commission updated....');
	  ELSE 
	   dbms_output.put_line('commission already existed...');
	   END IF ;
	   END;
	   /