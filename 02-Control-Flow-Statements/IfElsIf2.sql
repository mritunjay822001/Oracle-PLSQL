DECLARE 
 v_empno emp.empno%type;
 v_hiredate emp.hiredate%type;
 v_per float;
 v_year VARCHAR2(4);
  
  BEGIN 
  
   v_empno:=&empno;
   
    SELECT hiredate INTO v_hiredate
	FROM emp
	 WHERE v_empno=empno;
	 v_year:=to_char(v_hiredate,'yyyy');
	 IF v_year=1980 THEN 
	 v_per:=18.5;
	 elsif v_year=1981 THEN 
	 v_per:=15.2;
	  elsif v_year=1982 THEN 
	   v_per:=12.3;
	   ELSE 
	   v_per:=10.8;
	   END IF;
	   UPDATE emp SET sal=sal+(sal*v_per/100)
	   WHERE empno=v_empno;
	    commit;
		 dbms_output.put_line('v_hiredate='||v_hiredate);
		 dbms_output.put_line(v_per||'% on sal increased....');
		 end;
		 /
	  