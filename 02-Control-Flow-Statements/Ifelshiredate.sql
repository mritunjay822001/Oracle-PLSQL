DECLARE 
 v_empno emp.empno%type;
 v_hiredate emp.hiredate%type;
 v_message varchar2(30);

  BEGIN 
  v_empno:=&empno;
    SELECT hiredate INTO V_hiredate
	FROM emp
	WHERE empno=v_empno;
	  
	   IF v_hiredate<='31-DEC-1982' THEN
	   v_message:='SENIOR EMPLOYEE';
	    elsif v_hiredate<='31-JAN-1981' THEN 
		v_message:= 'JUNIOR EMPLOYEE';
		ELSE 
		v_message:='recent join';
		END IF;
		 dbms_output.put_line('HE IS'||'  '|| v_message);
		 END ;
		 /
	   